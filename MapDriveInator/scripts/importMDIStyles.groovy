import edofro.pseudofreeplaneapi.UserStyles as us

//region: opens template map

    def sep         = File.separator
    def userDir     = c.userDirectory.path
    def mapFileName = "MDI styles template.mm"
    def pathName    = userDir + sep + "templates" + sep + "MapDriveInator" + sep + mapFileName
    //return "Does the file: '${pathName}' exist? :   ${exists(pathName)}"

    def sourceMap   = getMapFromPath(pathName, false) //usar mapa indicado (pero oculto)
    def targetMap   = node.map  // --> active map
    def templateVersion = sourceMap.storage[MDI.MapTemplateVersionStorage] 
    
    if(!MDI.mapHasMinTemplate(sourceMap)){
        //sourceMap   = getMapFromPath(pathName, true) //idea: cargar con vista para que se actualice. pero no sé si será suficiente para leer el valor actualizado durante el mismo script
        ui.showMessage("""The MDI template map hasn't been updated yet.
        It's version is: '${templateVersion}'
        The minimal template version should be '${MDI.minTemplateVersion}'.
        
        If you updated MDI recently, try restarting Freeplane.
        
        MDI styles will be copied into your map using the old version.
        """,2)
    }

    us.copyUserStyles(sourceMap, targetMap) //, {it.text.startsWith('mdi_')})
    
    targetMap.storage[MDI.MapTemplateVersionStorage] = templateVersion

//Other use case examples on how to use edofro.pseudofreeplaneapi.UserStyles.copyUserStyles
/*
    def myString = 'ToM_goto'
    def myList = 'ToM_nextPage,ToM_goto,ToM_showNode'.split(',')
    def myClosure =  {it.text.contains('u')}
    def myClosure2 =  {it.text.startsWith('ToM_')}


    us.copyUserStyles(sourceMap, targetMap, myString)
    us.copyUserStyles(sourceMap, targetMap, myList)
    us.copyUserStyles(sourceMap, targetMap, myClosure)
    us.copyUserStyles(sourceMap, targetMap, myClosure2)
*/

// end:

// region: --------------------------- help methods ------------------------

    def getMapFromPath(filePath, withView){
        if(exists(filePath)){
            def m = c.mapLoader(filePath)
            if(withView) m.withView()
            return m.getMindMap()
        }
    }

    def exists(String path){
        exists(new File(path))
    }

    def exists(File file){
        file.isFile()
    }

// end: