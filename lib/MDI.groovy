
import org.freeplane.plugin.script.proxy.ScriptUtils
import groovy.io.FileType
import groovy.io.FileVisitResult
import org.freeplane.core.ui.components.UITools

class MDI{
    //nodes attributes
    private static final String attrLog             = 'log_MDI'
    private static final String attrMarkWhenMoved   = 'markWhenMoved'
    private static final String attrNameFilter      = 'nameFilter'
    private static final String attrMaxDepth        = 'maxDepth'
    private static final String attrReallyBroken    = 'checkIfReallyBroken'
    //styles
    private static final String styleLocked         = 'locked'
    private static final String styleMovedRenamed   = 'movedRenamed'
    private static final String styleFreshNew       = 'freshNew'
    private static final String styleBroken         = 'missing'
    private static final String styleFolder         = 'file_folder'
    private static final String styleBaseFolder     = 'baseFolder'
    
    //region: ---------------------- Functions Initial Setup
    
    
    // function, returns Node ("Base folder") under the selected node
    def static obtainBaseFolder(n) {
        // returns the first node which has a link to a file directory and has style styleFolder + styleBaseFolder
        //return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}
        def nBase = n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}?:(n.link?.file?.directory && n.hasStyle(styleFolder))?n:n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder)}
        return nBase
    }

    def static obtainNewImportsNode(n){
        def nImp = n.children.find{it.hasStyle('newFolderImport')}?:n.createChild('new imported files')
        nImp.style.name = 'newFolderImport'
        return nImp
    }
    
    def static wantToLog(n){
        if(!n[attrLog])n[attrLog]='No'
        return n[attrLog]==true || [1,'1','true','ok','si','yes','y','ja'].contains(n[attrLog].toString().toLowerCase())
    }
    //end

    //region: ---------------------- Updating Folders In Drive And Map
    // loops all the folders and update them
    def static updateFolders(xfiles){
        def foldersToDelete =[]
        def notMoved = 0
        def unexistent = 0
        def deleted = 0
        def keeped = 0
        def created = 0
        def corrected = 0
        def cloneOK = 0
        xfiles.each{ xf ->
            def resultado = updateThisFolder(xf)
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
    def static updateThisFolder(xf) {
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
                        setLink(nodo, xf.path)  // cambiarle a nuevo link
                        markAsBroken(nodo,false)
                        markAsMoved(nodo,true)
                        if (deleteFolder(xf.link)==1)
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
                    if (file.isDirectory()) 		//	?existe en el lugar que indica su link (y es folderName)?
                    {
                        //ya existe en posición correcta --> no hacer nada salvo corregir link
                        setLink(nodo, xf.path)  // cambiarle a nuevo link
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
            createPath(xf.path)
            setLink(nodo, xf.path)
            xf.link = xf.path
            // TODO: debe ir?? :	if(nodo.style.name==styleFolder){nodo.style.name = null}
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
            return 1
        } else {
            return 0 
        }
    }
    
    // end 
    
    //region: ---------------------- nodes marks
    
    def static isLocked(n){
        return n.hasStyle(styleLocked)
    }
    
    def static isMoved(n){
        return n.hasStyle(styleMovedRenamed)
    }
    
    def static markAsMoved(n,b, markMoved = 0){
        if(b && markMoved!=-1 && (markMoved == 1 || n.style.name == null)){
            n.style.name = styleMovedRenamed
        } else {
            if (n.style.name == styleMovedRenamed) {n.style.name = null}
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

    def static checkIfReallyBroken(n) {
        return getFilter(n).asBoolean() && getCheckBroken(n)
    }

    def static markAsBroken(n,b,checkAgain = false){
        if(b && (!checkAgain || !n.link?.file?.exists())  ){
            n.style.name = styleBroken
        } else {
            if (isBroken(n)) {n.style.name = null}
        }
    }
    
    //end

    //region: ---------------------- getting Information from nodes
    def static N(id){
        return ScriptUtils.node().map.node(id as String)
    }

    def static nodeIsFolder(n){
        return n.hasStyle(styleFolder)
    }

    def static isLinkToFile(n){
        //n.link && n.link.uri.scheme =='file' && !isLinkToNodeInAnotherMap(n)  //excludes links to nodes (internal and in an other map)
        // to consider:
            // n.link.file  //includes links to files and folders but excludes links to nodes in other map
            // n.link.uri.scheme =='file' //includes links to files but excludes internal links to nodes in same map
        return (boolean) n.link.file && n.link.uri.scheme =='file'
    }

    def static getPathFromLink(n){
        //return n.link.uri.path.drop(1) as String 
        def lastChar = (n.link.file?.directory || nodeIsFolder(n))?File.separator:'' //TODO: Linux
        return (n.link.file?n.link.file.path + lastChar:null)
    }

    def static getPathFromLink2(n,lastChar =''){
        return (n.link.file.path + lastChar)
    }
    
    def static getPathFromLink3(n,lastChar =''){
        return (n.link.file?n.link.file.path + lastChar:null)
    }

    //function, returns string, builds the new path string by looking at the position of the node in the mindmap
    //it uses all the file-folder styled nodes till the base node
    def static obtainPathFromMap(n) {
        def texto =''
        def baseFolderNode = obtainBaseFolder(n)
        if(baseFolderNode){
            while(!n.equals(baseFolderNode)){
                if(nodeIsFolder(n)){
                    texto = correctFolderName(n) << File.separator << texto  //TODO: Linux
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
        return nodos.link.file.path
    }
    //end

    //region: ---------------------- Funciones Strings
    def static getPathFromStrings(folderPath,fileName){
        //folderPath.toString() + fileName.toString()
        folderPath + fileName
    }

    def static getFolderpathFromStrings(folderPath,nodo){
        String folderName = correctFolderName(nodo)
        getPathFromStrings(folderPath,folderName) + File.separator    //TODO: Linux
    }
    
    //"
    def static soloPath(fileAddress) {
        fileAddress[0..fileAddress.lastIndexOf(File.separator)]    //TODO: Linux
    }

    //function, returns string, looks at text in node and correct it if it can't be used as a foldername (privado)
    def static correctFolderName(n){
        String texto = n.text.trim().replace('/','-').replace(File.separator,'-')//.replace('.','-') //replaces chars not usefull in a Folder name    //TODO: Linux
        if(n.text != texto) n.text = texto//corrects text in node too
        return texto // returns the corrected text
    }
    //end

    //region: ---------------------- Modifying Nodes
    //adds a [link to a file] to the node
    def static setLink(n, addr){
        // ui.informationMessage(addr.toString())
        n.link.file = new File(addr.toString())
    }

    //corrects link to image in node which is also a file in the project
    def static setLinkImage(n, addr){
        if(n.externalObject && n.link.file && n.link.text == n.externalObject.uri){
            n.externalObject.file = new File(addr.toString())
        }
    }

    
    // end

    //region: ---------------------- Mannaging Files in Drive
    // create all folders of a path (if they doesn't exist)
    def static createPath(String p) {
        //ui.informationMessage('createPath ' + p)
        def folders = p.replace(File.separator,'/').split('/')    //TODO: Linux
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
            folder.mkdir()
        }
    }

    // function boolean - is directory empty?? (privado)
    def static isDirEmpty(dirName) {
        def dir = new File(dirName)
        dir.exists() && dir.directory && (dir.list() as List).empty
    }

    // end

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
                sim = similarity(it.path,it.link)
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
    // end

    //region: ---------------------- Similarity 
    private double similarity(String s1, String s2) {
        if (s1.length() < s2.length()) { // s1 should always be bigger
            String swap = s1; s1 = s2; s2 = swap;
        }
        int bigLen = s1.length();
        if (bigLen == 0) { return 1.0; /* both strings are zero length */ }
        return (bigLen - computeEditDistance(s1, s2)) / (double) bigLen;
    }

    private int computeEditDistance(String s1, String s2) {
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
    //end
    
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
            listOfFiles << it.path
        }
        return listOfFiles
    }

    def static getFilter(n) {
        def attrFilter = attrNameFilter
        def defaultNameFilter = ''
        if(!n.attributes.containsKey(attrFilter)){
            def texto = "\n\nThe import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node: \n\n    -- nameFilter:\n       A filter to perform on the name of traversed files. If set, only files which match are brought. \n        This options allowes four types of inputs:\n           1. nothing (empty) means no filtering (default) \n           2. regex                   - example:       ~/.*\\.mp3/ \n           3. 'simplified' regex    - example:       ~.*\\.mp3 \n           4. string with *          - example:       *.mp3    (equivalent to regex      ~/(?i).*\\.mp3/  )\n           5. list of strings with * and ;         - example:       *.mp3;*.png   (equivalent to regex      ~/(?i)(.*\\.mp3|.*\\.png)/  )\n\n"
            n.note += texto
            // UITools.informationMessage(texto)
            n[attrFilter] = UITools.showInputDialog(n.delegate, texto, defaultNameFilter)?:defaultNameFilter
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

    def static getMaxDepth(n, defaultMaxDepth = -1) {
        def attrFilter = attrMaxDepth
        // def defaultMaxDepth = -1
        def onErrorMaxDepth = 0
        if(!n[attrFilter]){
            // n[attrFilter]= defaultMaxDepth
            def texto = "\n\n  -- maxDepth:\n       The maximum number of directory levels when recursing \n        (default is -1 which means infinite, set to 0 for no recursion)\n\n   "
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultMaxDepth.toString())?:onErrorMaxDepth.toString()
            n.note += texto
        }
        def maxDepth = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():onErrorMaxDepth
        maxDepth = maxDepth>=-1?maxDepth:onErrorMaxDepth
        n[attrFilter] = maxDepth
        return maxDepth
    }

    def static getCheckBroken(n, defaultCheck = 0) {
        def attrFilter = attrReallyBroken
        if(!n[attrFilter]){
            def texto = "\n\n  -- checkIfReallyBroken:\n       Check if existing nodes pointing to filtered files still exist \n\n    - default is 0 which means don't check --> Mark node as missing also if it doesn't match the current filter,\n\n    - set to 1 to extra check if a not matching file still exists in drive \n\n   "
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultCheck.toString())?:defaultCheck.toString()
            n.note += texto
        }
        def checkBroken = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():defaultCheck
        checkBroken = checkBroken in [0, 1]?checkBroken:defaultCheck
        n[attrFilter] = checkBroken
        return checkBroken==1
    }   

    def static getMarkMoved(n, defaultMark = 0) {
        def attrFilter = attrMarkWhenMoved
        if(!n[attrFilter]){
            def texto = "\n\n  -- markWhenMoved:\n       change styles to moved/renamed file Nodes \n\n set to: \n    0 : to change style only if node hasn't a previous one (default),\n\n    1 : to allways change the style,\n\n   -1 : to never change the style\n\n   "
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultMark.toString())?:defaultMark.toString()
            n.note += texto
        }
        def markMoved = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():defaultMark
        markMoved = markMoved in [-1, 0, 1]?markMoved:defaultMark
        n[attrFilter] = markMoved
        return markMoved
    }   
    //end
}