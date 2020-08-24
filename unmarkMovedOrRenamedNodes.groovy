// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator"})

import MDI

node.find{MDI.isMoved(it)}.each{MDI.markAsMoved(it,false)}

 