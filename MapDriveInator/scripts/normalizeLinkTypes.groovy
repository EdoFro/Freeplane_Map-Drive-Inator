linkType = 0
mapFile  = node.mindMap.file

def baseFolderNode = MDI.obtainBaseFolder(node)
if(baseFolderNode){
    linkType = MDI.getLinkType(baseFolderNode)
    def i = 0
    i += normalizeLinkTypes(baseFolderNode)
    i += normalizeNode(baseFolderNode)
    MDI.statusInfo("${i} file link${i==1?'':'s'} normalized")
} else {
    MDI.statusInfo("File links normalization aborted")
}


def normalizeLinkTypes(nodo){
    def j = 0
    nodo.children.findAll{!MDI.isLocked(it)}.each{
        if(MDI.isLinkToFileOrFolder(it)){
            j += normalizeNode(it)
        }
        if(it.children.size()>0){
            j += normalizeLinkTypes(it)
        }
    }
    return j
}

def normalizeNode(n){
    return MDI.normalizeNode(mapFile, n, linkType)
}
