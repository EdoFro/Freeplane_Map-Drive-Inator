// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/Group"})

/*
for using this script you have two options:
A. the first one is to set a restricted set to the 'group by' attribute. I don't know how to do this automatically, but here are the steps to do it manually:
-setting this script for the first time:
1. execute this script on a node
    - this will add to it a new attribute ("group by")
2. open the Attribute Manager
    - menu Edit / Node Properties / Attribute Manager ...
3. check 'Restricted set' for this attribute
4. click 'Edit' for this attribute (another form opens) 
5. add following strings to its set (one by one. Copy/ Paste taking care not to paste the newline character with it):
Ext
creation YearMonth
creation Year
lastAccess YearMonth
lastAccess Year
lastModified YearMonth
lastModified Year
6. close the 'edit' form
7. click 'Ok' button to close the Attribute Manager

B. the second option is not using a restricted set at all and remember the following options to type them as input everytime you use the script. You can type the options listed before, but you have also the posibility to type their "short versions" (in the same order than before) (upper or undercase, it doesn't matter):
ext 
cYM
cY
LAYM
LAY
LMYM
LMY

*/


//println "------------------------ grouping nodes ------------------------------"

nodo = node
if (nodo['group by'] && nodo['group by'] != ''){
    def groupingCase = nodo['group by']
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
} else {
    nodo['group by'] = ''
    ui.informationMessage ("please select grouping option in node's attribute 'group by'")
}


//----------Methods-----------------------


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
            def i=n.text.lastIndexOf('.')
            response = i>=1?n.text.substring(i+1):null
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

