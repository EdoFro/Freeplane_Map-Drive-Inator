// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

//.groovy
import groovy.io.FileType
import groovy.io.FileVisitResult

baseFolderNode = MDI.obtainBaseFolder(node)
baseFolderPath = MDI.getPathFromLink(baseFolderNode)

importFoldersFromDrive(baseFolderNode)

def importFoldersFromDrive(rootNode){
    def rootPath = MDI.getPathFromLink(rootNode)
    //def excludedDirs = excludedFolders(rootNode)
    def sortByTypeThenName = { a, b ->
     a.isFile() != b.isFile() ? a.isFile() <=> b.isFile() : a.name <=> b.name }  // multiplicando por -1 se puede invertir el orden del sorting
    new File(rootPath).traverse(
        type         : FileType.DIRECTORIES,
        //nameFilter   : ~/.*\.pdf/,
        preDir       : { if (it.name[0] == '.') return FileVisitResult.SKIP_SUBTREE },
        sort         : sortByTypeThenName
    ){it ->
        // ui.informationMessage('it.path   :' + it.path as String)
        addFolderNode( it.path)
    }
}

def addFolderNode(f) {
    // agregar f a nodo nueva importación
    def nodoDonde = baseFolderNode
    def gPath = baseFolderPath
    (f - baseFolderPath)?.split('\\\\').init().each{String dir ->
        // ui.informationMessage('dir   :' + dir as String)
        gPath +=  dir << '\\'
        // ui.informationMessage('gPath   :' + gPath as String)
        nodoDonde = nodoDonde.children.find{it.text == dir}?:nodoDonde.createChild()
        if(nodoDonde.text==''){
            nodoDonde.text=dir
        }
        // ui.informationMessage('nodoDonde   :' + nodoDonde as String)
        if(!nodoDonde.link?.file){nodoDonde.link.file = new File(gPath)}
    }
    nodoDonde.createChild(f - gPath).link.file = new File(f)
}


