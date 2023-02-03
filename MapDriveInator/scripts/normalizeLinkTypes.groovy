linkType = 0
mapFile  = node.mindMap.file

def baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
    linkType = MDI.getLinkType(baseFolderNode)
    normalizeLinkTypes(baseFolderNode)
    normalizeNode(baseFolderNode)
    c.statusInfo = "File links normalized"
} else {
    MDI.statusInfo("File links normalization aborted")
}


def normalizeLinkTypes(nodo){
    nodo.children.findAll{!MDI.isLocked(it)}.each{
        if(MDI.isLinkToFileOrFolder(it)){
            normalizeNode(it)
        }
        if(it.children.size()>0){
            normalizeLinkTypes(it)
        }
    }
}

def normalizeNode(n){
    MDI.normalizeNode(mapFile, n, linkType)
}
