// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import MDI

def nodo = node
baseFolderNode = obtainBaseFolder(nodo) //obtains "base folder"
if(!baseFolderNode){
    ui.informationMessage("couldn't find the current 'baseFolderNode' for the selected node \n\n (path between the selected node and the map's root)")
    return
}
nodeNewImports = MDI.obtainNewImportsNode(baseFolderNode)

// obtains list of nodes "file" in selected node and its childrens (excludes directories)
//def nodesToMove = nodeNewImports.find{it.link?.uri?.scheme == 'file' && !it.hasStyle('file_folder')} // old version
def nodesToMove = nodeNewImports.find{it.link?.uri?.scheme == 'file' && !it.link.file.directory}

// c.select(nodesToMove)
// ui.informationMessage('nodesToMove :' + nodesToMove.size().toString())

def rNodToMove
def evitarLoop =0
while (nodesToMove.size()>0 && evitarLoop<5){
    def n = nodesToMove[0]
    rNodToMove = nodesToMove.size()
	// c.select(n)
    // ui.informationMessage('n' )
    //obtains list of nodes "folders" where the node "file" is in the map
	// and removes the "base folder" from the list because it shouldn't be moved
	// "folders" is a list of nodes
	def folders = pathToRootFolders(n).minus(baseFolderNode)  
	
	//peeks the first folder that doesn't have a "twin" inside the base folder --> this is the one to be moved
	// "toBeMoved" is a node
	def toBeMoved = folders.find{f ->
		baseFolderNode.collect(){s ->
			s.find{t ->
				(t.text == f.text) && (t.link?.file?.path == f.link.file.path)
			}
		}.flatten().size()==1
	}
	//if all the folders allready exist in the tree (toBeMoved is empty) --> it is the "file" node the one that must be moved and  without any folder
	if(!toBeMoved) toBeMoved = n
	c.select(toBeMoved)
    // ui.informationMessage('toBeMoved' )

	// to recognize which are the new inserted nodes in the project tree they get formated
	// I decided to format all the moved nodes (files and folders)
	// "toBeFormated" is a list of nodes
	// toBeFormated = toBeMoved.find{true} //all nodes under the toBeMoved node (list)  <--- ésta funciona
	def toBeFormated = toBeMoved.findAll() //all nodes under the toBeMoved node (list)   <--- también funciona
	// c.select(toBeFormated)
    // ui.informationMessage('toBeFormated' )

	//add style and icon to each node in the list
	toBeFormated.each{ MDI.markAsNew(it ,true) }
	// ui.informationMessage('toBeMoved:   ' + toBeMoved.toString())
	
	//peeks the node in the toBeMoved node path that is a folder and is nearest to it (its twin is where the node must be moved to)
	// "toSearchMoveTo" is a node
	def toSearchMoveTo = pathToRootFolders(toBeMoved).minus(toBeMoved).minus(baseFolderNode).reverse()//[0]
	// ui.informationMessage('toSearchMoveTo:   ' + toSearchMoveTo.toString())	
	
	// c.select(toSearchMoveTo)
    // ui.informationMessage('toSearchMoveTo'+ toSearchMoveTo.size().toString())

	if (toSearchMoveTo.size()>0){
        def nodeWithTwin = toSearchMoveTo[0]
        // c.select(nodeWithTwin)
        // ui.informationMessage('nodeWithTwin' )
        
		// obtains the Uri needed to search the destination node
		def uriBuscado = nodeWithTwin.link.uri
		// search the node in the project that has the same link (it's the twin of the folder)
		// --> this node is the destination node where the toBeMoved node should be moved
		// "moveTo" is a node
		def moveTos = baseFolderNode.find{it.link.uri == uriBuscado}.collect().minus(nodeWithTwin)
        def moveTo = moveTos[selectMoveTo(moveTos)]  //TODO: lo lleva al primero que encuentra. debería llevarlo sólo si hay uno, si hay más debería dar la opción de elegir
		// and the moving action itself!!!
		toBeMoved.moveTo(moveTo)
		//formats the former "folder" to be a button to help the user find where the new node went in the map to
        if(nodeWithTwin.find{it.link.uri.scheme=='file'}.size()<= 1 ){
			nodeWithTwin.style.name = 'BotonMenu'	
			nodeWithTwin.link.text = '#' + moveTo.id
		} 
	}else {toBeMoved.moveTo(baseFolderNode)}
    nodesToMove = nodeNewImports.find{it.link?.uri?.scheme == 'file' && !it.link.file.directory}
    // ui.informationMessage('nodesToMove :' +nodesToMove.size().toString())
    if(rNodToMove == nodesToMove.size()){evitarLoop++}
}

c.select(nodeNewImports);
c.statusInfo = "    -------------   new 'file' Nodes positioned    -------------      "



// // function, returns Node (Base folder) under the selected node
	// // the first node which has a link to a file directory and has "file_folder" and "baseFolder" style
def obtainBaseFolder(n) {
	return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}
}

// function, returns list of Nodes, (folders in rootPath from selected node)
	// all nodes that have a link to a file directory and have style "file_folder"
def pathToRootFolders(n) {
	return n.pathToRoot.findAll{it.link?.file?.directory && it.hasStyle('file_folder')}
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