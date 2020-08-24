// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import MDI

node.find{MDI.isNew(it)}.each{MDI.markAsNew(it,false)}
