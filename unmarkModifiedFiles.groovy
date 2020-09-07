// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/TimeStamps"})

// ui.informationMessage(node.find{it.attributes.containsKey('modifiedFile')}.size().toString())

// ui.informationMessage(node.find{it['modifiedFile'] == 'true'}.size().toString())

node.find{it.attributes.containsKey('modifiedFile')}.each{it['modifiedFile'] = null}
