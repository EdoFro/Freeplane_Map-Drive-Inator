
import org.freeplane.features.link.LinkController
import org.freeplane.plugin.script.proxy.ScriptUtils
import org.freeplane.core.util.LogUtils
import groovy.io.FileType
import groovy.io.FileVisitResult
import org.freeplane.core.ui.components.UITools
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.core.util.FreeplaneVersion

class MDI{
    //nodes attributes
    private static final String attrLog             = 'log_MDI'
    private static final String attrMarkWhenMoved   = 'markWhenMoved'
    private static final String attrNameFilter      = 'nameFilter'
    private static final String attrMaxDepth        = 'maxDepth'
    private static final String attrReallyBroken    = 'checkIfReallyBroken'
    private static final String attrLinkType        = 'linkType'
    //styles
    private static final String styleLocked         = 'locked'
    private static final String styleMovedRenamed   = 'movedRenamed'
    private static final String styleNotMovedRenamed= 'notMovedRenamed'
    private static final String styleFreshNew       = 'freshNew'
    private static final String styleBroken         = 'missing'
    private static final String styleFolder         = 'file_folder'
    private static final String styleBaseFolder     = 'baseFolder'
    private static final String styleNewImport      = 'newFolderImport'
    
    private static final String statusInfoIcon      = 'emoji-1F4BD'
    private static final String baseFolderNote      = '\n# MDI: '

    private static final int LINK_ABSOLUTE            = 0
    private static final int LINK_RELATIVE_TO_MINDMAP = 1
    private static final String version               = 'v0.0.13'
    private static final String minTemplateVersion    = 'v0.0.13'
    
    private static final String MapTemplateVersionStorage   = 'MDI_template'
    private static final String MapMdiVersionStorage   = 'MDI_version'
    
    private static ConfigProperties config = new ConfigProperties()
    private static Timer timer = new Timer()
    private static logger = LogUtils.getLogger()
    
    // def static getVersion(){
        // return version
    // }
    //region: ---------------------- Functions MDI versions
    def static mapHasMinTemplate(mapa){
        def templateVersion = (mapa.storage[MDI.MapTemplateVersionStorage]?:'v0.0.0').toString()
        return !FreeplaneVersion.getVersion(templateVersion).isOlderThan(FreeplaneVersion.getVersion(MDI.minTemplateVersion))

    }

    //end:
    
    //region: ---------------------- Functions Initial Setup
    
    
    // function, returns Node ("Base folder") under the selected node
    def static obtainBaseFolder(n, boolean showMessageIfNone = true, boolean baseFolderShouldExistInDrive = true) {
        // returns the first node which has a link to a file directory and has style styleFolder + styleBaseFolder
        //return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}
        def nBase
        nBase  ?= n.pathToRoot.find{getFileFromLink(it)?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}
        nBase  ?= n.pathToRoot.find{getFileFromLink(it)?.directory && it.hasStyle(styleBaseFolder)}
        nBase  ?= (getFileFromLink(n)?.directory && n.hasStyle(styleFolder))? n : null
        nBase  ?= n.pathToRoot.find{getFileFromLink(it)?.directory && it.hasStyle(styleFolder)}
        nBase  ?= (getFileFromLink(n)?.directory)? n : null
        nBase  ?= n.pathToRoot.find{getFileFromLink(it)?.directory}
        
        if(!nBase){
            def nBaseNotOK = n.pathToRoot.find{it.hasStyle(styleBaseFolder)}
            def nBaseFileExists = getFileFromLink(nBaseNotOK)?.exists()?true:false
            if(nBaseFileExists || (nBaseNotOK && !baseFolderShouldExistInDrive)){
                nBase = nBaseNotOK
            } else if (showMessageIfNone){
                def msg
                if(nBaseNotOK){
                    msg = "'baseFolderNode' has no valid link (it links to no existing folder)"
                    ScriptUtils.c().select(nBaseNotOK)
                }else {
                    msg = "couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)"
                }
                UITools.informationMessage(UITools.frame, msg, "Map-Drive-Inator", 2)
            }
        }
        return nBase
    }

    def static obtainNewImportsNode(n){
        def nImp = n.children.find{it.hasStyle(styleNewImport)}?:n.createChild('new imported files')
        try {
            nImp.style.name = styleNewImport
        } catch(Exception ex) {
            UITools.showMessage("The mindmap has no '${styleNewImport}' style.\n\nPlease import the MDI styles into your map.", 0)
            if(nImp.leaf){nImp.delete()}
            nImp = null
        }
        return nImp
    }
    
    def static wantToLog(n){
        if(!n[attrLog])n[attrLog]='No'
        return n[attrLog]==true || [1,'1','true','ok','si','yes','y','ja'].contains(n[attrLog].toString().toLowerCase())
    }
    //end:

    //region: ---------------------- Updating Folders In Drive And Map
    // loops all the folders and update them
    def static updateFolders(xfiles, int linkType = LINK_ABSOLUTE){
        def foldersToDelete =[]
        def notMoved = 0
        def unexistent = 0
        def deleted = 0
        def keeped = 0
        def created = 0
        def corrected = 0
        def cloneOK = 0
        xfiles.each{ xf ->
            def resultado = updateThisFolder(xf, linkType)
            switch(resultado) {
                case 'notMoved':
                    notMoved++
                    break
                case 'noExiste':
                    unexistent++
                    break
                case 'previousDeleted':
                    deleted++
                    break
                case 'previousKeeped':
                    foldersToDelete << xf.link
                    keeped++
                    break
                case 'new':
                    created++
                    break
                case 'corrected':
                    corrected++
                    break
                case 'cloneOK':
                    cloneOK++
                    break
            }
        // ui.informationMessage('resultado: ' + resultado as String)
        }
        //delete folders that couldn't be deleted before
        if (foldersToDelete.size()>0){
                if (foldersToDelete.size()>1){
                    def ftdr = foldersToDelete.reverse()
                    ftdr.remove(0)
                    foldersToDelete.add(ftdr)
                    foldersToDelete = foldersToDelete.flatten()
                }
            foldersToDelete.each{
                def a = deleteFolder(it)
                deleted += a
                keeped -= a
            }
        }
        // informationMessage about folder operations
        def Texto=""
        if(created>0){Texto = Texto << "${created} new folders created \n"}
        if(notMoved>0){Texto = Texto << "${notMoved} folders didn't need to be moved \n"}
        if(deleted>0){Texto = Texto << "${deleted} folders were created in new position and deleted in old one \n"}
        if(keeped>0){Texto = Texto << "${keeped} folders were created in new position and keeped in old one because they were not empty \n"}
        if(unexistent>0){Texto = Texto << "${unexistent} folders were not found \n"}
        if(corrected>0){Texto = Texto << "${corrected} links to folders were corrected \n"}
        if(cloneOK>0){Texto = Texto << "${cloneOK} nodes having case: 'mapPosition != drivePosition' but that had Clones that were OK --> they were OK \n"}
        // ui.informationMessage(Texto.toString())
        foldersToDelete =[]
        return (Texto.toString())
    }

    // updates the position of folder in the drive
    def static updateThisFolder(xf, int linkType = LINK_ABSOLUTE) {
        def nodo = N(xf.id)
        // c.select(nodo)
        // ui.informationMessage('nodo: ' + nodo as String)
        // ui.informationMessage('xf.link: ' + xf.link as String)
        if(xf.link){
            def file = new File(xf.link)
            // ui.informationMessage('xf.link == xf.path: ' + (xf.link == xf.path) as String)
            if (xf.link != xf.path)		// ?ruta y nombre nuevo y antiguo son diferentes?
            { 
                // ui.informationMessage('File(xf.link).isDirectory(): ' + file.isDirectory() as String)
                if (file.isDirectory()) 		//	?existe en el lugar que indica su link (y es folderName)?
                { 
                    // ui.informationMessage('hasCloneWhithPositionOK(nodo,true): ' + hasCloneWhithPositionOK(nodo,true) as String)
                    if(hasCloneWhithPositionOK(nodo,true)){
                        return 'cloneOK'
                    } else {
                        setLink(nodo, xf.path, linkType)  // cambiarle a nuevo link
                        markAsBroken(nodo,false)
                        markAsMoved(nodo,true)
                        if (deleteFolder(xf.link)==1) //TODO: logear los que se van eliminando
                        {
                            return 'previousDeleted'
                        } else {
                            // foldersToDelete << xf.link
                            return 'previousKeeped'				
                        }
                    }
                } else {
                    file = new File(xf.path)
                    // ui.informationMessage('File(xf.path).isDirectory(): ' + file.isDirectory()as String)
                    if (file.isDirectory()) 		//	?existe en el lugar que indica su path (y es folderName)?
                    {
                        //ya existe en posición correcta --> no hacer nada salvo corregir link
                        setLink(nodo, xf.path, linkType)  // cambiarle a nuevo link
                        return 'corrected'
                    } else {
                        markAsBroken(nodo,true)
                        return 'noExiste'
                    }
                }
            } else { 
                // ui.informationMessage('File(xf.link).isDirectory(): ' + file.isDirectory() as String)
                if(file.isDirectory()){ //todo ok
                    markAsBroken(nodo,false)
                    return 'notMoved'
                } else {	// error: marcar y log	
                    markAsBroken(nodo,true)
                    return 'noExiste'
                }
            }
        }else {	// si no tiene link --> ponerle link
            createPath(xf.path) //TODO: reportar si pudo crear path
            setLink(nodo, xf.path, linkType)
            xf.link = xf.path
            if(nodo.style.name==styleFolder){nodo.style.name = null}
            markAsBroken(nodo,false)
            markAsMoved(nodo,true)
            return 'new'
        }
    }

    //deletes folder (privado)
    def static deleteFolder(folderPath){
        if(isDirEmpty(folderPath)) // revisar si directorio est? vac?o
        {
            def file = new File(folderPath)
            if(!file.delete()){
                sleep(100)
            } //eliminar folderName en disco
            //TODO: comprobar si folder fue eliminado realmente
            return 1
        } else {
            return 0 
        }
    }
    
    //end:
    
    //region: ---------------------- nodes marks
    
    def static isLocked(n){
        return n.hasStyle(styleLocked)
    }
    
    def static isMoved(n){
        return n.hasStyle(styleMovedRenamed)
    }
    
    def static markAsMoved(n,b, markMoved = 0){
        if(b && markMoved!=-1 && (markMoved == 1 || n.style.name == null || n.style.name == styleNotMovedRenamed)){
            n.style.name = styleMovedRenamed
        } else {
            if (n.style.name == styleMovedRenamed) {n.style.name = null}
        }
    }

    def static markAsNotMoved(n, b){
        if(b){
            n.style.name = styleNotMovedRenamed
        } else {
            if(n.style.name == styleNotMovedRenamed) {n.style.name = null}
        }
     }
    
    def static markWhenMoved(n){
        return getMarkMoved(n)
    }

    def static isNew(n){
        return (n.style.name == styleFreshNew)
    }
    
    def static markAsNew(n,b){
        if(b){
            n.style.name = styleFreshNew
        } else {
            if (isNew(n)) {n.style.name = null}
        }
    }
    
    def static isBroken(n){
        return (n.style.name == styleBroken)
    }

    def static checkIfReallyBroken(n, doUpdate = false) {
        return getFilter(n).asBoolean() && getCheckBroken(n, doUpdate)
    }

    def static markAsBroken(n,b,checkAgain = false){
        if(b && (!checkAgain || !n.link?.file?.exists())  ){
            n.style.name = styleBroken
        } else {
            if (isBroken(n)) {n.style.name = null}
        }
    }
    
    //end:

    //region: ---------------------- getting Information from nodes
    def static N(id){
        return ScriptUtils.node().map.node(id as String)
    }

    def static nodeIsFolder(n){
        //return n.hasStyle(styleFolder) ||  (n.link?.file?.directory && n.link?.node == null)
        
        //TODO: ver si es necesario cambiar n.link?.file?.directory por getFileFromLink(n).directory
        //TODO: cambiar n.link.uri?.path?.takeRight(1) == '/' por n.link.uri?.path?.endsWith('/') por un tema de orden
        return  n.hasStyle(styleFolder) || (isLinkToFileOrFolder(n) && ( n.link?.file?.directory || n.link.uri?.path?.takeRight(1) == '/')  ) 
    }

    def static isLinkToFileOrFolder(n){
        //n.link && n.link.uri.scheme =='file' && !isLinkToNodeInAnotherMap(n)  //excludes links to nodes (internal and in an other map)
        // to consider:
            // n.link.file  //includes links to files and folders but excludes links to nodes in other map
            // n.link.uri.scheme =='file' //includes links to files but excludes internal links to nodes in same map
        //return (boolean) n.link.file && n.link.uri.scheme =='file'
        return n.link.file && !n.link.uri?.fragment
    }

    def static getPathFromLink(n){
        def lastChar = (n.link.file?.directory || nodeIsFolder(n))? File.separator : ''
        return getPathFromLink3(n, lastChar)
    }

    def static getPathFromLink2(n,lastChar =''){
        return getPathFromLink3(n,lastChar)
    }
    
    def static getPathFromLink3(n,lastChar =''){
        return (n.link.file? getPathFromLink4(n) + lastChar:null)
    }
    
    def static getPathFromLink4(n){
        def p
        try{
            p = n.link.file?.canonicalPath
        }
        catch(e){
            def pFolders = (n.link.file.AbsolutePath).tokenize(File.separator)
            def newPFolders = []
            pFolders.each{f -> if (f == '..'){newPFolders.removeLast()} else { newPFolders << f } }
            p = newPFolders.join(File.separator)
            //logger.info('MDI: node ' + n.id + ' : ' + n.link.file.AbsolutePath + '\n          ---> ' + p)
       }
        return p
    }

    //function, returns string, builds the new path string by looking at the position of the node in the mindmap
    //it uses all the file-folder styled nodes till the base node
    def static obtainPathFromMap(n) {
        def texto =''
        def baseFolderNode = obtainBaseFolder(n, false)
        if(baseFolderNode){
            while(!n.equals(baseFolderNode)){
                if(nodeIsFolder(n)){
                    texto = correctFolderName(n) << File.separator << texto
                }
                n = n.parent
            }
            texto = getPathFromLink(baseFolderNode) << texto
        }
        return texto.toString()
    }

    //function, boolean, it returns true if the node has a clone which position in disk is equivalent as its position in the map
    // when a node linked to a file is cloned in multiple places, not all position in the map will be consistent with its position in the drive.
    // Only one of them must be in the right place to consider that all the clones are placed OK
    //(privado)
    def static hasCloneWhithPositionOK(n,isFolder){
        def texto = isFolder?'':n.text
        // ui.informationMessage('hasCloneWhithPositionOK \n ' + n.id.toString() + '\n   n.countNodesSharingContent \n ' + n.countNodesSharingContent.toString())
        return n.countNodesSharingContent>0 && n.nodesSharingContent.any{h -> 
                // ui.informationMessage('clon \n ' + h.id.toString() + '\n   getPathFromLink(h) \n ' + getPathFromLink(h).toString() + '\n   (obtainPathFromMap(h) + h.text) \n ' + (obtainPathFromMap(h) + texto).toString())
                getPathFromLink(h) == (obtainPathFromMap(h) + texto) 
            }
    }

    def static excludedFolders(nodo){
        def nodos=nodo.find(false,true,{isLocked(it)}).findAll{nodeIsFolder(it)}
        nodos.each{
            if(nodos.contains(it)) {
                nodos = nodos - it.find(false,true,{nodeIsFolder(it)}).minus(it)
            }
        }
        // return nodos.link.file.canonicalPath
        return nodos.collect{getPathFromLink4(it)}
    }
    
    //I think this function shouldn't exist. I think it's a bug in Freeplane how it pastes relative links from files in different drives than the mindmap file's drive
    def static getFileFromLink(n){
        def path = getPathFromLink4(n)
        return path? new File(path) : null
    }
    //end:

    //region: ---------------------- Funciones Strings
    def static getPathFromStrings(folderPath,fileName){
        //folderPath.toString() + fileName.toString()
        folderPath + fileName
    }

    def static getFolderpathFromStrings(folderPath,nodo){
        String folderName = correctFolderName(nodo)
        getPathFromStrings(folderPath,folderName) + File.separator
    }
    
    //"
    def static soloPath(fileAddress) {
        fileAddress[0..fileAddress.lastIndexOf(File.separator)]
    }

    //function, returns string, looks at text in node and correct it if it can't be used as a foldername (privado)
    def static correctFolderName(n){
        String texto = n.text.trim().replace('/','-').replace(File.separator,'-')//.replace('.','-') //replaces chars not usefull in a Folder name
        if(n.text != texto) n.text = texto//corrects text in node too
        return texto // returns the corrected text
    }
    
    def static correctFileName(s){
        // get rid of:
        // /, \ , \n
        def t = s.replace('\n','_').replace('\t','_').replace('/','_').replace('\\','_').replace('__','_')
        return t.toString()
    }
    
    //end:

    //region: ---------------------- Modifying Nodes
    //adds a [link to a file] to the node
    def static setLink(n, addr, int linkType = LINK_ABSOLUTE){
        //  UITools.informationMessage(addr.toString())
        def targetFile = new File(addr.toString())
        def uri = getUri(n.mindMap.file, targetFile, linkType)
        n.link.uri = uri
    }
    
    def static getUri(mapFile, targetFile, linkType){
        def uri = switch(linkType){
            case LINK_ABSOLUTE            -> targetFile.getCanonicalFile().toURI()
            case LINK_RELATIVE_TO_MINDMAP -> LinkController.toLinkTypeDependantURI(mapFile, targetFile, LINK_RELATIVE_TO_MINDMAP)
        }
        return uri
    }

    //corrects link to image in node which is also a file in the project
    //TODO: relative/absolute capable
    def static setLinkImage(n, addr){
        if(n.externalObject && n.link.file && n.link.text == n.externalObject.uri){
            n.externalObject.file = new File(addr.toString())
        }
    }

    def static normalizeNode(mapFile, n, linkType){
        //UITools.informationMessage("${mapFile},\n ${n},\n ${linkType}".toString())
        def i = 0
        def newUri = getUri(mapFile, getFileFromLink(n), linkType)
        if(newUri != n.link.uri){
            n.link.uri = newUri
            i = 1
        }
        return i
    }
    
    //end:

    //region: ---------------------- Mannaging Files in Drive
    // create all folders of a path (if they doesn't exist)
    def static createPath(String p) {
        //ui.informationMessage('createPath ' + p)
        def folders = p.replace(File.separator,'/').split('/') //TODO: usar tokenize()
        //ui.informationMessage(folders.toString())
        def path =''
        folders.each{ String f ->
            path = path << f  << '/'
            createFolder(path.toString())
        }	
    }

    // create new folder if it doesn't exist (privado)
    def static createFolder(String folderName) {
        def folder = new File(folderName)
        if (!folder.isDirectory()){
            folder.mkdir() //TODO: reportar si lo puede hacer o no, y dejar en el log
        }
    }

    // function boolean - is directory empty?? (privado)
    def static isDirEmpty(dirName) {
        def dir = new File(dirName)
        dir.exists() && dir.directory && (dir.list() as List).empty
    }

    //end:

    //region: ---------------------- Choosing Clone With 'Better' Path
    def static chooseClone(xFi){
        def xFc = xFi.clone()
        // ui.informationMessage(xFc as String)
        def chosenOnes=[]
        
        while (xFc.size()>0){
            def clonId = xFc[0].id
            // ui.informationMessage(clonId as String)
            def clones = N(clonId).nodesSharingContent
            // ui.informationMessage(clones as String)
            def clonesID = clones*.id.flatten() << clonId
            // ui.informationMessage(clonesID as String)
            def bestSim=0
            def best
            xFc.findAll{clonesID.contains(it.id)}.each{
                // ui.informationMessage(it.link as String)
                // ui.informationMessage(it.path as String)
                def sim = similarity(it.path,it.link)
                // ui.informationMessage(sim as String)
                if(bestSim < sim){
                    bestSim = sim
                    best = it
                }
                // ui.informationMessage(bestSim as String)
            }
            chosenOnes << best
            // ui.informationMessage(chosenOnes as String)
            clonesID.each{cID -> xFc.removeAll { it.id == cID } }
            // ui.informationMessage(xFc as String)
        }
        // ui.informationMessage(chosenOnes as String)
        return chosenOnes
    }
    //end:

    //region: ---------------------- Similarity 
    private static double similarity(String s1, String s2) {
        if (s1.length() < s2.length()) { // s1 should always be bigger
            String swap = s1; s1 = s2; s2 = swap;
        }
        int bigLen = s1.length();
        if (bigLen == 0) { return 1.0; /* both strings are zero length */ }
        return (bigLen - computeEditDistance(s1, s2)) / (double) bigLen;
    }

    private static int computeEditDistance(String s1, String s2) {
        s1 = s1.toLowerCase();
        s2 = s2.toLowerCase();

        int[] costs = new int[s2.length() + 1];
        for (int i = 0; i <= s1.length(); i++) {
            int lastValue = i;
            for (int j = 0; j <= s2.length(); j++) {
                if (i == 0)
                    costs[j] = j;
                else {
                    if (j > 0) {
                        int newValue = costs[j - 1];
                        if (s1.charAt(i - 1) != s2.charAt(j - 1))
                            newValue = Math.min(Math.min(newValue, lastValue),
                                    costs[j]) + 1;
                        costs[j - 1] = lastValue;
                        lastValue = newValue;
                    }
                }
            }
            if (i > 0)
                costs[s2.length()] = lastValue;
        }
        return costs[s2.length()];
    }
    //end:
    
    //region: ---------------------- Getting files info from drive
    
    def static listFilesFromDrive(rootNode){
        def rootPath = getPathFromLink(rootNode)
        def listOfFiles = []
        def excludedDirs = excludedFolders(rootNode)
        def sortByTypeThenName = { a, b ->
         a.isFile() != b.isFile() ? a.isFile() <=> b.isFile() : a.name <=> b.name }  // multiplicando por -1 se puede invertir el orden del sorting
        def nameFilt = getFilter(rootNode)
        def maxD = getMaxDepth(rootNode)
        new File(rootPath).traverse(
            type         : FileType.FILES,
            maxDepth     : maxD,
            nameFilter   : nameFilt,
            preDir       : { if (it.name[0] == '.' || it.path in excludedDirs) return FileVisitResult.SKIP_SUBTREE },
            sort         : sortByTypeThenName
        ){it ->
            listOfFiles << it.canonicalPath
        }
        return listOfFiles
    }

    def static getFilter(n, doUpdate = false, defaultNameFilter = '') {
        def attrFilter = attrNameFilter
        if(!n.attributes.containsKey(attrFilter) || doUpdate){
            defaultNameFilter = n[attrFilter]?.text?:defaultNameFilter
            def texto = baseFolderNote + """ parameters
The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:

-----------------------------------------------------
# MDI: nameFilter:
A filter to perform on the name of traversed files. If set, only files which match are brought. 
This option allowes four types of inputs:
1. nothing (empty) means no filtering (default) 
2. regex
  - example: `~/.*\\.mp3/ `
3. 'simplified' regex
  - example: `~.*\\.mp3` 
4. string with *
  - example: `*.mp3`   
    (equivalent to regex      `~/(?i).*\\.mp3/`  )
5. list of strings with '*' and ';'
  - example: ` *.mp3;*.png `   
    (equivalent to regex: ` ~/(?i)(.*\\.mp3|.*\\.png)/ `  )

-----------------------------------------------------
"""
            n.note ?= ''
            // n.note += baseFolderNote
            n.note += texto
            // UITools.informationMessage(texto)
            def resp = UITools.showInputDialog(n.delegate, texto, defaultNameFilter)
            n[attrFilter] = (resp == null)? defaultNameFilter :resp
        }
        def filtro = n[attrFilter]
//        filtro = filtro==''?null
        filtro = filtro==''? ~/^(?!~\$).*/   // filters office temp files like "~$Libro.xlsx"
                    :filtro[0..1] =='~/'?~filtro[2..-2]
                        :filtro[0] =='~'?~filtro.drop(1)
                            :toRegex(filtro)
        return filtro
    }

    def static toRegex(texto){
        // def regex = '(?i)('
        def regex = '^(?!~\$)(?i)(' // filters office temp files like "~$Libro.xlsx"
        regex += texto.replace('.',/\./).replace('*','.*').split(';').join('|')
        regex += ')'
        return ~regex
    }

    def static getMaxDepth(n, doUpdate = false, defaultMaxDepth = -1) {
        def attrFilter = attrMaxDepth
        def onErrorMaxDepth = 0
        if(!n[attrFilter] || doUpdate){
            defaultMaxDepth = n[attrFilter]?.num?:defaultMaxDepth
            def texto = baseFolderNote + """ maxDepth:

The maximum number of directory levels when recursing   
(default is -1 which means no limit, set to 0 for no recursion)


-----------------------------------------------------
"""
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultMaxDepth.toString())?:onErrorMaxDepth.toString()
            n.note ?= ''
            // n.note += baseFolderNote
            n.note += texto
        }
        def maxDepth = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():onErrorMaxDepth
        maxDepth = maxDepth>=-1?maxDepth:onErrorMaxDepth
        n[attrFilter] = maxDepth
        return maxDepth
    }

    def static getCheckBroken(n, doUpdate = false, defaultCheck = 0) {
        def attrFilter = attrReallyBroken
        if(!n[attrFilter] || doUpdate){
            defaultCheck = n[attrFilter]?.num?:defaultCheck
            def texto = baseFolderNote + """ checkIfReallyBroken:
Check if existing nodes pointing to filtered files still exist.   
This option is only useful if you defined a nameFilter before 
but in the map there are also some files that doesn't match 
this filter definition 
(for example if you brought them manually or import them 
before the actual namefilter setting)  

- default is 0 which means don't check --> Mark node as missing also if it doesn't match the current filter,

- set to 1 to extra check if a not matching file still exists in drive 


-----------------------------------------------------

"""
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultCheck.toString())?:defaultCheck.toString()
            n.note ?= ''
            // n.note += baseFolderNote
            n.note += texto
        }
        def checkBroken = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():defaultCheck
        checkBroken = checkBroken in [0, 1]?checkBroken:defaultCheck
        n[attrFilter] = checkBroken
        return checkBroken == 1
    }   

    def static getMarkMoved(n, doUpdate = false, defaultMark = 0) {
        def attrFilter = attrMarkWhenMoved
        if(!n[attrFilter] || doUpdate){
            defaultMark = n[attrFilter]?.num?:defaultMark
            def texto = baseFolderNote + """ markWhenMoved:

change styles to moved/renamed file Nodes 

set to:   
 
0  : to change style only if node hasn't a previous one (default),

1  : to allways change the style,

-1 : to never change the style

-----------------------------------------------------

 """
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultMark.toString())?:defaultMark.toString()
            n.note ?= ''
            // n.note += baseFolderNote
            n.note += texto
        }
        def markMoved = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():defaultMark
        markMoved = markMoved in [-1, 0, 1]?markMoved:defaultMark
        n[attrFilter] = markMoved
        return markMoved
    }
    
    def static getLinkType(n, doUpdate = false, defaultLinkType = 0) {
        def attrFilter = attrLinkType
        if(!n[attrFilter] || doUpdate){
            defaultLinkType = n[attrFilter]?.num?:['absolute','relative'].indexOf(config['links'])
            def texto = baseFolderNote + """ linkType:

Define if you want to use Absolute or Relative   
links for files and folders.

 set to:   

0 : to use Absolute links

1 : to use Relative links

-----------------------------------------------------
   """
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultLinkType.toString())?:defaultLinkType.toString()
            n.note ?= ''
            //n.note += baseFolderNote
            n.note += texto
        }
        def linkType = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():defaultLinkType
        linkType = linkType in [0, 1]?linkType:defaultLinkType
        n[attrFilter] = linkType
        normalizeNode(n.mindMap.file, n, linkType)
        return linkType
    }   
    //end:
    
    //region: ---------------------- User Interface
    def static statusInfo(t, icon = statusInfoIcon){
        ScriptUtils.c().setStatusInfo('MDI',  "MDI: ${t}".toString() , icon)
        logger.info("MDI: ${t}".toString())
        timer.runAfter(5000){
            ScriptUtils.c().setStatusInfo('MDI', '')
        }
    }
    //end:
}