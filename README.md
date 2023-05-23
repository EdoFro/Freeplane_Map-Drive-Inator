# Freeplane_Map-Drive-Inator

 A Freeplane's Add-on to coordinate the disk's folder structure with the nodes structure in the mind map (back and forth)
 
 ----
 
## Quick Starting Guide

 Look at [this discussion thread](https://github.com/EdoFro/Freeplane_Map-Drive-Inator/discussions/39) to see an example how it can be used.
 
 All comments are welcommed: they help me improving the documentation.
 
----

## Features


### basic

video 1: lo básico <https://youtu.be/2vwd38rxAlY>

1. **import folder structure**  
you can import the folder structure of any folder in your drive

2. **import only new files and folders**  
After the first import, Map-Drive-Inator imports only the new files and folders created in your drive without duplicating the allready existing one.

3. **alerts about missing files**  
It alerts if any node links to a deleted or moved file.
For example, if another program deletes, moves or renames a file, then MDI will alert you that a link in a node points to a missing file.

4. **move file from one folder to another**  
if you move a 'file' node in your mindmap from one 'folder' node to another, the file gets moved in your drive also

5. **create new folders**  
you can create nodes as folders in your map and move file nodes in it. MDI then creates the folders and moves the files into them.

6. **rename files**  
if you modify the text of a file node, the file in the drive gets also renamed to this new text

7. **rename folders**  
if you modify the text of a folder node, the folder in the drive gets also renamed to this new text

8. **move *outside files* into the project**  
if you paste nodes with links to files that are outside of your base folder, MDI move them to their new position in your folder structure

9. use copy of a folder in multiple positions in the map, but has to remain in the same path position.

____

### other

video 2: el resto <https://youtu.be/bd30aySucc4>  

1. **Can handle clones**:  
If you have clones of file or folder nodes in your map, MDI can handle them. If one of them is positioned correctly in the map, MDI understands that this file doesn't need to be moved.

2. **locked**:  
You can mark some nodes as 'locked'. That means that MDI **ignores** it and its descendant.

   * **Ignores outside files** and doesn´t move them into the project folder.  
You can have nodes with links to files outside your base folder wihout having MDI moving the file form its original drive's position to your base folder.

   * **Ignores folders** and its subfolders and files when looking **in the drive**.  
Any 'folder' node marked as locked (or inside a locked node) will be ignored (and its content) when searching for file changes in the drive.

3. **Ignores folders** with name ***starting*** with a ***dot*** (and its subfolders and files when looking in the drive)  
example: "**.git**"

____

### more

1. **Import folders only**:  
Imports the folders structure without the files.  
This helps at the beginning, before the first full import. So you can define if you want some folders to be ignored (to mark as locked).  
So you can import only what you want and don't get excess files to manage in your map.

2. **Import timestamps**:  
for the selected node and its descendants
you can import as attributes following timestamps from your files  
   * lastAccessTime
   * lastModifiedTime
   * creationTime

   you can use them to sort, search and filter your nodes

3. **Sort by timestamps**:  
you can sort a node and its descendants by any of the timestamps
   * lastAccessTime
   * lastModifiedTime
   * creationTime

4. **Clear the timestamps**:  
for the selected node and its descendants
deletes the timestamps attributes in the nodes
