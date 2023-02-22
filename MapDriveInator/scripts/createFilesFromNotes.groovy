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
            def extension = fileName.reverse().takeBefore('.').reverse()
            def msg = "The file will be created with ${extension?"'." + extension +"'":'no'} extension\nIs it OK?"
            if(ui.showConfirmDialog(null, msg, 'MDI', 1, 3)!=0){
                MDI.statusInfo('File creation aborted')
                return 'aborted'
            }
            //return
            MDI.createPath(fPath)
            def file = new File(fPath + fileName)
            println '> file: ' + file
            //return
            if( !file.exists() || ui.showConfirmDialog(null, 'File already exists in drive.\nDo you want to overwrite it?', 'MDI', 1, 2)==0 ){
                file.text = texto
                MDI.setLink(node, fPath + fileName, linkType)
                node.text = file.name
                MDI.statusInfo('File created')
            } else {
                MDI.statusInfo('Note not saved in file')
            }
        } else {
            MDI.statusInfo('Selected node has a link already')
        }
    } else {
        MDI.statusInfo('No Note in selected node')
    }
} else {
    MDI.statusInfo('No baseFolder node in pathToRoot from selected node')
}
