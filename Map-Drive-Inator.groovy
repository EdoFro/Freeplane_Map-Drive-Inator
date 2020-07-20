// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

//region: =================== IMPORTING LIBS =========================================================
import groovy.transform.EqualsAndHashCode
import groovy.io.FileType
//end

//region: =================== DEFINING CLASSES =======================================================
@EqualsAndHashCode
class xFile {
	String id
	String link
	String path

    xFile(id, link, path) {          
        this.id = id
        this.link = link
        this.path = path
    }
}
//end

def modoDebug = false
//region: =================== MAIN SCRIPT ============================================================

	//region: ---------------------- Initial Setup 1 ------------------------------

// c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 1    ';


def tIni = new Date().getTime();
def texto = new StringBuilder();
def textoReport = new StringBuilder();
texto.append("\n").append('(elapsed time in miliseconds)').append("\n")
texto.append((tIni - new Date().getTime()) as String).append("\n")

//---define nodo Base
baseFolderNode = obtainBaseFolder(node)
	//end ------------------------------------------------------------------

if(baseFolderNode){
	//region: ---------------------- Initial Setup 2 ------------------------------
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 2    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Initial Setup 2    ');
	texto.append((tIni - new Date().getTime()) as String).append("\n")
	baseFolderNode.style.name = 'baseFolder'
	baseFolderPath = getPathFromLink(baseFolderNode)
	//obtener nodo nueva importación
	nodeNewImports = obtainNewImportsNode(baseFolderNode)
	def visibilizarAvance = wantToLog(nodeNewImports)

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
	//end ------------------------------------------------------------------

	//region: ---------------------- Obteniendo Info En Nodos De Files Y Folders ------------------------------
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Obteniendo Info En Nodos De Files Y Folders    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Obteniendo Info En Nodos De Files Y Folders    ');
	if(visibilizarAvance) texto.append("\n").append('arma Listado de Rutas nodos').append("\n")
	xSingles = []
	xClones = []
	xFolders =[]
	if(modoDebug)  ui.informationMessage("antes de llamar 'armaListadoRutas'")
	armaListadoRutas(baseFolderNode,baseFolderPath)
	if(modoDebug)  ui.informationMessage("después de llamar 'armaListadoRutas'")
	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	//end   ------------------------------------------------------------------

	//region: ---------------------- Actualizando Files ------------------------------
	//region: __________________________- sacar listados desde nodos xSingles
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xSingles    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xSingles    ');
	if(visibilizarAvance) texto.append("\n").append('saca listados de informacion en nodos xSingles').append("\n")

	// //Alternativa 1
	// xConsistentes=[]
	// xInconsistentes=[]
	// xSingles.each{ if(it.path == it.link){xConsistentes << it} else {xInconsistentes << it} }


	//Alternativa 2
	def xConsistentes = xSingles.findAll{it.path == it.link}
	def listCons=xConsistentes.collect{it.link}

	def xInconsistentes = xSingles.findAll{it.path != it.link}
	def listInConsLink = xInconsistentes.collect{it.link}
	def listInConsPath = xInconsistentes.collect{it.path}

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
	//end

	//region: __________________________- sacar listados desde nodos xClones
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    ');
	if(visibilizarAvance) texto.append("\n").append('saca listados de informacion en nodos xClones').append("\n")

	def xClonesConsistentes = xClones.findAll{it.path == it.link}
	def listClonCons = xClonesConsistentes.collect{it.link}

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
	//end

	//region: __________________________- sacar listados drive
	//---saca listados de información en drive --------------------------------
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    ');
	if(visibilizarAvance) texto.append("\n").append('saca listados de informacion en drive').append("\n")

	def myDir = new File(baseFolderPath)
	listFiles = []
	myDir.eachFileRecurse(FileType.FILES) { file ->
		if (file.name.take(2)!='~$'){
			listFiles << file.path
		}
	}

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	// end

	//region: __________________________- obteniendo sublistas
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    ');
	if(visibilizarAvance) texto.append("\n").append('obteniendo sublistas').append("\n")

	filesOK       = listFiles.intersect(listCons + listClonCons)  //no se hace nada con esto

	filesNOK      = listFiles - listCons //OJO!! aún incluye algunas que pueden estar ok con nodos clones
	filesNOK      -= listClonCons //quitando las que pueden estar ok con nodos clones 'consistentes'
	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	// end

	//region: __________________________- obtener listado de clones pendientes
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones pendientes    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones pendientes    ');
	if(visibilizarAvance) texto.append("\n").append('obtener listado de clones pendientes').append("\n")
	xClonesPend = xClones.clone()
	listClonConsOK = listClonCons.intersect(listFiles)
	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	listClonConsOK.each{ ok ->
		def clonId = xClones.find{x -> x.link == ok}.id
		def clones = N(clonId).nodesSharingContent
		def clonesID = clones*.id.flatten() << clonId
		clonesID.each{cID ->
			xClonesPend.removeAll { it.id == cID }
		}
	}
	xClonesPend1 = xClonesPend.clone()

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	// end

	//region: __________________________- obtener listado de clones inconsistentes
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    ');
	if(visibilizarAvance) texto.append("\n").append('obtener listado de clones inconsistentes').append("\n")

	def xClonesInconsistentes = xClonesPend.findAll{it.path != it.link}
	def listClonInConsLink = xClonesInconsistentes.collect{it.link}
	def listClonInConsPath = xClonesInconsistentes.collect{it.path}

	nSinFileA = listCons - listFiles //1ª parte de nodos sin files
	nodosSinFileA = xConsistentes.findAll{nSinFileA.contains(it.link)}

	filesSinNodos = filesNOK - listInConsLink - listInConsPath //restando nodos single inconsistentes
	filesSinNodos -= (listClonInConsLink + listClonInConsPath) //restando nodos clones inconsistentes

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	// end

	//region: __________________________- obteniendo sublistas de xInconsistentes
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    ');
	if(visibilizarAvance) texto.append("\n").append('obteniendo sublistas de xInconsistentes').append("\n")
	def xLinkOk = xInconsistentes.findAll{filesNOK.contains(it.link)} //inconsistentes cuyo link apunta a un archivo real
	def xPathOk = xInconsistentes.findAll{filesNOK.contains(it.path)}//inconsistentes cuyo path del mapa apunta a un archivo real

	nodosSinFileB = xInconsistentes - xLinkOk - xPathOk //inconsistentes que no apuntan a ningun archivo. 2ª parte de nodos sin files

	filesNOK2 = filesNOK - xLinkOk*.link.flatten() - xPathOk*.path.flatten()
	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	// end

	//region: __________________________- obteniendo sublistas de xClonesInconsistentes
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xClonesInconsistentes    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xClonesInconsistentes    ');
	if(visibilizarAvance) texto.append("\n").append('obteniendo sublistas de xClonesInconsistentes').append("\n")
	def xClonLinkOk = xClonesPend.findAll{filesNOK2.contains(it.link)} //inconsistentes cuyo link apunta a un archivo real
	def xClonPathOk = xClonesPend.findAll{filesNOK2.contains(it.path)}//inconsistentes cuyo path del mapa apunta a un archivo real

	xClonLinkOk.each{ ok ->
		clones = N(ok.id).nodesSharingContent
		clonesID = clones*.id.flatten() << ok.id
		clonesID.each{cID ->
			xClonesPend.removeAll { it.id == cID }
		}
	}
	xClonesPend2 = xClonesPend.clone()

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	xClonPathOk.each{ ok ->
		clones = N(ok.id).nodesSharingContent
		clonesID = clones*.id.flatten() << ok.id
		clonesID.each{cID ->
			xClonesPend.removeAll { it.id == cID }
		}
	}
	xClonesPend3 = xClonesPend.clone()

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	nodosSinFileC = []
	while (xClonesPend.size()>0){
		nodosSinFileC << xClonesPend[0]
		clonId = xClonesPend[0].id
		clones = N(clonId).nodesSharingContent
		clonesID = clones*.id.flatten() << clonId
		clonesID.each{cID ->
			xClonesPend.removeAll { it.id == cID }
		}
	}
	xClonesPend4 = xClonesPend.clone()

	nodosSinFile = nodosSinFileA + nodosSinFileB + nodosSinFileC

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
	// end

	//region: __________________________- aplicando acciones FILES
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    ');
	if(visibilizarAvance) texto.append('\n aplicando acciones FILES\n')
	textoReport.append('------- Files: -------- ')

	//region: _______________________________- nodos sin files       --> marcar nodos como con error
	// c.select( nodosSinFile.collect{ N(it.id)})
	// ui.informationMessage('nodos sin files --> marcar nodos como con error \n\n' + nodosSinFile as String)
	// texto.append("\n").append('B) nodos sin files --> marcar nodos como con error \n\n' + nodosSinFile as String)
	textoReport.append("\n ${nodosSinFile.size()} node(s) pointing to unexisting files (marked as 'broken')")

	nodosSinFile.each{x ->
		nodo = N(x.id)
		if(!nodo.icons.contains('broken-line')){nodo.icons.add('broken-line')}
	}
	//end

	//region: _______________________________- path y file coinciden --> corregir links
	// sacar de update folder
	// c.select( (xPathOk + xClonPathOk).collect{ N(it.id)})
	// ui.informationMessage('path y file coinciden --> corregir links \n\n' + (xPathOk + xClonPathOk) as String)
	// texto.append("\n\n").append('path y file coinciden --> corregir links \n\n' + (xPathOk + xClonPathOk) as String)
	textoReport.append("\n ${(xPathOk + xClonPathOk).size()} link(s) corrected in nodes")

	(xPathOk + xClonPathOk).each{x ->
		nodo = N(x.id)
		setLinkImage(nodo, x.path)
		setLink(nodo, x.path) // cambia link del nodo para que apunte a nueva ubicaci?n
		if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
		//if(!nodo.icons.contains('pencil')){nodo.icons.add('pencil')}
	}

	//end

	//region: _______________________________- files sin nodos       --> importar como nodos
	// ui.informationMessage('A - files sin nodos --> importar como nodos \n\n' + filesSinNodos as String)
	// texto.append("\n\n").append('A) files sin nodos --> importar como nodos \n\n' + filesSinNodos as String)
	textoReport.append("\n ${filesSinNodos.size()} new file(s) imported as node(s) ")

	filesSinNodos.each{f ->
		// agregar f a nodo nueva importación
		def nodoDonde = nodeNewImports
		def gPath = baseFolderPath
		(f - baseFolderPath)?.split('\\\\').init().each{String dir ->
			// ui.informationMessage('dir   :' + dir as String)
			gPath +=  dir << '\\'
			// ui.informationMessage('gPath   :' + gPath as String)
			nodoDonde = nodoDonde.children.find{it.text == dir}?:nodoDonde.createChild()
			if(nodoDonde.text==''){
				nodoDonde.text=dir
			}
			// ui.informationMessage('nodoDonde   :' + nodoDonde as String)
			if(!nodoDonde.link?.file){nodoDonde.link.file = new File(gPath)}
		}
		nodoDonde.createChild(f - gPath).link.file = new File(f)
	}



	//end

	//region: _______________________________- path cambió en mapa   --> ejecutar cambio en disco
	// sacar de update folder
	// ui.informationMessage(xClonLinkOk as String)
	xClonLinkOkChosen = chooseClone(xClonLinkOk)
	// ui.informationMessage(xClonLinkOkChosen as String)

	// c.select( (xClonLinkOkChosen + xLinkOk).collect{ N(it.id)})
	// ui.informationMessage('C - path cambió en mapa --> ejecutar cambio en disco \n\n' + (xClonLinkOkChosen + xLinkOk)as String)
	textoReport.append("\n ${(xClonLinkOkChosen + xLinkOk).size()} node(s) moved/renamed in drive")

	(xClonLinkOkChosen + xLinkOk).each{x ->
		nodo = N(x.id)
		createPath(soloPath(x.path))
		// TODO: agregar try catch???
		//ui.informationMessage("Nombre inicial:  ${previousFullPath} \n Nombre final  :  ${x.path}")
		def file = new File(x.link)
		file.renameTo( new File(x.path) )
		setLinkImage(nodo, x.path)
		setLink(nodo, x.path) // cambia link del nodo para que apunte a nueva ubicaci?n
		// ui.informationMessage( "el archivo ${file.name} fue reubicado")
		if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
	}

	//end

	textoReport.append("\n\n")
	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	//end

	//end  ------------------------------------------------------------------

	//region: ---------------------- Actualizando Folders ------------------------------
	// c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Folders    '; 
 	 if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Folders    ');
	if(visibilizarAvance) texto.append("\n").append('ACTUALIZANDO FOLDERS').append("\n")

	// armaListadoFolders(baseFolderNode, baseFolderPath)
	// texto.append((tIni - new Date().getTime()) as String).append("\n")

	foldersToDelete =[]
	textoReport.append('------- Folders: -------- \n')
	textoReport.append(updateFolders(xFolders.reverse())).append("\n\n")

	if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

	//end  ------------------------------------------------------------------

	//region: ---------------------- Visibilizar Avance En Nota De Nodo ------------------------------
	if(visibilizarAvance){
		// c.statusInfo = '    -->   Map-Drive-Inator    --   Visibilizar Avance En Nota De Nodo    ';
		if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Visibilizar Avance En Nota De Nodo    ');
		texto.append("\n").append('visibilizar avance en Nota de nodo').append("\n")
		texto.append("xSingles: \n")
		xSingles?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\nxClones: \n")
		xClones?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\n\nconsistentes: \n")
		xConsistentes?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\n\ninconsistentes: \n")
		xInconsistentes?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\n\nlistCons: \n")
		listCons?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nlistClonCons: \n")
		listClonCons?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nlistInConsLink: \n")
		listInConsLink?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nlistInConsPath: \n")
		listInConsPath?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nlistFiles: \n")
		listFiles?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nfilesOK: \n")
		filesOK?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nfilesNOK: \n")
		filesNOK?.each{
			texto.append(it).append('\n')
		}
		texto.append("\nxClonesPend1: \n")
		xClonesPend1?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\nxClonesPend2: \n")
		xClonesPend2?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\nxClonesPend3: \n")
		xClonesPend3?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\nxClonesPend4: \n")
		xClonesPend4?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\nxClonesPend: \n")
		xClonesPend?.each{
			texto.append(it.path).append('\n')
		}
		texto.append("\n\nnodosSinFileA: \n")
		nodosSinFileA?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nfilesSinNodos: \n")
		filesSinNodos?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nxLinkOk: \n")
		xLinkOk?.each{
			texto.append(it.id).append('   ').append(it.link).append('\n')
		}
		texto.append("\n\nxPathOk: \n")
		xPathOk?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nnodosSinFileB: \n")
		nodosSinFileB?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nfilesNOK2: \n")
		filesNOK2?.each{
			texto.append(it).append('\n')
		}
		texto.append("\n\nxClonLinkOk: \n")
		xClonLinkOk?.each{
			texto.append(it.id).append('   ').append(it.link).append('\n')
		}
		texto.append("\n\nxClonPathOk: \n")
		xClonPathOk?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nnodosSinFileC: \n")
		nodosSinFileC?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nnodosSinFile: \n")
		nodosSinFile?.each{
			texto.append(it.id).append('   ').append(it.path).append('\n')
		}
		texto.append("\n\nxFolders: \n")
		xFolders?.reverse().each{ xF ->
					texto << '\n'
					texto << xF.id << '\n\t'
					texto << xF.link << '\n\t'
					texto << xF.path << '\n'
		}

	}
	//end  ------------------------------------------------------------------

	//region: ---------------------- Reporte Y Final Main ------------------------------

	if(modoDebug) ui.informationMessage('---------------------- Reporte Y Final Main ------------------------------');
	texto.append((tIni - new Date().getTime()) as String).append("\n")
	textoReport << '=====================================\n\n' << texto
	nodeNewImports.noteText = textoReport
	texto.setLength(0)
	textoReport.setLength(0)
	c.select(nodeNewImports);
	c.statusInfo = '    -------------   Map-Drive-Inated    -------------      ';
	// c.select(baseFolderNode);
//end  ------------------------------------------------------------------
}else{
	ui.informationMessage("couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)")
}

//end ============================== fin: MAIN SCRIPT ============================================================

//region: =================== METHODS AND FUNCTIONS ==================================================
//region: ---------------------- Functions Initial Setup
// function, returns Node ("Base folder") under the selected node
def obtainBaseFolder(n) {
	// returns the first node which has a link to a file directory and has style 'file_folder' + 'baseFolder'
	//return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}
	nBase = n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder') && it.hasStyle('baseFolder')}?:(n.link?.file?.directory && n.hasStyle('file_folder'))?n:n.pathToRoot.find{it.link?.file?.directory && it.hasStyle('file_folder')}
	return nBase
}

def obtainNewImportsNode(n){
	def nImp = n.children.find{it.hasStyle('newFolderImport')}?:n.createChild('new imported files')
	nImp.style.name = 'newFolderImport'
	return nImp
}
def wantToLog(n){
	atribName = 'log_MDI'
	if(!n[atribName])n[atribName]='No'
	return n[atribName]==true || [1,'1','true','ok','si','yes','y','ja'].contains(n[atribName].toString().toLowerCase())
}

//end

//region: ---------------------- Armando Listados xFiles
def armaListadoRutas(nodo, String path){
	nodo.children.findAll{!isLocked(it)}.each{
		//es file?--> agregar a listado
		if(isLinkToFile(it) && !nodeIsFolder(it)){
			if(it.countNodesSharingContent > 0){
				xClones << new xFile(it.id, getPathFromLink2(it), getPathFromStrings(path,it.text))
			} else {
				xSingles << new xFile(it.id, getPathFromLink2(it), getPathFromStrings(path,it.text))
			}
		}
		if(nodeIsFolder(it)){
			pathF =getFolderpathFromStrings(path,it)
			xFolders << new xFile(it.id, getPathFromLink3(it,'\\'), pathF) 
			if(it.children.size()>0){
				armaListadoRutas(it, pathF)
			}
		} else {
			if(it.children.size()>0){
				armaListadoRutas(it, path)
			}
		}		
	}
}

// def armaListadoFolders(nodo, String path){
	// nodo.children.findAll{!isLocked(it)}.each{
		// //es folder?--> aplicar cambio
		// if(nodeIsFolder(it)){
			// pathF =getFolderpathFromStrings(path,it)
			// xFolders << new xFile(it.id, getPathFromLink(it), pathF) 
			// if(it.children.size()>0){
				// armaListadoFolders(it, pathF)
			// }
		// } else {
			// if(it.children.size()>0){
				// armaListadoFolders(it, path)
			// }
		// }
	// }
// }

//end

//region: ---------------------- Updating Folders In Drive And Map

// loops all the folders and update them
def updateFolders(xfiles){
	def notMoved = 0
	def unexistent = 0
	def deleted = 0
	def keeped = 0
	def created = 0
	def corrected = 0
	def cloneOK = 0
	xfiles.each{ n ->
		def resultado = updateThisFolder(n)
		switch(resultado) {
			case 'notMoved':
				notMoved++
				break
			case 'noExiste':
				unexistent++
				break
			case 'previousDeleted':
				deleted++
				break
			case 'previousKeeped':
				keeped++
				break
			case 'new':
				created++
				break
			case 'corrected':
				corrected++
				break
			case 'cloneOK':
				cloneOK++
				break
		}
	// ui.informationMessage('resultado: ' + resultado as String)
	}
	//delete folders that couldn't be deleted before
	if (foldersToDelete.size()>0){
			if (foldersToDelete.size()>1){
				def ftdr = foldersToDelete.reverse()
				ftdr.remove(0)
				foldersToDelete.add(ftdr)
				foldersToDelete = foldersToDelete.flatten()
			}
		foldersToDelete.each{
			def a = deleteFolder(it)
			deleted += a
			keeped -= a
		}
	}
	// informationMessage about folder operations
	def Texto=""
	if(created>0){Texto = Texto << "${created} new folders created \n"}
	if(notMoved>0){Texto = Texto << "${notMoved} folders didn't need to be moved \n"}
	if(deleted>0){Texto = Texto << "${deleted} folders were created in new position and deleted in old one \n"}
	if(keeped>0){Texto = Texto << "${keeped} folders were created in new position and keeped in old one because they were not empty \n"}
	if(unexistent>0){Texto = Texto << "${unexistent} folders were not found \n"}
	if(corrected>0){Texto = Texto << "${corrected} links to folders were corrected \n"}
	if(cloneOK>0){Texto = Texto << "${cloneOK} nodes having case: 'mapPosition != drivePosition' but that had Clones that were OK --> they were OK \n"}
	// ui.informationMessage(Texto.toString())
	return (Texto.toString())
}

// updates the position of folder in the drive
def updateThisFolder(xf) {
	def nodo = N(xf.id)
	// c.select(nodo)
	// ui.informationMessage('nodo: ' + nodo as String)
	// ui.informationMessage('xf.link: ' + xf.link as String)
	if(xf.link){
		def file = new File(xf.link)
		// ui.informationMessage('xf.link == xf.path: ' + (xf.link == xf.path) as String)
		if (xf.link != xf.path)		// ?ruta y nombre nuevo y antiguo son diferentes?
		{ 
			// ui.informationMessage('File(xf.link).isDirectory(): ' + file.isDirectory() as String)
			if (file.isDirectory()) 		//	?existe en el lugar que indica su link (y es folderName)?
			{ 
				// ui.informationMessage('hasCloneWhithPositionOK(nodo,true): ' + hasCloneWhithPositionOK(nodo,true) as String)
				if(hasCloneWhithPositionOK(nodo,true)){
					return 'cloneOK'
				} else {
					setLink(nodo, xf.path)  // cambiarle a nuevo link
					if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
					if (deleteFolder(xf.link)==1)
					{
						return 'previousDeleted'
					} else {
						foldersToDelete << xf.link
						return 'previousKeeped'				
					}
				}
			} else {
				file = new File(xf.path)
				// ui.informationMessage('File(xf.path).isDirectory(): ' + file.isDirectory()as String)
				if (file.isDirectory()) 		//	?existe en el lugar que indica su link (y es folderName)?
				{
					//ya existe en posición correcta --> no hacer nada salvo corregir link
					setLink(nodo, xf.path)  // cambiarle a nuevo link
					return 'corrected'
				} else {
					if(!nodo.icons.contains('broken-line')){nodo.icons.add('broken-line')}
					return 'noExiste'
				}
			}
		} else { 
			// ui.informationMessage('File(xf.link).isDirectory(): ' + file.isDirectory() as String)
			if(file.isDirectory()){ //todo ok
				if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
				return 'notMoved'
			} else {	// error: marcar y log	
				if(!nodo.icons.contains('broken-line')){nodo.icons.add('broken-line')}
				return 'noExiste'
			}
		}
	}else {	// si no tiene link --> ponerle link
		createPath(xf.path)
		setLink(nodo, xf.path)
		xf.link = xf.path
		// TODO: debe ir?? :	if(nodo.style.name=='file_folder'){nodo.style.name = null}
		if(nodo.icons.contains('broken-line')){nodo.icons.remove('broken-line')}
		return 'new'
	}
}

//deletes folder
def deleteFolder(folderPath){
	if(isDirEmpty(folderPath)) // revisar si directorio est? vac?o
	{
		def file = new File(folderPath)
		if(!file.delete()){
			sleep(100)
		} //eliminar folderName en disco
		return 1
	} else {
		return 0
	}
}

// end

//region: ---------------------- Información Desde Nodos

def nodeIsFolder(n){
	return n.hasStyle('file_folder')
}

def isLocked(n){
	return n.hasStyle('locked')
}

def isLinkToFile(n){
	//n.link && n.link.uri.scheme =='file' && !isLinkToNodeInAnotherMap(n)  //excludes links to nodes (internal and in an other map)
	// to consider:
		// n.link.file  //includes links to files and folders but excludes links to nodes in other map
		// n.link.uri.scheme =='file' //includes links to files but excludes internal links to nodes in same map
	return (boolean) n.link.file && n.link.uri.scheme =='file'
}

def isLinkToNodeInAnotherMap(n){
	!n.link.file   //Option 1
	//(n.link.uri.path?.reverse().take(3).reverse().toLowerCase() == '.mm' && n.link.uri.fragment?.take(3) =='ID_') //Option2
}

def getPathFromLink(n){
	//return n.link.uri.path.drop(1) as String 
	def lastChar = (n.link.file?.directory || nodeIsFolder(n))?'\\':''
	return (n.link.file?n.link.file.path + lastChar:null)
}

def getPathFromLink2(n,lastChar =''){
	return (n.link.file.path + lastChar)
}
def getPathFromLink3(n,lastChar =''){
	return (n.link.file?n.link.file.path + lastChar:null)
}

//function, returns string, builds the new path string by looking at the position of the node in the mindmap
//it uses all the file-folder styled nodes till the base node
def obtainPathFromMap(n) {
	def texto =''
	while(!n.equals(baseFolderNode)){
		if(n.hasStyle('file_folder')){
			texto = correctFolderName(n) << '\\' << texto
		}
		n = n.parent
	}
	texto = baseFolderPath  << texto
	return texto.toString()
}


//function, boolean, it returns true if the node has a clone which position in disk is equivalent as its position in the map
// when a node linked to a file is cloned in multiple places, not all position in the map will be consistent with its position in the drive.
// Only one of them must be in the right place to consider that all the clones are placed OK
def hasCloneWhithPositionOK(n,isFolder){
	texto = isFolder?'':n.text
	// ui.informationMessage('hasCloneWhithPositionOK \n ' + n.id.toString() + '\n   n.countNodesSharingContent \n ' + n.countNodesSharingContent.toString())
	return n.countNodesSharingContent>0 && n.nodesSharingContent.any{h -> 
			// ui.informationMessage('clon \n ' + h.id.toString() + '\n   getPathFromLink(h) \n ' + getPathFromLink(h).toString() + '\n   (obtainPathFromMap(h) + h.text) \n ' + (obtainPathFromMap(h) + texto).toString())
			getPathFromLink(h) == (obtainPathFromMap(h) + texto) 
		}
}

//end

//region: ---------------------- Funciones Strings
def getPathFromStrings(folderPath,fileName){
	//folderPath.toString() + fileName.toString()
	folderPath + fileName
}

def getFolderpathFromStrings(folderPath,nodo){
	String folderName = correctFolderName(nodo)
	getPathFromStrings(folderPath,folderName) + '\\'
}

def soloPath(fileAddress) {
	fileAddress[0..fileAddress.lastIndexOf('\\')]
}

//function, returns string, looks at text in node and correct it if it can't be used as a foldername
def correctFolderName(n){
	String texto = n.text.trim().replace('/','-').replace('\\','-')//.replace('.','-') //replaces chars not usefull in a Folder name
	if(n.text != texto) n.text = texto//corrects text in node too
	return texto // returns the corrected text
}


//end

//region: ---------------------- Modificando Nodos
//adds a [link to a file] to the node
def setLink(n, addr){
	// ui.informationMessage(addr.toString())
	n.link.file = new File(addr.toString())
}

//corrects link to image in node which is also a file in the project
def setLinkImage(n, addr){
	if(n.externalObject && n.link.file && n.link.text == n.externalObject.uri){
		n.externalObject.file = new File(addr.toString())
	}
}
// end

//region: ---------------------- Manipulando Files En Drive
// create all folders of a path (if they doesn't exist)
def createPath(String p) {
	//ui.informationMessage('createPath ' + p)
	def folders = p.replace('\\','/').split('/')
	//ui.informationMessage(folders.toString())
	def path =''
	folders.each{ String f ->
		path = path << f  << '/'
		createFolder(path.toString())
	}	
}

// create new folder if it doesn't exist
def createFolder(String folderName) {
	def folder = new File(folderName)
	if (!folder.isDirectory()){
		folder.mkdir()
	}
}

// function Boolean - does the link points to an existent file?
def existsInDrive( mylink){
	(mylink.uri?.scheme == 'file' && mylink.file.exists())
}

// function boolean - is directory empty?? 
def isDirEmpty(dirName) {
    def dir = new File(dirName)
    dir.exists() && dir.directory && (dir.list() as List).empty
}

// end

//region: ---------------------- Choosing Clone With 'Better' Path

def chooseClone(xFi){
	xFc = xFi.clone()
	// ui.informationMessage(xFc as String)
	chosenOnes=[]
	
	while (xFc.size()>0){
		clonId = xFc[0].id
		// ui.informationMessage(clonId as String)
		clones = N(clonId).nodesSharingContent
		// ui.informationMessage(clones as String)
		clonesID = clones*.id.flatten() << clonId
		// ui.informationMessage(clonesID as String)
		bestSim=0
		xFc.findAll{clonesID.contains(it.id)}.each{
			// ui.informationMessage(it.link as String)
			// ui.informationMessage(it.path as String)
			sim = similarity(it.path,it.link)
			// ui.informationMessage(sim as String)
			if(bestSim < sim){
				bestSim = sim
				best = it
			}
			// ui.informationMessage(bestSim as String)
		}
		chosenOnes << best
		// ui.informationMessage(chosenOnes as String)
		clonesID.each{cID -> xFc.removeAll { it.id == cID } }
		// ui.informationMessage(xFc as String)
	}
	// ui.informationMessage(chosenOnes as String)
	return chosenOnes
}
// end

//region: ---------------------- Similarity 
  private double similarity(String s1, String s2) {
    if (s1.length() < s2.length()) { // s1 should always be bigger
        String swap = s1; s1 = s2; s2 = swap;
    }
    int bigLen = s1.length();
    if (bigLen == 0) { return 1.0; /* both strings are zero length */ }
    return (bigLen - computeEditDistance(s1, s2)) / (double) bigLen;
  }

  private int computeEditDistance(String s1, String s2) {
    s1 = s1.toLowerCase();
    s2 = s2.toLowerCase();

    int[] costs = new int[s2.length() + 1];
    for (int i = 0; i <= s1.length(); i++) {
        int lastValue = i;
        for (int j = 0; j <= s2.length(); j++) {
            if (i == 0)
                costs[j] = j;
            else {
                if (j > 0) {
                    int newValue = costs[j - 1];
                    if (s1.charAt(i - 1) != s2.charAt(j - 1))
                        newValue = Math.min(Math.min(newValue, lastValue),
                                costs[j]) + 1;
                    costs[j - 1] = lastValue;
                    lastValue = newValue;
                }
            }
        }
        if (i > 0)
            costs[s2.length()] = lastValue;
    }
    return costs[s2.length()];
  }
  
  //end
  
// end ============================== fin: METHODS AND FUNCTIONS ==============================

//region: =================== garbage ================================================================



//end

