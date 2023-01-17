package edofro.mapdriveinator

//region: imports
import edofro.mapdriveinator.MDI
//end:


class Sync{
//region: public properties
// ver ejemplo en WSE.groovy

//end:

//region: private properties / definitions

//end:

//region:

    def static createBaseFolderNode(nodo)
    {
        def n = MDI.obtainBaseFolder(nodo)
        if (!n)
            return null
        n.style.name = 'baseFolder' // TODO: llevar a constantes
                                    // TODO: marca baseFolder es por style o Atributo??
        def nameFilt = MDI.getFilter(n)
        def maxD     = MDI.getMaxDepth(n) 
        return n
    }

//end:

//region: 

//end:

}
