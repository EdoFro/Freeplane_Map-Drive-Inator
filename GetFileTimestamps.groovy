// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/TimeStamps"})

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;

def nodo = node

nodo.find{MDI.isLinkToFile(it)}.each{n ->
    Path                file    =   Paths.get(n.link.file.getAbsolutePath())
    BasicFileAttributes attr    =   Files.readAttributes(file, BasicFileAttributes.class);
    n['lastAccessTime'] = (attr.lastAccessTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    n['lastModifiedTime'] = (attr.lastModifiedTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    n['creationTime'] = (attr.creationTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
}
