# Freeplane_Map-Drive-Inator

Map-Drive-Inator (MDI) is a Freeplane Add-on to replicate/coordinate/update a drive's folder structure (with its subfolders and files) with the nodes structure in your mind map (back and forth)

<details><summary>

### Quick starting guide</summary>

<details><summary>Installing the AddOn</summary>

Installing a new AddOn is very straight forward in Freeplane.

You only need to follow these **simple steps**:

1. Download the [latest release](https://github.com/EdoFro/Freeplane_MarkdownHelper/releases/latest) of the addOn
1. Open it in Freeplane
1. A first dialog will open.<br>!<br>----<br>--- No file found!! ---<br>----
1. Click **Yes** and follow the instructions.
1. Close and reopen Freeplane to complete the installation.

More information about Add Ons and how to install them in Freeplane can be found in the oficial [Freeplane wiki: Add-ons_(install)](https://www.freeplane.org/wiki/index.php/Add-ons_(install)).

----
</details><details><summary>Setting your map up</summary>

The map where you want to use this AddOn needs to have two custom format styles to work properly.

Their names are:

- MarkdownHelperNode
- MarkdownHelperLink

So, you need to add them to your map before using the AddOn on it.

To do that, you have different choises

- import them from a template map
- create them manually

A brief explanation:

# Using the Markdown Helper Template Map

Map templates are an excellent tool to easily format your maps the way you like and to mantain a standarized outlook between them.

Since Freeplane v1.9.0 you have the possibilty to import formats from multiple template maps and assign template maps to be followed. This way you define any change in you base template and all your maps will follow these changes.

## getting the styles

**This AddOn has its own template map that you can find in the user templates folder.**

To add the custom format styles needed for the AddOn to work in your map you have to **follow these steps**

1. open the map you want to work with
1. use the menu command:<br>Format / Manage styles / Copy map styles from ...
1. the "open" dialog appears
1. Select in "Files of type" the option "User templates"<br>!<br>----<br>--- No file found!! ---<br>----
1. Select the Markdown Helper template map in the MarkdownHelper folder and open it.

Now your map have these two new formats adn your ready to go!

## some additional information:

Your map took also the standard formats from the template. If you don't like them you can copy the formats from your own template and the styles will change again, but the custom Styles needed for this AddOn will remain.

I recomend you to make your own templates and that they have all the custom styles you need.

I also recomend you to make a copy of the Markdown Helper template map and modify the styles the way you like them, so you can use this map as your template when using the addon.

Do not use the original template map to customize the styles, because every time the AddOn get updated your customization will beet lost. Not a big deal, but certainly anoying.

# Creating custom Styles manually

The other way is to create the two styles manually.

This may be a better option if you have already created a lot of custom styles or customized the standard styles in the map and you don't have a copy of these styles in a template.

I recomend you to create a template and learn how to use them. They are very useful. But in the meantime you can do this:

## Option A: Create style from selection

This is the simpliest way to crate a new style:

- Add a new node
- Change some format options to the node<br>For example:
   - Node background color
   - Node Text color
   - Node shape
   - Add some icon
- Select the node
- Apply menu command:<br>**Format / Manage Styles / new style from selection**
- Enter **MarkdownHelperNode** as new style's name<br>(*)
- Repeat all again to create the **MarkdownHelperLink** (*) custom style

(*) The names must be written the same as shown here, including upper and lower cases.

## Option B: Edit Styles...

You can create the styles (or modify them) in the "Edit Styles ..." map

It is very similar as the previous procedure: The difference is that you name the style first, when creating the node, and then you do the changes to the node.

- use menu command<br>**Format / Manage Styles / Edit Styles...**
- the styles map opens
- Select a node with a Style to use as starting format
   - for example Details or Attributes
- Right click on it and aselect "new style from selection" option
- Enter **MarkdownHelperNode** as new style's name<br>(*)
- change the format of the new node the way you like
- Repeat all again to create the **MarkdownHelperLink** (*) custom style
- close the editor by clicking the green check icon or by pressing Ctrl + Enter

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

## About Freeplane

[Freeplane](https://www.freeplane.org/wiki/index.php/Home) is a free and open source software application that supports thinking, sharing information and getting things done at work, in school and at home. The software can be used for [mind mapping](https://secure.wikimedia.org/wikipedia/en/wiki/Mind_map) and analyzing the information contained in mind maps. Freeplane runs on any operating system that has a current version of Java installed. It can be run locally or [portably](https://en.wikipedia.org/wiki/Portable_application) from removable storage like an USB drive.

