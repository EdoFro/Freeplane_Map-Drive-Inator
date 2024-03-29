
import MDI

baseFolderNode = MDI.obtainBaseFolder(node)
if(!baseFolderNode){ return }

def broken = baseFolderNode.find{MDI.isBroken(it)}
def before = broken.size()//.toString()

broken.findAll{it.link.file.exists()}.each{n ->
    MDI.markAsBroken(n, false)
}

def after = baseFolderNode.find{MDI.isBroken(it)}.size()//.toString()
ui.informationMessage(" ${before - after} nodes pointing to existing files unmarked \n\n ${after} nodes pointing to unexisting files remains" )
