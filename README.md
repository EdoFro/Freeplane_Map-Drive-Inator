# Freeplane_Map-Drive-Inator

Map-Drive-Inator (MDI) is a Freeplane Add-on to replicate/coordinate/update a drive's folder structure (with its subfolders and files) with the nodes structure in your mind map (back and forth)

<details><summary>

### Quick starting guide</summary>

<details><summary>Installation</summary>

----
</details><details><summary>First use</summary>

----
</details><details><summary>Basic concepts</summary>

----
</details>

----
</details><details><summary>

### Features</summary>

<details><summary>basic</summary>

video 1: lo básico <https://youtu.be/2vwd38rxAlY>

1. **import folder structure**  <br>you can import the folder structure of any folder in your drive
1. **import only new files and folders**  <br>After the first import, Map-Drive-Inator imports only the new files and folders created in your drive without duplicating the allready existing one.
1. **alerts about missing files**  <br>It alerts if any node links to a deleted or moved file.  <br>For example, if another program deletes, moves or renames a file, then MDI will alert you that a link in a node points to a missing file.
1. **move file from one folder to another**  <br>if you move a 'file' node in your mindmap from one 'folder' node to another, the file gets moved in your drive also
1. **create new folders**  <br>you can create nodes as folders in your map and move file nodes in it. MDI then creates the folders and moves the files into them.
1. **rename files**  <br>if you modify the text of a file node, the file in the drive gets also renamed to this new text
1. **rename folders**  <br>if you modify the text of a folder node, the folder in the drive gets also renamed to this new text
1. **move *outside files* into the project**  <br>if you paste nodes with links to files that are outside of your base folder, MDI move them to their new position in your folder structure
1. use copy of a folder in multiple positions in the map, but has to remain in the same path position.

----
</details><details><summary>other</summary>

video 2: el resto <https://youtu.be/bd30aySucc4>

1. **Can handle clones**:  <br>If you have clones of file or folder nodes in your map, MDI can handle them. If one of them is positioned correctly in the map, MDI understands that this file doesn't need to be moved.
1. **locked**:  <br>You can mark some nodes as 'locked'. That means that MDI **ignores** it and its descendant.
   - **Ignores outside files** and doesn´t move them into the project folder.  <br>You can have nodes with links to files outside your base folder wihout having MDI moving the file form its original drive's position to your base folder.
   - **Ignores folders** and its subfolders and files when looking **in the drive**.  <br>Any 'folder' node marked as locked (or inside a locked node) will be ignored (and its content) when searching for file changes in the drive.
1. **Ignores folders** with name ***starting*** with a ***dot*** (and its subfolders and files when looking in the drive)  <br>example: "**.git**"

----
</details><details><summary>more</summary>

1. **Import folders only**:  <br>Imports the folders structure without the files.<br>This helps at the beginning, before the first full import. So you can define if you want some folders to be ignored (to mark as locked).<br>So you can import only what you want and don't get excess files to manage in your map.
1. **Import timestamps**:  <br>for the selected node and its descendants<br>you can import as attributes following timestamps from your files<br>you can use them to sort, search and filter your nodes
   - lastAccessTime
   - lastModifiedTime
   - creationTime
1. **Sort by timestamps**:  <br>you can sort a node and its descendants by any of the timestamps
   - lastAccessTime
   - lastModifiedTime
   - creationTime
1. **Clear the timestamps**:  <br>for the selected node and its descendants<br>deletes the timestamps attributes in the nodes

----
</details>

----
</details>

