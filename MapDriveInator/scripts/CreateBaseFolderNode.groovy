import edofro.mapdriveinator.Sync

def baseFolderNode = Sync.createBaseFolderNode(node)

if(baseFolderNode){
    c.select(baseFolderNode)
}else{
    ui.informationMessage("couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)")
    //TODO: message as translation object
}