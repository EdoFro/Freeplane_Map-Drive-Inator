// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import groovy.io.FileType
import groovy.io.FileVisitResult


baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
	baseFolderNode.style.name = 'baseFolder'
	baseFolderPath = MDI.getPathFromLink(baseFolderNode)
    doMarkAsNew = !baseFolderNode.leaf
    importFoldersFromDrive(baseFolderNode)
}else{
	ui.informationMessage("couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)")
}


def importFoldersFromDrive(rootNode){
    def rootPath = MDI.getPathFromLink(rootNode)
    def excludedDirs = MDI.excludedFolders(rootNode)
    def sortByTypeThenName = { a, b -> a.isFile() != b.isFile() ? a.isFile() <=> b.isFile() : a.name <=> b.name }
    def maxD = MDI.getMaxDepth(rootNode,0)
    
    new File(rootPath).traverse(
        type         : FileType.DIRECTORIES,
        maxDepth     : maxD,
        preDir       : { if (it.name[0] == '.' || it.path in excludedDirs) return FileVisitResult.SKIP_SUBTREE },
        sort         : sortByTypeThenName
    ){it ->
        // ui.informationMessage('it.path   :' + it.path as String)
        addFolderNode( it.path)
    }
}


def addFolderNode(f) {
    def nodoDonde = baseFolderNode
    def gPath = baseFolderPath
    (f - baseFolderPath)?.split('\\\\').each{String dir ->
        gPath +=  dir << '\\'
        nodoDonde = nodoDonde.find{it.text == dir && (it.link?.file?.path + '\\') == gPath }[0]?:nodoDonde.createChild()
        if(nodoDonde.text==''){
            nodoDonde.text=dir
            if(doMarkAsNew) {MDI.markAsNew(nodoDonde, true)}
        }
        if(!nodoDonde.link?.file){nodoDonde.link.file = new File(gPath)}
    }
}



