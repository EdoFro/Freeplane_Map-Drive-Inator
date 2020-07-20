// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})


def nodo = node
baseFolderNode = obtainBaseFolder(nodo) //obtains "base folder"
nodeNewImports = obtainNewImportsNode(baseFolderNode)
c.select(nodeNewImports)

// obtains list of nodes "file" in selected node and its childrens (excludes directories)
//def nodesToMove = nodeNewImports.find{it.link?.uri?.scheme == 'file' && !it.hasStyle('file_folder')} // old version
def nodesToMove = nodeNewImports.find{it.link?.uri?.scheme == 'file' && !it.link.file.directory}

// for each node "file" in list of nodes to be moved
nodesToMove.each{ n-> 
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

	// to recognize which are the new inserted nodes in the project tree they get formated
	// I decided to format all the moved nodes (files and folders)
	// "toBeFormated" is a list of nodes
	// toBeFormated = toBeMoved.find{true} //all nodes under the toBeMoved node (list)  <--- ésta funciona
	toBeFormated = toBeMoved.findAll() //all nodes under the toBeMoved node (list)   <--- también funciona
	//add style and icon to each node in the list
	toBeFormated.each{m ->
		m.style.name = 'freshNew'
		// if (!m.icons.contains('addition'))	m.icons.add('addition')
	}
	//ui.informationMessage('toBeMoved:   ' + toBeMoved.toString())
	
	//peeks the node in the toBeMoved node path that is a folder and is nearest to it (its twin is where the node must be moved to)
	// "toSearchMoveTo" is a node
	def toSearchMoveTo = pathToRootFolders(toBeMoved).minus(toBeMoved).minus(baseFolderNode).reverse()//[0]
	//ui.informationMessage('toSearchMoveTo:   ' + toSearchMoveTo.toString())	
	//TODO: puede toSearchMoveTo ser un listado con más de 1 nodo?? es siempre una lista?? (aunque esté vacía o sólo tenga un nodo??)
	
	if (toSearchMoveTo.size()>0){
		// obtains the Uri needed to search the destination node
		def uriBuscado = toSearchMoveTo[0].link.uri
		// search the node in the project that has the same link (it's the twin of the folder)
		// --> this node is the destination node where the toBeMoved node should be moved
		// "moveTo" is a node
		def moveTo = baseFolderNode.find{it.link.uri == uriBuscado}.collect().minus(toSearchMoveTo[0])[0]  //TODO: lo lleva al primero que encuentra. debería llevarlo sólo si hay uno, si hay más debería dar la opción de elegir
		//formats the former "folder" to be a button to help thw user find where the toBeMoved node went in the map to
		//TODO: me parece que la forma como reconoce si es una carpeta o no es algo rebuscada. simplificar.
		if(toSearchMoveTo[0].find{it.link?.uri?.scheme == 'file' && !it.link.file.directory}.size()==1){
			toSearchMoveTo[0].style.name = 'BotonMenu'	
			toSearchMoveTo[0].link.text = '#' + moveTo.id
		}
		// and the moving action itself!!!
		toBeMoved.moveTo(moveTo)
	}
}


// function, returns Node (Base folder) under the selected node
	// the first node which has a link to a file directory and has "file_folder" and "baseFolder" style
def obtainBaseFolder(n) {
	return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}
}

def obtainNewImportsNode(n){
	n.children.find{it.hasStyle('newFolderImport')}
}


// function, returns list of Nodes, (folders in rootPath from selected node)
	// all nodes that have a link to a file directory and have style "file_folder"
def pathToRootFolders(n) {
	return n.pathToRoot.findAll{it.link?.file?.directory && it.hasStyle('file_folder')}
}