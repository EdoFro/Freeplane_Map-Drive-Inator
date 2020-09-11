// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/Group"})


nodo = node

def groupNodes =  nodo.children.findAll{n -> n['group']}

groupNodes.each{gN ->
    gN.children.each{n ->
        n.moveTo(nodo)
    }
    gN.delete()
}