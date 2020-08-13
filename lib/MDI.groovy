
import org.freeplane.plugin.script.proxy.ScriptUtils


class MDI{
    //region: ---------------------- Functions Initial Setup
    
    
    // function, returns Node ("Base folder") under the selected node
    def static obtainBaseFolder(n) {
        // returns the first node which has a link to a file directory and has style 'file_folder' + 'baseFolder'
        //return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}
        def nBase = n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}?:(n.link?.file?.directory && n.hasStyle('file_folder'))?n:n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder')}
        return nBase
    }

    def static obtainNewImportsNode(n){
        def nImp = n.children.find{it.hasStyle('newFolderImport')}?:n.createChild('new imported files')
        nImp.style.name = 'newFolderImport'
        return nImp
    }
    
    def static wantToLog(n){
        def atribName = 'log_MDI'
        if(!n[atribName])n[atribName]='No'
        return n[atribName]==true || [1,'1','true','ok','si','yes','y','ja'].contains(n[atribName].toString().toLowerCase())
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
            // TODO: debe ir?? :	if(nodo.style.name=='file_folder'){nodo.style.name = null}
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

    //region: ---------------------- Información Desde Nodos
    def static N(id){
        return ScriptUtils.node().map.node(id as String)
    }

    def static nodeIsFolder(n){
        return n.hasStyle('file_folder')
    }

    def static isLocked(n){
        return n.hasStyle('locked')
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
        def lastChar = (n.link.file?.directory || nodeIsFolder(n))?'\\':''
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
                    texto = correctFolderName(n) << '\\' << texto
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
    //end

    //region: ---------------------- Funciones Strings
    def static getPathFromStrings(folderPath,fileName){
        //folderPath.toString() + fileName.toString()
        folderPath + fileName
    }

    def static getFolderpathFromStrings(folderPath,nodo){
        String folderName = correctFolderName(nodo)
        getPathFromStrings(folderPath,folderName) + '\\'
    }
    
    //"
    def static soloPath(fileAddress) {
        fileAddress[0..fileAddress.lastIndexOf('\\')]
    }

    //function, returns string, looks at text in node and correct it if it can't be used as a foldername (privado)
    def static correctFolderName(n){
        String texto = n.text.trim().replace('/','-').replace('\\','-')//.replace('.','-') //replaces chars not usefull in a Folder name
        if(n.text != texto) n.text = texto//corrects text in node too
        return texto // returns the corrected text
    }
    //end

    //region: ---------------------- Modificando Nodos
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

    def static markAsMoved(n,b){
        if(b){
            n.style.name = 'movedRenamed'
        } else {
            if (n.style.name == 'movedRenamed') {n.style.name = null}
        }
    }

    def static markAsNew(n,b){
        if(b){
            n.style.name = 'freshNew'
        } else {
            if (n.style.name == 'freshNew') {n.style.name = null}
        }
    }
    
    def static markAsBroken(n,b){
        if(b){
            if(!n.icons.contains('broken-line')){n.icons.add('broken-line')}
        } else {
            if(n.icons.contains('broken-line')){n.icons.remove('broken-line')}
        }
    }
    // end

    //region: ---------------------- Manipulando Files En Drive
    // create all folders of a path (if they doesn't exist)
    def static createPath(String p) {
        //ui.informationMessage('createPath ' + p)
        def folders = p.replace('\\','/').split('/')
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

    // function Boolean - does the link points to an existent file?
    // def static existsInDrive( mylink){
        // (mylink.uri?.scheme == 'file' && mylink.file.exists())
    // }

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
      
}