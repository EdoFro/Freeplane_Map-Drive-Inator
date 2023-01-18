
import MDI

baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
    c.select(baseFolderNode)
    try {
	 baseFolderNode.style.name = MDI.styleBaseFolder
    } catch(Exception ex) {
        ui.showMessage("The mindmap has no '${MDI.styleBaseFolder}' style.\n\nPlease import the MDI styles into your map.", 0)
        return 0
    }
    def nameFilt = MDI.getFilter(baseFolderNode)
    def maxD = MDI.getMaxDepth(baseFolderNode)
}else{
	ui.informationMessage("couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)")
}