
import MDI

baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
    c.select(baseFolderNode)
    def existed = false
    if (baseFolderNode.style.name == MDI.styleBaseFolder){
        existed = true
        baseFolderNode.note = (baseFolderNode.note?.takeBefore(MDI.baseFolderNote))
        //baseFolderNode.note += "${baseFolderNode.note?'\n\n':''}${MDI.baseFolderNote}"
    } else {
        try {
         baseFolderNode.style.name = MDI.styleBaseFolder
        } catch(Exception ex) {
            ui.showMessage("The mindmap has no '${MDI.styleBaseFolder}' style.\n\nPlease import the MDI styles into your map.", 0)
            return 0
        }
        
    }
    
    baseFolderNode.noteContentType = 'markdown'
    
    def nameFilt = MDI.getFilter(baseFolderNode, true)
    def maxD = MDI.getMaxDepth(baseFolderNode, true)
    def linkType = MDI.getLinkType(baseFolderNode, true)
    def markMovedOption = MDI.getMarkMoved(baseFolderNode, true)
    def checkIfBroken = MDI.checkIfReallyBroken(baseFolderNode, true)
    
    
    MDI.statusInfo(" baseFolderNode ${existed?'updated':'created'} ")
}else{
	return
}