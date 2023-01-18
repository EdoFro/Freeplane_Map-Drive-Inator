
import groovy.io.FileType
import groovy.io.FileVisitResult
import java.util.regex.Pattern


baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
    try {
	 baseFolderNode.style.name = MDI.styleBaseFolder
    } catch(Exception ex) {
        ui.showMessage("The mindmap has no '${MDI.styleBaseFolder}' style.\n\nPlease import the MDI styles into your map.", 0)
        return 0
    }
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
    (f - baseFolderPath)?.split(Pattern.quote(File.separator)).each{String dir -> //TODO: linux
        gPath +=  dir << File.separator //TODO: linux
        nodoDonde = nodoDonde.find{it.text == dir && (it.link?.file?.path + File.separator) == gPath }[0]?:nodoDonde.createChild() //TODO: linux
        if(nodoDonde.text==''){
            nodoDonde.text=dir
            if(doMarkAsNew) {MDI.markAsNew(nodoDonde, true)}
        }
        if(!nodoDonde.link?.file){nodoDonde.link.file = new File(gPath)}
    }
}


