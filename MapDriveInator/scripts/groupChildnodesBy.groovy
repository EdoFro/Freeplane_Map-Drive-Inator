// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/Group"})


//println "------------------------ grouping nodes ------------------------------"

gCases = 'Ext,creation YearMonth,creation Year,lastAccess YearMonth,lastAccess Year,lastModified YearMonth,lastModified Year'.split(',')

nodo = node
def groupingCase = getGroupingCase()
if (groupingCase){
    def nodos =  nodo.children
    def grupos = addGrupos(nodos,[], groupingCase).sort() //creates list of strings with groupTexts. Starts with an empty list
    def groupNodes = createGroupNodes(nodo, grupos, firstWord(groupingCase)) //creates a node for each groupText and adds it to this list
    //moves each node to its corresponding groupNode
    groupNodes.each{gn ->
        def cond = gn.text
        def matchingNodes = nodos.findAll{groupText(it,groupingCase)==cond}
        matchingNodes.each{mn ->
            mn.moveTo(gn)
        }
    }
    MDI.statusInfo(" --- grouped ---")
} else {
    MDI.statusInfo(" --- grouping canceled ---")
}


//----------Methods-----------------------
def getGroupingCase(){
    def texto = new StringBuilder()
    texto << "Select grouping criteria: \n(for time related grouping, 'Get File Timestamps' must have been applied to the branch before)\n\n"
    gCases.eachWithIndex{gC, i ->
        texto <<  i << " - " << gC << '\n'
    }
    texto << '\n\n'

    def cancel = false
    def respOK = false
    def response
    while (!cancel && !respOK){
        response = ui.showInputDialog(node.delegate, texto.toString(),'0')
        cancel = !response?true:false
        respOK = !cancel?response.isNumber() && response.toDouble()>=0 && response.toDouble()< gCases.size()?true:false:false
    }
    response?gCases[response.toDouble().toInteger()]:null
}

//creates list of strings with groupTexts
    //listaNodos: node list to evaluate
    //listaGrupos: list of strings where the new groupTexts must be added
def addGrupos(listaNodos, listaGrupos,gCase){
    listaNodos.each{n ->
        def grupo = groupText(n,gCase)
        if(grupo && grupo !in listaGrupos){
            listaGrupos += grupo
        }
    }
    return listaGrupos
}

//gets group text from a node depending on the defined extracting condition
// in this case the nodes in my map have filenames as their nodetexts and the grouping factor I want to use is the file extension, so, to get the groupText it extracts the substring after the last dot
// for other grouping conditions this method must be changed
def groupText(n,gcond = 'Ext'){
    def response
    switch (gcond.toLowerCase()){
        case 'ext':
            def texto = n.link.file?.name
            def i=texto?.lastIndexOf('.')
            response = i>=1?texto.substring(i+1):null
            break
        case ['creation yearmonth', 'cym']:
            response = n['creationTime']?.getDate()?.toYearMonth()?.toString()?:null
            break
        case ['creation year', 'cy']:
            response = n['creationTime']?.getDate()?.toYear()?.toString()?:null
            break
        case ['lastaccess yearmonth', 'laym']:
            response = n['lastAccessTime']?.getDate()?.toYearMonth()?.toString()?:null
            break
        case ['lastaccess year', 'lay']:
            response = n['lastAccessTime']?.getDate()?.toYear()?.toString()?:null
            break
        case ['lastmodified yearmonth', 'lmym']:
            response = n['lastModifiedTime']?.getDate()?.toYearMonth()?.toString()?:null
            break
        case ['lastmodified year', 'lmy']:
            response = n['lastModifiedTime']?.getDate()?.toYear()?.toString()?:null
            break
        default:
            response = null
            break
    }
    return response?:".noGroup"
}


//returns a list of new nodes added as children to node "n". For each string in "groups" it creates a new node.
def createGroupNodes(n,groups, detailsTxt){
    def nods =[]
    groups.each{g ->
        def gn = n.createChild(g)
        gn.details = detailsTxt
        gn['group'] = true
        nods << gn
    }
    return nods
}

//returns the first word of a string (ok, no, it returns the substring before a space)
def firstWord(s){
    def i=s.indexOf(' ')
    return i>=0?s.substring(0,i):s //if no space then returns the whole string
}

