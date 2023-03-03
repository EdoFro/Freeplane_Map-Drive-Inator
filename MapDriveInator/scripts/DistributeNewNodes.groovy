
import MDI

def nodo = node
//def menuButtonStyle = 'menuButton'

baseFolderNode = MDI.obtainBaseFolder(nodo) //obtains "base folder"
if(!baseFolderNode){
    return
}
nodeNewImports = MDI.obtainNewImportsNode(baseFolderNode)
if(!nodeNewImports) return 'Interrupted: no MDI styles'

// obtains list of nodes "file" in selected node and its childrens (excludes directories)
def nodesToMove = nodeNewImports.find{MDI.isLinkToFileOrFolder(it) && !MDI.nodeIsFolder(it)}

 // c.select(nodesToMove)
 // ui.informationMessage('1. nodesToMove :' + nodesToMove.size().toString())

def rNodToMove
def evitarLoop =0
while (nodesToMove.size()>0 && evitarLoop<5){
    def n = nodesToMove[0]
    rNodToMove = nodesToMove.size()
    
    // c.select(n)
    // ui.informationMessage('2. n' )
    //obtains list of nodes "folders" where the node "file" is in the map
    // and removes the "base folder" from the list because it shouldn't be moved
    // "folders" is a list of nodes
    def folders = pathToRootFolders(n).minus(baseFolderNode)  
    
    //peeks the first folder that doesn't have a "twin" inside the base folder --> this is the one to be moved
    // "toBeMoved" is a node
    def toBeMoved = folders.find{f ->
        baseFolderNode.collect(){s ->
            s.find{t ->
                (t.text == f.text) && (MDI.getPathFromLink3(t) == MDI.getPathFromLink3(f))
            }
        }.flatten().size()==1
    }
    //if all the folders allready exist in the tree (toBeMoved is empty) --> it is the "file" node the one that must be moved and  without any folder
    if(!toBeMoved) toBeMoved = n
    
    // c.select(toBeMoved)
    // ui.informationMessage('3. toBeMoved' )

    // to recognize which are the new inserted nodes in the project tree they get formated
    // I decided to format all the moved nodes (files and folders)
    // "toBeFormated" is a list of nodes
    def toBeFormated = toBeMoved.findAll() //all nodes under the toBeMoved node (list)
    
    // c.select(toBeFormated)
    // ui.informationMessage('4. toBeFormated' )

    //add style and icon to each node in the list
    toBeFormated.each{ MDI.markAsNew(it ,true) }

    // ui.informationMessage('5. toBeMoved:   ' + toBeMoved.toString())
    
    //peeks the node in the toBeMoved node path that is a folder and is nearest to it (its twin is where the node must be moved to)
    // "toSearchMoveTo" is a node
    def toSearchMoveTo = pathToRootFolders(toBeMoved).minus(toBeMoved).minus(baseFolderNode).reverse()//[0]
    
    //ui.informationMessage('6. toSearchMoveTo:   ' + toSearchMoveTo.toString())  
    
    // c.select(toSearchMoveTo)
    // ui.informationMessage('7. toSearchMoveTo'+ toSearchMoveTo.size().toString())

    if (toSearchMoveTo.size()>0){
        def nodeWithTwin = toSearchMoveTo[0]
        // c.select(nodeWithTwin)
        // ui.informationMessage('8. nodeWithTwin' )
        
        // obtains the Uri needed to search the destination node
        def uriBuscado = nodeWithTwin.link.uri
        // ui.informationMessage("8.1 uriBuscado: '$uriBuscado'".toString())
        // search the node in the project that has the same link (it's the twin of the folder)
        // --> this node is the destination node where the toBeMoved node should be moved
        // "moveTo" is a node
        def moveTos = baseFolderNode.find{it.link.uri == uriBuscado}.collect().minus(nodeWithTwin)
        def moveTo = moveTos[selectMoveTo(moveTos)]
        // and the moving action itself!!!
        toBeMoved.moveTo(moveTo)
        //formats the former "folder" to be a button to help the user find where the new node went in the map to
        if(nodeWithTwin.find{MDI.isLinkToFileOrFolder(it)}.size()<= 1 ){
            nodeWithTwin.link.text = '#' + moveTo.id
        } 
    }else {toBeMoved.moveTo(baseFolderNode)}
    nodesToMove = nodeNewImports.find{MDI.isLinkToFileOrFolder(it) && !MDI.nodeIsFolder(it)}
    // ui.informationMessage('9. nodesToMove :' + nodesToMove.size().toString())
    if(rNodToMove == nodesToMove.size()){evitarLoop++}
}

c.select(nodeNewImports);
MDI.statusInfo(" -----   new 'file' Nodes positioned    ----- ")




// function, returns list of Nodes, (folders in rootPath from selected node)
def pathToRootFolders(n) {
    return n.pathToRoot.findAll{MDI.nodeIsFolder(it)}
}

def selectMoveTo(nodos){
    if (nodos.size()==1) return 0
    def i=0
    def texto = 'Select where to move the new node \n\n' + nodos.collect{++i + '. ' + arm(it)}.join('\n')
    def b
    do{
        b = ui.showInputDialog(nodeNewImports.delegate, texto, '1')
    } while (b && (!b.isNumber() || b.toInteger()<=0 ||b.toInteger()>i))
    return b?b.toInteger()-1:0
}

def arm(nodo){
    def nodos = nodo.pathToRoot - baseFolderNode.pathToRoot
    nodos.plainText.join(' / ')
}