def baseFolderNode = MDI.obtainBaseFolder(node)
if(!baseFolderNode){ return }
def linkType = baseFolderNode? MDI.getLinkType(baseFolderNode) : 0

def fPath = MDI.obtainPathFromMap(node)
println '> fPath: ' + fPath
//return

if(fPath && fPath != ''){
    def texto = node.note?.plain
    println '> texto: \n' +  texto?.take(100) + '\n  ...\n'
    //return
    
    if (texto && texto != ''){
        println '> node.link.uri: ' + node.link.uri
        //return
        if (!node.link.uri){
            def fileName = MDI.correctFileName(node.text)
            println '> fileName: ' + fileName
            //return
            MDI.createPath(fPath)
            def file = new File(fPath + fileName)
            println '> file: ' + file
            //return
            file.text = texto
            MDI.setLink(node, fPath + fileName, linkType)
            node.text = file.name
            MDI.statusInfo('File created')
        } else {
            MDI.statusInfo('selected node has a link already')
        }
    } else {
        MDI.statusInfo('no Note in selected node')
    }
} else {
    MDI.statusInfo('no baseFolder node in pathToRoot from selected node')
}
