
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
            def fileName = correctFileName(node.text)
            println '> fileName: ' + fileName
            //return
            MDI.createPath(fPath)
            def file = new File(fPath + fileName)
            println '> file: ' + file
            //return
            file.text = texto
            node.link.file = file
            node.text = file.name
        } else {
            c.statusInfo = 'selected node has a link already'
        }
    } else {
        c.statusInfo = 'no Note in selected node'
    }
} else {
    c.statusInfo = 'no Base folder node in pathToRoot from selected node'
}

def correctFileName(s){
    //TODO: edit text format to get a correct file name string
    // get rid of:
    // /, \ , \n
    def t = s.replace('\n','_').replace('\t','_').replace('/','_').replace('\\','_').replace('__','_')
    return t.toString()
}