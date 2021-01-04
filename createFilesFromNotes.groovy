// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator"})


def fPath = MDI.obtainPathFromMap(node)

if(fPath && fPath != ''){
    def texto = node.note.plain
    if (texto && texto != ''){
        if (!node.link.uri){
            def fileName = correctFileName(node.text)
            //return fileName
            def file = new File(fPath + fileName)
            //return file
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