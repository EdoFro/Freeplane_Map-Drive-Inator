
//region: =================== IMPORTING LIBS ===========================
import groovy.transform.EqualsAndHashCode
// import groovy.io.FileType
// import groovy.io.FileVisitResult
import java.text.SimpleDateFormat
import MDI
import java.util.regex.Pattern
//end:

//region: =================== DEFINING CLASSES =========================
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
//end:

def modoDebug = false
//region: =================== MAIN SCRIPT ==============================

    //region: ---------------------- Initial Setup 1 ------------------------------

// c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 1    ';


def tIni = new Date().getTime();
def texto = new StringBuilder();
def textoReport = new StringBuilder();

//---define nodo Base
baseFolderNode = MDI.obtainBaseFolder(node)
    //end: ------------------------------------------------------------------

if(baseFolderNode){
    //region: ---------------------- Initial Setup 2 ------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 2    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Initial Setup 2    ');
    //obtener nodo nueva importación
    nodeNewImports = MDI.obtainNewImportsNode(baseFolderNode)
    if(!nodeNewImports) return 'Interrupted: no MDI styles'
    def visibilizarAvance = MDI.wantToLog(nodeNewImports)
    if(visibilizarAvance) texto.append("\n").append('(elapsed time in miliseconds)').append("\n").append((tIni - new Date().getTime()) as String).append("\n")
    baseFolderNode.style.name = 'baseFolder'
    baseFolderPath = MDI.getPathFromLink(baseFolderNode)
    deleteNodesWithLinkToOther(nodeNewImports)
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
        
    // brought this to before getting the changes done 
    def linkType = MDI.getLinkType(baseFolderNode)
    def nameFilt = MDI.getFilter(baseFolderNode)
    def maxD = MDI.getMaxDepth(baseFolderNode)
    def markMovedOption = MDI.markWhenMoved(baseFolderNode)
    def checkIfBroken = MDI.checkIfReallyBroken(baseFolderNode)

    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end: ------------------------------------------------------------------

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

    //end:   ------------------------------------------------------------------

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
    def xConsistentes   = xSingles.findAll{it.path == it.link}
    def listCons        = xConsistentes.collect{it.link}

    def xInconsistentes = xSingles.findAll{it.path != it.link}
    def listInConsLink  = xInconsistentes.collect{it.link}
    def listInConsPath  = xInconsistentes.collect{it.path}

    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end:

    //region: __________________________- sacar listados desde nodos xClones
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    ');
    if(visibilizarAvance) texto.append("\n").append('saca listados de informacion en nodos xClones').append("\n")

    def xClonesConsistentes = xClones.findAll{it.path == it.link}
    def listClonCons = xClonesConsistentes.collect{it.link}

    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end:

    //region: __________________________- sacar listados drive
    //---saca listados de información en drive --------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    ');
    if(visibilizarAvance) texto.append("\n").append('saca listados de informacion en drive').append("\n")

    listFiles = MDI.listFilesFromDrive(baseFolderNode) 
    
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obteniendo sublistas
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    ');
    if(visibilizarAvance) texto.append("\n").append('obteniendo sublistas').append("\n")

    filesOK       = listFiles.intersect(listCons + listClonCons)  //no se hace nada con esto

    filesNOK      = listFiles - listCons //OJO!! aún incluye algunas que pueden estar ok con nodos clones
    filesNOK      -= listClonCons //quitando las que pueden estar ok con nodos clones 'consistentes'
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

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

    // end:

    //region: __________________________- obtener listado de clones inconsistentes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    ');
    if(visibilizarAvance) texto.append("\n").append('obtener listado de clones inconsistentes').append("\n")

    def xClonesInconsistentes = xClonesPend.findAll{it.path != it.link}
    def listClonInConsLink = xClonesInconsistentes.collect{it.link}
    def listClonInConsPath = xClonesInconsistentes.collect{it.path}

    nSinFileA = listCons - listFiles //1ª parte de nodos sin files
    nodosSinFileA = xConsistentes.findAll{it.link in nSinFileA}

    filesSinNodos = filesNOK - listInConsLink - listInConsPath //restando nodos single inconsistentes
    filesSinNodos -= (listClonInConsLink + listClonInConsPath) //restando nodos clones inconsistentes

    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obteniendo sublistas de xInconsistentes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    ');
    if(visibilizarAvance) texto.append("\n").append('obteniendo sublistas de xInconsistentes').append("\n")
    def xLinkOk = xInconsistentes.findAll{filesNOK.contains(it.link)} //inconsistentes cuyo link apunta a un archivo real
    def xPathOk = xInconsistentes.findAll{filesNOK.contains(it.path)}//inconsistentes cuyo path del mapa apunta a un archivo real

    nodosSinFileB = xInconsistentes - xLinkOk - xPathOk //inconsistentes que no apuntan a ningun archivo. 2ª parte de nodos sin files

    filesNOK2 = filesNOK - xLinkOk*.link.flatten() - xPathOk*.path.flatten()
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

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

    def nodosConFileEnOtraParte = (nodosSinFileB + nodosSinFileC).findAll{new File(it.link).exists()}  //TODO: 
    // ui.informationMessage(nodosConFileEnOtraParte as String)
    def nodosSinFileBC = (nodosSinFileB + nodosSinFileC) - nodosConFileEnOtraParte
    // ui.informationMessage(nodosSinFileBC as String)
    
    nodosSinFile = nodosSinFileA + nodosSinFileBC
    
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")
    // end:

    //region: __________________________- aplicando acciones FILES
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    ');
    if(visibilizarAvance) texto.append('\n aplicando acciones FILES\n')
    
    textoReport
        << 'Inated:   '
        << (new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss").format(new Date()))
        << '\n\n------- Files: -------- '

    //region: _______________________________- nodos sin files       --> marcar nodos como con error
    // c.select( nodosSinFile.collect{ N(it.id)})
    if(modoDebug) ui.showMessage('nodos sin files --> marcar nodos como con error \n\n' + nodosSinFile as String,1)
    // texto.append("\n").append('B) nodos sin files --> marcar nodos como con error \n\n' + nodosSinFile as String)
    textoReport.append("\n ${nodosSinFile.size()} node(s) pointing to unexisting/filtered files (marked as 'broken')")
    
    // def checkIfBroken = MDI.checkIfReallyBroken(baseFolderNode)
    nodosSinFile.each{x ->
        nodo = N(x.id)
        MDI.markAsBroken(nodo,true,checkIfBroken)
    }
    //end:

    //region: _______________________________- path y file coinciden --> corregir links
    // sacar de update folder
    // c.select( (xPathOk + xClonPathOk).collect{ N(it.id)})
    if(modoDebug) ui.showMessage('path y file coinciden --> corregir links \n\n' + (xPathOk + xClonPathOk) as String,1)
    // ui.informationMessage('path y file coinciden --> corregir links \n\n' + (xPathOk + xClonPathOk) as String)
    // texto.append("\n\n").append('path y file coinciden --> corregir links \n\n' + (xPathOk + xClonPathOk) as String)
    textoReport.append("\n ${(xPathOk + xClonPathOk).size()} link(s) corrected in nodes")

    (xPathOk + xClonPathOk).each{x ->
        nodo = N(x.id)
        MDI.setLinkImage(nodo, x.path)
        MDI.setLink(nodo, x.path, linkType) // cambia link del nodo para que apunte a nueva ubicaci?n
        MDI.markAsBroken(nodo,false)
        //if(!nodo.icons.contains('pencil')){nodo.icons.add('pencil')}
    }

    //end:

    //region: _______________________________- files sin nodos       --> importar como nodos
    if(modoDebug) ui.showMessage('A - files sin nodos --> importar como nodos \n\n' + filesSinNodos as String,1)
    // texto.append("\n\n").append('A) files sin nodos --> importar como nodos \n\n' + filesSinNodos as String)
    textoReport.append("\n ${filesSinNodos.size()} new file(s) imported as node(s) ")
    def newFilesImported =  filesSinNodos?true:false
    
    filesSinNodos.each{f ->
        // agregar f a nodo nueva importación
        def nodoDonde = nodeNewImports
        def gPath = baseFolderPath
        (f - baseFolderPath)?.split(Pattern.quote(File.separator)).init().each{String dir ->   //TODO: linux
            // ui.informationMessage('dir   :' + dir as String)
            gPath +=  dir << File.separator  //TODO: linux
            // ui.informationMessage('gPath   :' + gPath as String)
            nodoDonde = nodoDonde.children.find{it.text == dir}?:nodoDonde.createChild()
            if(nodoDonde.text==''){
                nodoDonde.text=dir
            }
            // ui.informationMessage('nodoDonde   :' + nodoDonde as String)
            if(!nodoDonde.link?.file){
                MDI.setLink(nodoDonde, gPath, linkType)
            }
        }
        MDI.setLink(nodoDonde.createChild(f - gPath), f, linkType)
    }



    //end:

    //region: _______________________________- path cambió en mapa   --> ejecutar cambio en disco
    // sacar de update folder
    if(modoDebug) ui.showMessage('xClonLinkOk:\n\n' + xClonLinkOk as String,1)
    xClonLinkOkChosen = MDI.chooseClone(xClonLinkOk)
    if(modoDebug) ui.showMessage('xClonLinkOkChosen:\n\n' + xClonLinkOkChosen as String,1)

    // c.select( (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte).collect{ N(it.id)})
    if(modoDebug) ui.showMessage('C - path cambió en mapa --> ejecutar cambio en disco \n\n' + (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte)as String,1)
    textoReport.append("\n ${(xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte).size()} node(s) moved/renamed in drive")
    
    // def markMovedOption = MDI.markWhenMoved(baseFolderNode)

    (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte).each{x ->
        nodo = N(x.id)
        MDI.createPath(MDI.soloPath(x.path))
        //ui.informationMessage("Nombre inicial:  ${previousFullPath} \n Nombre final  :  ${x.path}")
        def file = new File(x.link)
        file.renameTo( new File(x.path) )
        MDI.setLinkImage(nodo, x.path)
        MDI.setLink(nodo, x.path, linkType) // cambia link del nodo para que apunte a nueva ubicaci?n
        // ui.informationMessage( "el archivo ${file.name} fue reubicado")
        MDI.markAsBroken(nodo,false) 
        MDI.markAsMoved(nodo,true,markMovedOption)
    }

    //end:

    textoReport.append("\n\n")
    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    //end:

    //end:  ------------------------------------------------------------------

    //region: ---------------------- Actualizando Folders ------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Folders    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Folders    ');
    if(visibilizarAvance) texto.append("\n").append('ACTUALIZANDO FOLDERS').append("\n")

    // texto.append((tIni - new Date().getTime()) as String).append("\n")

    textoReport.append('------- Folders: -------- \n')
    textoReport.append(MDI.updateFolders(xFolders.reverse(), linkType)).append("\n\n")

    if(visibilizarAvance) texto.append((tIni - new Date().getTime()) as String).append("\n")

    //end:  ------------------------------------------------------------------

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
        texto.append("\n\nnodosConFileEnOtraParte: \n")
        nodosConFileEnOtraParte?.each{
            texto.append(it.id).append('   ').append(it.path).append('\n\n')
            texto.append('       desde :      ').append(it.link).append('\n')
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
    //end:  ------------------------------------------------------------------

    //region: ---------------------- limpiar variables ----------------------------------

    xSingles               =[]
    xClones                =[]
    xFolders               =[]
    xConsistentes          =[]
    listCons               =[]
    xInconsistentes        =[]
    listInConsLink         =[]
    listInConsPath         =[]
    xClonesConsistentes    =[]
    listClonCons           =[]
    listFiles              =[]
    filesOK                =[]
    filesNOK               =[]
    xClonesPend            =[]
    listClonConsOK         =[]
    xClonesPend1           =[]
    xClonesInconsistentes  =[]
    listClonInConsLink     =[]
    listClonInConsPath     =[]
    nSinFileA              =[]
    nodosSinFileA          =[]
    filesSinNodos          =[]
    xLinkOk                =[]
    xPathOk                =[]
    nodosSinFileB          =[]
    filesNOK2              =[]
    xClonLinkOk            =[]
    xClonPathOk            =[]
    xClonesPend2           =[]
    xClonesPend3           =[]
    nodosSinFileC          =[]
    xClonesPend4           =[]
    nodosSinFile           =[]

    //end:

    //region: ---------------------- Reporte Y Final Main ------------------------------

    if(modoDebug) ui.informationMessage('---------------------- Reporte Y Final Main ------------------------------');
    textoReport.append((((new Date().getTime() - tIni)/100).toInteger()/10) as String).append(" seconds\n\n")
    ui.informationMessage(textoReport.toString())
    textoReport << '=====================================\n\n' << texto
    nodeNewImports.noteText = textoReport
    texto.setLength(0)
    textoReport.setLength(0)
    if (newFilesImported) c.select(nodeNewImports);
    MDI.statusInfo('    -------------   Map-Drive-Inated    -------------      ')
    // c.select(baseFolderNode);
//end:  ------------------------------------------------------------------
}else{
    return
}

//end: ============================== fin: MAIN SCRIPT ============================================================

//region: ---------------------- Armando Listados xFiles
def armaListadoRutas(nodo, String path){
    nodo.children.findAll{!MDI.isLocked(it)}.each{
        //es file?--> agregar a listado
        if(MDI.isLinkToFileOrFolder(it) && !MDI.nodeIsFolder(it)){
            MDI.markAsMoved(it,false)
            if(it.countNodesSharingContent > 0){
                xClones << new xFile(it.id, MDI.getPathFromLink2(it), MDI.getPathFromStrings(path,it.text)) //por qué uso getPathFromLink2 y no la 3 y listo?
            } else {
                xSingles << new xFile(it.id, MDI.getPathFromLink2(it), MDI.getPathFromStrings(path,it.text)) //por qué uso getPathFromLink2 y no la 3 y listo?
            }
        }
        if(MDI.nodeIsFolder(it)){
            MDI.markAsMoved(it,false)
            def pathF = MDI.getFolderpathFromStrings(path,it)
            xFolders << new xFile(it.id, MDI.getPathFromLink3(it,File.separator), pathF) //TODO: linux
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
//end:

//region: ----- funciones a pasar a MDI


def deleteNodesWithLinkToOther(n){
    n.find{it.link?.text?[0] == '#'}*.delete()
}

//end: