// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import MDI

baseFolderNode = MDI.obtainBaseFolder(node)
def broken = baseFolderNode.find{MDI.isBroken(it)}
def before = broken.size()//.toString()

broken.findAll{it.link.file.exists()}.each{n ->
    MDI.markAsBroken(n, false)
}

def after = baseFolderNode.find{MDI.isBroken(it)}.size()//.toString()
ui.informationMessage(" ${before - after} nodes pointing to existing files unmarked \n\n ${after} nodes pointing to unexisting files remains" )
