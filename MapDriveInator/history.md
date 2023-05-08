# History

## v0.0.14

* timeStamps are not longer added to folder nodes

## v.0.0.13

* Refactoring MapDriveInator for future changes
* Now it marks fileNodes that couldn't be moved in drive
* Added 'notMovedRenamed' style to template mindmap
* Now it controls if the MDI template used in the map is up to date
* It logs which files were moved/renamed and which couldn't be moved/renamed
(in log.0 file)
* Now newImportsNode 's note can show different levels of logging:
  - (0) no log at all
  - (1) Legacy message
  - (2) + Failed actions in drive (default)
  - (3) + Moved/renamed files in drive
  - (4) + Changes made to mindMap
  - (5) + MDI debug info
  - (6) + Elapsed times
  - (7) + Lists calculated to MD-inate
* Correction: MDI doesn't mark already marked nodes to not raise false 'node changed' events in Freeplane
* Better information about new created folders

## v0.0.12

* MapDriveInator: Logs MDI version, Map path, baseFolderNode properties

## v0.0.11

* added getFileFromLink(n) to get to the real file if it is in another drive and link is relative
* umweg to get canonicalPaths from files that are in other drives and have relative links

## v0.0.10

* Changed script condition for "file" style in '**MDI styles template.mm**' to also work with relative file links
* added MDI.version
* added log info to "new imports" node's note
* createFilesFromNotes: ask if extension text is correct
* createFilesFromNotes: request confirmation if file already exists
* MDI.statusInfo() also writes the message into Freeplane's Log
* bug correction: added method getPathFromLink4 that solves issues when file.getCanonicalPath fails

## v0.0.9

* Now it recognizes when link of baseFolder node points to an unexisting file/folder
* some refactoring
* central statusInfo method for MDI
* "create base folder node" can now be used to update baseFolderNode parameters
* changed baseFolderNode note to markdown format

## v0.0.8

* "normalization" command for absolute/relative links
* now default "link type value" is taken form freeplane configuration properties

## v0.0.7

* Test version allowing the use of RELATIVE and ABSOLUTE links

## v0.0.6

* MapDriveInator: nodes with style file_folder, loose this style after the folder is created in drive and they get the link to it
* Bug: ["Allow nodes to have links"](https://github.com/EdoFro/Freeplane_Map-Drive-Inator/issues/15) solved

## v0.0.5

* corrected createFilesFromNotes
* Added 'Import MDI styles'
(without library: only works for users that installed other add-ons that have the `edofro.pseudofreeplaneapi.UserStyles` library.)
* Added exception handling when the mindmap doesn't have MDI styles

## v0.0.4

* Added Template map
* changed obtainBaseFolder logic
* corrected similarity issue
* change folder_node recognition logic

## v0.0.3

* old script version packed as an Add-on
