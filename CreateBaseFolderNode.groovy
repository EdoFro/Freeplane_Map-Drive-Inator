// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import MDI

baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
	baseFolderNode.style.name = 'baseFolder'
    def nameFilt = MDI.getFilter(baseFolderNode)
    def maxD = MDI.getMaxDepth(baseFolderNode)
}else{
	ui.informationMessage("couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)")
}

