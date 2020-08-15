// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

//region: main
def fileAttr = getSortOrder(node)
if(fileAttr){
    sortRecursively(node, fileAttr)
    c.statusInfo= '-------------------- nodes sorted by ' + fileAttr + ' --------------------'
    c.select(node)
} else {
    c.statusInfo= '-------------------- sort action cancelled --------------------'
}
//end

//region: define sort order
def getSortOrder(n){
    switch(selectSortOrder(n)) {
        case '1' :
            return 'lastAccessTime'
            break
        case '2' :
            return 'lastModifiedTime'
            break
        case '3' :
            return 'creationTime'
            break
        default:
            return null
            break
    }
}

def selectSortOrder(n){
    def texto = 'node ${n}\n\nSort by: \n\n  1.- lastAccessTime\n  2.- lastModifiedTime\n  3.- creationTime\n\n'
    def b
    do{
        b = ui.showInputDialog(n.delegate, texto, '1')?.take(1)
    } while (b && (!b.isNumber() || b.toInteger()<=0 ||b.toInteger()>3))
    return b?:0
}
//end 

//region: sorting
def sortRecursively(nodo, attr){
    if(!nodo.leaf){
        sortChildren(nodo, attr)
        nodo.children.each{
            sortRecursively(it, attr)
        }
    } 
}

def sortChildren(n, attr){
    def sorted = new ArrayList(n.children).sort{ it[attr].getDate() }
    def i = 0
    sorted.each {
        it.moveTo(n, i++)
    }
}
//end

