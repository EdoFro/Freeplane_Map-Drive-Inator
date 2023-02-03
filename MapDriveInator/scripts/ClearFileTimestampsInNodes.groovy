// @ExecutionModes({ON_SELECTED_NODE="/main_menu/ScriptsEdo/MapDriveInator/TimeStamps"})

// import java.nio.file.Files;
// import java.nio.file.Path;
// import java.nio.file.Paths;
// import java.nio.file.attribute.BasicFileAttributes;


def nodo = node

nodo.find{MDI.isLinkToFileOrFolder(it)}.each{n ->
    // Path                file    =   Paths.get(n.link.file.getAbsolutePath())
    // BasicFileAttributes attr    =   Files.readAttributes(file, BasicFileAttributes.class);
    // n['creationTime'] = (attr.creationTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    // n['lastAccessTime'] = (attr.lastAccessTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    // n['lastModifiedTime'] = (attr.lastModifiedTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    n['creationTime'] = null
    n['lastAccessTime'] = null
    n['lastModifiedTime'] = null
    n['fileSize'] = null
    
}

MDI.statusInfo(' timestamps attributes deleted')
