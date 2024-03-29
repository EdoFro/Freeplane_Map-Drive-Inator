
//region: =================== IMPORTING LIBS ===========================
import groovy.transform.EqualsAndHashCode
// import groovy.io.FileType
// import groovy.io.FileVisitResult
import java.text.SimpleDateFormat
import MDI
import java.util.regex.Pattern
import org.freeplane.main.addons.AddOnsController
import org.freeplane.core.util.LogUtils

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

//region: =================== MAIN SCRIPT ==============================

    //region: ---------------------- Initial Setup 1 ------------------------------

// c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 1    ';
def modoDebug = false

def logger = LogUtils.getLogger()
def tIni  = new Date().getTime();

def texto       = new StringBuilder();
def log         = new StringBuilder();
def logMoved    = new StringBuilder();
def logNotMoved = new StringBuilder();

def textoReport = new StringBuilder();

def installedVersion = AddOnsController.getController().getInstalledAddOns().find{it.name == 'mapDriveInator'}.version
def mdiVersion = MDI.declaredFields*.name.contains('version')? MDI.version : "< v0.0.10"
if(mdiVersion!=installedVersion) ui.informationMessage(ui.frame,"ATTENTION!\nInstalled MDI addon version is different from MDI library version!",'MDI',2)

def templateOutdated = false
if(!MDI.mapHasMinTemplate(node.map)){
    ui.informationMessage(ui.frame,"ATTENTION!\nMDI styles in this map are outdated.\nPlease reimport MDI styles",'MDI',2)
    templateOutdated = true
}

    //region: --------------------- Log MDI -------------------------------------
log
    << "MDI debug info:\n"
    << " - Installed MDI addon version : ${installedVersion}\n"
    << " - MDI library version         : ${mdiVersion}\n"
    << " - This map's path             : ${node.mindMap.file.path}\n"
logger.info(log.toString())
    //end:
//---define nodo Base
def baseFolderNode = MDI.obtainBaseFolder(node)
    //end: ------------------------------------------------------------------

if(baseFolderNode){
    //region: --------------------- Log baseFolderNode -------------------------------------
    log
        << " - baseFolder's uri path       : ${baseFolderNode.link.uri?.path}\n"
        << " - baseFolder's path           : ${baseFolderNode.link.file?.path}\n"
        << " - baseFolder's absolutePath   : ${baseFolderNode.link.file?.absolutePath}\n"
        << " - baseFolder's canonicalPath  : ${MDI.getFileFromLink(baseFolderNode)?.canonicalPath}\n"
        << " - baseFolderNode attributes:\n"
    baseFolderNode.attributes.map.each{k,v ->
        log << "   | $k : $v\n"
    }
    logger.info(log.toString())

    //end:
    
    //region: ---------------------- Initial Setup 2 ------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Initial Setup 2    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Initial Setup 2    ');
    //obtener nodo nueva importación
    def nodeNewImports = MDI.obtainNewImportsNode(baseFolderNode)
    if(!nodeNewImports) return 'Interrupted: no MDI styles'
    def wantToLogLevel = MDI.wantToLog(nodeNewImports)
    if(wantToLogLevel >= 6) texto.append('\n=====================================\n\n').append('(elapsed time in miliseconds)').append("\n").append((tIni - new Date().getTime()) as String).append("\n")
    if(baseFolderNode.style.name != MDI.styleBaseFolder){baseFolderNode.style.name = MDI.styleBaseFolder}
    baseFolderNode.noteContentType = 'markdown'
    def baseFolderPath = MDI.getPathFromLink(baseFolderNode)
    deleteNodesWithLinkToOther(nodeNewImports)
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")
        
    // brought this to before getting the changes done 
    def nameFilt = MDI.getFilter(baseFolderNode)
    def maxD = MDI.getMaxDepth(baseFolderNode)
    def linkType = MDI.getLinkType(baseFolderNode)
        logger.info( "MDI: - linkType:  ${['absolute','relative'][linkType]}\n")
    def markMovedOption = MDI.markWhenMoved(baseFolderNode)
    def checkIfBroken = MDI.checkIfReallyBroken(baseFolderNode)

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end: ------------------------------------------------------------------

    //region: ---------------------- Obteniendo Info En Nodos De Files Y Folders ------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Obteniendo Info En Nodos De Files Y Folders    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Obteniendo Info En Nodos De Files Y Folders    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('arma Listado de Rutas nodos').append("\n")
    if(modoDebug)  ui.informationMessage("antes de llamar 'armaListadoRutas'")
    xSingles = [] //estos están sin def para que "armaListadoRutas" los pueda ver
    xClones = []
    xFolders =[]
    armaListadoRutas(baseFolderNode, baseFolderPath)
    if(modoDebug)  ui.informationMessage("después de llamar 'armaListadoRutas'")
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    //end:   ------------------------------------------------------------------

    //region: ---------------------- Actualizando Files ------------------------------
    //region: __________________________- sacar listados desde nodos xSingles
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xSingles    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xSingles    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('saca listados de informacion en nodos xSingles').append("\n")

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

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end:

    //region: __________________________- sacar listados desde nodos xClones
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados desde nodos xClones    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('saca listados de informacion en nodos xClones').append("\n")

    def xClonesConsistentes = xClones.findAll{it.path == it.link}
    def listClonCons = xClonesConsistentes.collect{it.link}

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")
    //end:

    //region: __________________________- sacar listados drive
    //---saca listados de información en drive --------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> sacar listados drive    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('saca listados de informacion en drive').append("\n")

    def listFiles = MDI.listFilesFromDrive(baseFolderNode) 
    
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obteniendo sublistas de files
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('obteniendo sublistas').append("\n")

    def filesOK       = listFiles.intersect(listCons + listClonCons)  //no se hace nada con esto

    def filesNOK      = listFiles - (listCons + listClonCons) //quitando las que pueden estar ok con nodos clones 'consistentes'
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obtener listado de clones pendientes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones pendientes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones pendientes    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('obtener listado de clones pendientes').append("\n")
    def listClonConsOK = listClonCons.intersect(listFiles)
    def xClonesPendA = xClones.clone()
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    listClonConsOK.each{ ok ->
        def clonId = xClones.find{x -> x.link == ok}.id
        def clones = N(clonId).nodesSharingContent
        def clonesID = clones*.id.flatten() << clonId //TODO: revisar si debe ser <<, podría ser mejor +
        clonesID.each{cID ->
            xClonesPendA.removeAll { it.id == cID }
        }
    }

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obtener listado de clones inconsistentes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obtener listado de clones inconsistentes    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('obtener listado de clones inconsistentes').append("\n")

    def xClonesInconsistentes = xClonesPendA.findAll{it.path != it.link}
    def listClonInConsLink = xClonesInconsistentes.collect{it.link}
    def listClonInConsPath = xClonesInconsistentes.collect{it.path}

    def nSinFileA = listCons - listFiles //1ª parte de nodos sin files
    def nodosSinFileA = xConsistentes.findAll{it.link in nSinFileA}

    def filesSinNodos = filesNOK - listInConsLink - listInConsPath //restando nodos single inconsistentes
    filesSinNodos -= (listClonInConsLink + listClonInConsPath) //restando nodos clones inconsistentes

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obteniendo sublistas de xInconsistentes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xInconsistentes    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('obteniendo sublistas de xInconsistentes').append("\n")
    def xLinkOk = xInconsistentes.findAll{filesNOK.contains(it.link)} //inconsistentes cuyo link apunta a un archivo real
    def xPathOk = xInconsistentes.findAll{filesNOK.contains(it.path)}//inconsistentes cuyo path del mapa apunta a un archivo real

    def nodosSinFileB = xInconsistentes - xLinkOk - xPathOk //inconsistentes que no apuntan a ningun archivo. 2ª parte de nodos sin files

    def filesNOK2 = filesNOK - xLinkOk*.link.flatten() - xPathOk*.path.flatten()
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    // end:

    //region: __________________________- obteniendo sublistas de xClonesInconsistentes
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xClonesInconsistentes    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> obteniendo sublistas de xClonesInconsistentes    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('obteniendo sublistas de xClonesInconsistentes').append("\n")
    def xClonPathOk = xClonesPendA.findAll{filesNOK2.contains(it.path)}//inconsistentes cuyo path del mapa apunta a un archivo real
    def xClonLinkOk = xClonesPendA.findAll{filesNOK2.contains(it.link)} //inconsistentes cuyo link apunta a un archivo real
    if(modoDebug) ui.showMessage('xClonLinkOk:\n\n' + xClonLinkOk as String,1)
    def xClonLinkOkChosen = MDI.chooseClone(xClonLinkOk)
    if(modoDebug) ui.showMessage('xClonLinkOkChosen:\n\n' + xClonLinkOkChosen as String,1)    


    def xClonesPendB = xClonesPendA.clone()
    xClonLinkOk.each{ ok ->
        def clones = N(ok.id).nodesSharingContent
        def clonesID = clones*.id.flatten() << ok.id
        clonesID.each{cID ->
            xClonesPendB.removeAll { it.id == cID }
        }
    }

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    def xClonesPendC = xClonesPendB.clone()
    xClonPathOk.each{ ok ->
        def clones = N(ok.id).nodesSharingContent
        def clonesID = clones*.id.flatten() << ok.id
        clonesID.each{cID ->
            xClonesPendC.removeAll { it.id == cID }
        }
    }

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    def nodosSinFileC = []
    def xClonesPendD = xClonesPendC.clone()
    while (xClonesPendD.size()>0){
        nodosSinFileC << xClonesPendD[0]
        def clonId = xClonesPendD[0].id
        def clones = N(clonId).nodesSharingContent
        def clonesID = clones*.id.flatten() << clonId
        clonesID.each{cID ->
            xClonesPendD.removeAll { it.id == cID }
        }
    }

    def nodosConFileEnOtraParte = (nodosSinFileB + nodosSinFileC).findAll{new File(it.link).exists()} //lista de nodos que no apuntan a ningún file del baseFolder pero que sí apuntan a nodos existentes en otra parte. (no se incluye nodosSinFileA, porque link apunta dentro de baseFolder (es consistente: link == path)
    // ui.informationMessage(nodosConFileEnOtraParte as String)
    
    def nodosSinFile = (nodosSinFileA + nodosSinFileB + nodosSinFileC) - nodosConFileEnOtraParte
    
    
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")
    // end:

    //region: __________________________- aplicando acciones FILES
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    '; 
    if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Files --> aplicando acciones FILES    ');
    if(wantToLogLevel >= 6) texto.append('\n aplicando acciones FILES\n')
    
    textoReport
        << 'Inated:   '
        << (new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss").format(new Date()))
        << '\n\n------- Files: -------- '
    
    //region: _______________________________- filesOK               --> desmarcar marcas anteriores
    (xConsistentes + xClonesConsistentes).findAll{it.path in filesOK}.each{x ->
        def nodo = N(x.id) 
        MDI.markAsMoved(nodo,false)
        MDI.markAsBroken(nodo,false)
        MDI.markAsNotMoved(nodo,false)
    }

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
        MDI.markAsNotMoved(nodo,false)
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
        (f - baseFolderPath)?.split(Pattern.quote(File.separator)).init().each{String dir ->   
            // ui.informationMessage('dir   :' + dir as String)
            gPath +=  dir << File.separator
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

    // c.select( (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte).collect{ N(it.id)})
    if(modoDebug) ui.showMessage('C - path cambió en mapa --> ejecutar cambio en disco \n\n' + (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte)as String,1)
    
    // def markMovedOption = MDI.markWhenMoved(baseFolderNode)
    
    def iMoved = 0
    def iNotMoved = 0
    

    (xClonLinkOkChosen + xLinkOk + nodosConFileEnOtraParte).each{x ->
        nodo = N(x.id)
        def file = new File(x.link)
        if(MDI.createPath(MDI.soloPath(x.path)) && file.renameTo( new File(x.path) )){ //Returns: true if and only if the renaming succeeded; false otherwise
            MDI.setLinkImage(nodo, x.path)
            MDI.setLink(nodo, x.path, linkType) // cambia link del nodo para que apunte a nueva ubicaci?n
            // ui.informationMessage( "el archivo ${file.name} fue reubicado")
            MDI.markAsBroken(nodo,false)
            MDI.markAsNotMoved(nodo,false)
            MDI.markAsMoved(nodo,true,markMovedOption)
            iMoved++
            logMoved
                << " ${iMoved}. node: ${x.id}\n"
                << "    from: ${x.link}\n"
                << "      to: ${x.path}\n"
        } else {
            if (!templateOutdated) MDI.markAsNotMoved(nodo, true)
            iNotMoved++
            logNotMoved
                << " ${iNotMoved}. node: ${x.id}\n"
                << "    from: ${x.link}\n"
                << "      xx: ${x.path}\n"
        }
    }
    textoReport.append("\n ${iMoved} node(s) moved/renamed in drive")
    textoReport.append("\n ${iNotMoved} node(s) couldn't be moved/renamed in drive (marked as 'notMovedRenamed')")
            
    logger.info(   "MDI: Moved/renamed files in drive: ${iMoved}\n"                  + logMoved.toString()   )
    logger.warning("MDI: 'Couldn't be moved/renamed' files in drive: ${iNotMoved}\n" + logNotMoved.toString())
    
    //end:

    textoReport.append("\n\n")
    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    //end:

    //end:  ------------------------------------------------------------------

    //region: ---------------------- Actualizando Folders ------------------------------
    // c.statusInfo = '    -->   Map-Drive-Inator    --   Actualizando Folders    '; 
     if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Actualizando Folders    ');
    if(wantToLogLevel >= 6) texto.append("\n").append('ACTUALIZANDO FOLDERS').append("\n")

    // texto.append((tIni - new Date().getTime()) as String).append("\n")

    textoReport.append('------- Folders: -------- \n')
    textoReport.append(MDI.updateFolders(xFolders.reverse(), linkType)).append("\n\n")

    if(wantToLogLevel >= 6) texto.append((tIni - new Date().getTime()) as String).append("\n")

    //end:  ------------------------------------------------------------------

    //region: ---------------------- Visibilizar Avance En Nota De Nodo ------------------------------
    if(wantToLogLevel >= 7){
        // c.statusInfo = '    -->   Map-Drive-Inator    --   Visibilizar Avance En Nota De Nodo    ';
        if(modoDebug) ui.informationMessage('    -->   Map-Drive-Inator    --   Visibilizar Avance En Nota De Nodo    ');
        texto << '\n=====================================\n\n'
        texto.append('lists used to calculate ination').append("\n")
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
        texto.append("\n\nlistCons: \n")
        listCons?.each{
            texto.append(it).append('\n')
        }
        texto.append("\n\ninconsistentes: \n")
        xInconsistentes?.each{
            texto << it.path << '  !=   ' << it.link << '\n'
        }
        texto.append("\n\nlistInConsLink: \n")
        listInConsLink?.each{
            texto.append(it).append('\n')
        }
        texto.append("\n\nlistInConsPath: \n")
        listInConsPath?.each{
            texto.append(it).append('\n')
        }
        texto.append("\n\nxClonesConsistentes: \n")
        xClonesConsistentes?.each{
            texto.append(it.path).append('\n')
        }
        texto.append("\n\nlistClonCons: \n")
        listClonCons?.each{
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
        texto.append("\n\nlistClonConsOK: \n")
        listClonConsOK?.each{
            texto.append(it).append('\n')
        }
        texto.append("\nxClonesPendA: \n")
        xClonesPendA?.each{
            texto.append(it.path).append('\n')
        }
        texto.append("\nxClonesInconsistentes: \n")
        xClonesInconsistentes?.each{
            texto << it.path << '  !=   ' << it.link << '\n'
        }
        texto.append("\n\nfilesSinNodos: \n")
        filesSinNodos?.each{
            texto.append(it).append('\n')
        }
        texto.append("\n\nnSinFileA: \n")
        nSinFileA?.each{
            texto.append(it).append('\n')
        }
        texto.append("\n\nnodosSinFileA: \n")
        nodosSinFileA?.each{
            texto.append(it.id).append('   ').append(it.path).append('\n')
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
        texto.append("\n\nxClonPathOk: \n")
        xClonPathOk?.each{
            texto.append(it.id).append('   ').append(it.path).append('\n')
        }
        texto.append("\n\nxClonPathOk: \n")
        xClonPathOk?.each{
            texto.append(it.id).append('   ').append(it.path).append('\n')
        }
        texto.append("\n\nxClonLinkOkChosen: \n")
        xClonLinkOkChosen?.each{
            texto.append(it.id).append('   ').append(it.link).append('\n')
        }
        texto.append("\nxClonesPendB: \n")
        xClonesPendB?.each{
            texto.append(it.path).append('\n')
        }
        texto.append("\nxClonesPendC: \n")
        xClonesPendC?.each{
            texto.append(it.path).append('\n')
        }
        texto.append("\nxClonesPendD: \n")
        xClonesPendD?.each{
            texto.append(it.path).append('\n')
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
    if(wantToLogLevel >= 4){
        texto << '\n=====================================\n\n' << 'Actions in mindmap:\n'
        texto << '\n- nodes without files  --> nodes marked as missing\n'
        nodosSinFile?.each{
            texto << "  - ${it.id}   ${it.path}\n"
        }
        texto << '\n- path in map and file are equal (but node link not)  --> links corrected\n'
        (xPathOk + xClonPathOk)?.each{
            texto << "  - ${it.id}   ${it.path}\n"
        }
        texto << '\n- files without nodes  --> imported as nodes\n'
        (filesSinNodos)?.each{
            texto << "  - ${it}\n"
        }
     }
    //end:  ------------------------------------------------------------------

    //region: ---------------------- limpiar variables ----------------------------------

    xSingles                =[]
    xClones                 =[]
    xFolders                =[]
    xConsistentes           =[]
    listCons                =[]
    xInconsistentes         =[]
    listInConsLink          =[]
    listInConsPath          =[]
    xClonesConsistentes     =[]
    listClonCons            =[]
    listFiles               =[]
    filesOK                 =[]
    filesNOK                =[]
    listClonConsOK          =[]
    xClonesPendA            =[]
    xClonesInconsistentes   =[]
    listClonInConsLink      =[]
    listClonInConsPath      =[]
    nSinFileA               =[]
    nodosSinFileA           =[]
    filesSinNodos           =[]
    xLinkOk                 =[]
    xPathOk                 =[]
    nodosSinFileB           =[]
    filesNOK2               =[]
    xClonPathOk             =[]
    xClonLinkOk             =[]
    xClonLinkOkChosen       =[]
    xClonesPendB            =[]
    xClonesPendC            =[]
    nodosSinFileC           =[]
    xClonesPendD            =[]
    nodosConFileEnOtraParte =[]
    nodosSinFile            =[]

    //end:

    //region: ---------------------- Reporte Y Final Main ------------------------------

    if(modoDebug) ui.informationMessage('---------------------- Reporte Y Final Main ------------------------------')
    textoReport.append((((new Date().getTime() - tIni)/100).toInteger()/10) as String).append(" seconds\n\n")
    
    ui.informationMessage(textoReport.toString())

    if(wantToLogLevel >= 5) textoReport << '\n=====================================\n\n' << log
    if(wantToLogLevel >= 2) textoReport << '\n=====================================\n\n' << (iNotMoved==0?'No failed operation in drive':"${iNotMoved} file(s) couldn't get moved/renamed in drive:\n") << logNotMoved
    if(wantToLogLevel >= 3) textoReport << '\n=====================================\n\n' << "${iMoved==0?'No':iMoved} file(s) were moved/renamed in drive\n" << logMoved
    if(wantToLogLevel >= 4) textoReport << texto

    if(wantToLogLevel >= 1) nodeNewImports.noteText = textoReport
    texto.setLength(0)
    textoReport.setLength(0)
    log.setLength(0)
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
            if(it.countNodesSharingContent > 0){
                xClones << new xFile(it.id, MDI.getPathFromLink2(it), MDI.getPathFromStrings(path,it.text)) //por qué uso getPathFromLink2 y no la 3 y listo?
            } else {
                xSingles << new xFile(it.id, MDI.getPathFromLink2(it), MDI.getPathFromStrings(path,it.text)) //por qué uso getPathFromLink2 y no la 3 y listo?
            }
        }
        if(MDI.nodeIsFolder(it)){
            def pathF = MDI.getFolderpathFromStrings(path,it)
            xFolders << new xFile(it.id, MDI.getPathFromLink3(it,File.separator), pathF)
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