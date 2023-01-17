package edofro.mapdriveinator

//region: imports
// import groovy.io.FileType
// import groovy.io.FileVisitResult

import org.freeplane.core.ui.components.UITools
// import org.freeplane.plugin.script.proxy.ScriptUtils
//end:


class MDIv2{
//region: public properties
// ver ejemplo en WSE.groovy

//end:

//region: private properties / definitions
    // TODO: constant names must be uppercase using underscore to separate words.
    // TODO: prefixed by a common type name.
    //nodes attributes
    private static final String attrLog             = 'log_MDI'
    private static final String attrMarkWhenMoved   = 'markWhenMoved'
    private static final String attrNameFilter      = 'nameFilter'
    private static final String attrMaxDepth        = 'maxDepth'
    private static final String attrReallyBroken    = 'checkIfReallyBroken'
    //styles
    private static final String styleLocked         = 'locked'
    private static final String styleMovedRenamed   = 'movedRenamed'
    private static final String styleFreshNew       = 'freshNew'
    private static final String styleBroken         = 'missing'
    private static final String styleFolder         = 'file_folder'
    private static final String styleBaseFolder     = 'baseFolder'

//end:

//region:

    //TODO: MDI.obtainBaseFolder(node)
    // function, returns Node ("Base folder") under the selected node
    def static obtainBaseFolder(n) {
        // returns the first node which has a link to a file directory and has style styleFolder + styleBaseFolder
        //return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}

        // def nBase = n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}?:(n.link?.file?.directory && n.hasStyle(styleFolder))?n:n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder)}


        def nBase = n.pathToRoot.find{ it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder) }
        nBase     = nBase ?: (n.link?.file?.directory && n.hasStyle(styleFolder))? n : null
        nBase     = nBase ?: n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder)}
        return nBase
    }

    //TODO: MDI.getFilter(n)
    def static getFilter(n) {
        def attrFilter = attrNameFilter
        def defaultNameFilter = ''
        if(!n.attributes.containsKey(attrFilter)){
            def texto = "\n\n================ MDI =====================\n\nThe import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node: \n\n-----------------------------------------------------\n    -- nameFilter:\n-----------------------------------------------------\n       A filter to perform on the name of traversed files. If set, only files which match are brought. \n        This option allowes four types of inputs:\n           1. nothing (empty) means no filtering (default) \n           2. regex                   - example:       ~/.*\\.mp3/ \n           3. 'simplified' regex    - example:       ~.*\\.mp3 \n           4. string with *          - example:       *.mp3    (equivalent to regex      ~/(?i).*\\.mp3/  )\n           5. list of strings with * and ;         - example:       *.mp3;*.png   (equivalent to regex      ~/(?i)(.*\\.mp3|.*\\.png)/  )\n\n"
            n.note += texto
            // UITools.informationMessage(texto)
            n[attrFilter] = UITools.showInputDialog(n.delegate, texto, defaultNameFilter)?:defaultNameFilter
        }
        def filtro = n[attrFilter]
//        filtro = filtro==''?null
        filtro =            filtro == ''   ? ~/^(?!~\$).*/   // filters office temp files like "~$Libro.xlsx"
                    : filtro[0..1] == '~/' ? ~filtro[2..-2]
                    : filtro[0]    == '~'  ? ~filtro.drop(1)
                    : toRegex(filtro)
        return filtro
    }

    //TODO: MDI.getMaxDepth(n) 
    def static getMaxDepth(n, defaultMaxDepth = -1) {
        def attrFilter = attrMaxDepth
        def onErrorMaxDepth = 0
        if(!n[attrFilter]){
            // n[attrFilter]= defaultMaxDepth
            def texto = "\n\n-----------------------------------------------------\n  -- maxDepth:\n-----------------------------------------------------\n       The maximum number of directory levels when recursing \n        (default is -1 which means no limit, set to 0 for no recursion)\n\n   "
            // UITools.informationMessage(texto)
            n[attrFilter]= UITools.showInputDialog(n.delegate, texto, defaultMaxDepth.toString())?:onErrorMaxDepth.toString()
            n.note += texto
        }
        def maxDepth = n[attrFilter].isNum()?n[attrFilter].num0.toInteger():onErrorMaxDepth
        maxDepth = maxDepth>=-1?maxDepth:onErrorMaxDepth
        n[attrFilter] = maxDepth
        return maxDepth
    }




//end:

//region: 

//end:

}
