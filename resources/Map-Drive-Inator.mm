<map version="freeplane 1.11.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Example MAP" FOLDED="false" ID="ID_819943156" CREATED="1590784750245" MODIFIED="1597275276457">
<edge DASH="SOLID"/>
<hook NAME="MapStyle" zoom="0.8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="BotonMenu" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos;}&#xd;
</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos; &amp;&amp; (node.link.file?.exists()? node.link.file.directory : node.link.uri.path?.reverse()[0] == &apos;/&apos;)}&#xd;
</script>
            </script_condition>
        </conditional_style>
    </conditional_styles>
    <properties show_icon_for_attributes="true" mapUsesOwnSaveOptions="true" show_notes_in_map="false" save_modification_times="false" save_last_visited_node="default" show_note_icons="true" save_folding="default" fit_to_viewport="false;"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_1312186908" MAX_WIDTH="300 px" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="as_parent">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1312186908" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Gisha" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#808080" WIDTH="thin"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" COLOR="#006666">
<font NAME="Tahoma" SIZE="7" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#ff9900" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#cc6600"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
<stylenode TEXT="BotonMenu" ICON_SIZE="20 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="baseFolder" ICON_SIZE="20 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ICON_SIZE="20 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="locked" ICON_SIZE="20 pt" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="freshNew" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-1F4C2"/>
</stylenode>
<stylenode TEXT="Organizador">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="missing" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#cc6600">
<icon BUILTIN="emoji-2B55"/>
<font ITALIC="true"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Map-Drive-Inator" POSITION="bottom_or_right" ID="ID_1488840535" CREATED="1589833899017" MODIFIED="1598135166130" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
<node TEXT="UNDER CONSTUCTION" ID="ID_1021111333" CREATED="1597347715234" MODIFIED="1597347780404" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="pencil"/>
<font SIZE="16" BOLD="true"/>
</node>
<node TEXT="Instructions" STYLE_REF="Organizador" ID="ID_1687633798" CREATED="1590789587612" MODIFIED="1598392632977"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      I've tested only in windows. I do`'t know if it runs in other OS.
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Windows
    </p>
  </body>
</html></richcontent>
<node TEXT="UNDER CONSTUCTION" ID="ID_1206466179" CREATED="1597347715234" MODIFIED="1597347780398" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="pencil"/>
<font SIZE="16" BOLD="true"/>
</node>
<node TEXT="first time:" STYLE_REF="Organizador" ID="ID_242771435" CREATED="1590789610801" MODIFIED="1590789623249">
<node TEXT="copy scripts to your scripts folder" ID="ID_1083806285" CREATED="1590789697917" MODIFIED="1607175380304"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        download the ´.groovy´ files and copy it into your ´User Directory´ / Scripts folder
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="To see the images you have to use comand Format / Minimize node" ID="ID_1735978502" CREATED="1607175429429" MODIFIED="1607175545452"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Alt + A
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="open User Directory" ID="ID_1766225359" CREATED="1590804727552" MODIFIED="1607175560741">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="copy lib to your lib folder" FOLDED="true" ID="ID_741141676" CREATED="1590789697917" MODIFIED="1607175320629"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        download the ´MDI.groovy´ file and copy it into your ´User Directory´ / lib folder
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="open User Directory" ID="ID_252880445" CREATED="1590804727552" MODIFIED="1607175572429">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="allow scripts to read and write files" FOLDED="true" ID="ID_1427365019" CREATED="1590790718419" MODIFIED="1607175357623"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Open the preferences dialog in Freeplane

        <ul>
          <li>
            ( menu: Tools / Preferences)
          </li>
        </ul>
      </li>
      <li>
        In the Plugins tab, Scripting section, check the allow file read and the file/write operations options, and OK
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="open Preferences" ID="ID_1408247914" CREATED="1590804727596" MODIFIED="1607175585194">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20003.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="Freeplane scriptspreferences" ID="ID_698032929" CREATED="1590804727613" MODIFIED="1607175594431">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20004.png" SIZE="0.62434965" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="relaunch freeplane" ID="ID_982912135" CREATED="1590789734867" MODIFIED="1590805944229"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        If Freeplane is open --&gt; close it
      </li>
      <li>
        Open Freeplane again.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node TEXT="To work it need to be used with ABSOLUTE links" ID="ID_1437662581" CREATED="1597275889440" MODIFIED="1597275912193"/>
</node>
<node TEXT="importing the folder structure" STYLE_REF="Organizador" ID="ID_1374265871" CREATED="1590792021431" MODIFIED="1597347644141">
<icon BUILTIN="pencil"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      use this map as a template, because it has the <b>user defined styles </b>and <b>conditional styles </b>that are necesary for the script to run correctly
    </p>
  </body>
</html></richcontent>
<node TEXT="copy your base folder to freeplane as a node" ID="ID_1394265874" CREATED="1590792061344" MODIFIED="1590806013157"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        in the Folder Explorer aplication select the folder you want to use as base folder

        <ul>
          <li>
            copy it (Ctrl + c)
          </li>
        </ul>
      </li>
      <li>
        return to freeplane
      </li>
      <li>
        paste it as a node in the position you like
      </li>
      <li>
        you can move it to any position in your map
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="To see the images you have to use comand Format / Minimize node on them" ID="ID_1792082769" CREATED="1607175429429" MODIFIED="1607175732200"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Alt + A
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="copy base folder" ID="ID_966651652" CREATED="1590804727650" MODIFIED="1597275052027" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20006.png" SIZE="0.90361446" NAME="ExternalObject"/>
</node>
<node TEXT="paste base folder" ID="ID_359931643" CREATED="1590804727670" MODIFIED="1597275056798" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20007.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="select it" ID="ID_123446570" CREATED="1590792160606" MODIFIED="1590806021353"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &nbsp;ehh, just that. select it
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node TEXT="TODO:" ID="ID_1110214878" CREATED="1597275114156" MODIFIED="1597347640503">
<icon BUILTIN="pencil"/>
</node>
</node>
<node TEXT="organizing it" STYLE_REF="Organizador" ID="ID_1011171624" CREATED="1590792542264" MODIFIED="1590792589833">
<node TEXT="creating new folders" ID="ID_958877563" CREATED="1590794551926" MODIFIED="1679342134142"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        create new node (no . (dot) in its text)
      </li>
      <li>
        format it as 'file_folder' style

        <ul>
          <li>
            menu ´Format´ / ´Apply Style´ / ´file_folder´
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="To see the images you have to use comand Format / Minimize node on them" ID="ID_1120260851" CREATED="1607175429429" MODIFIED="1607175732200"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Alt + A
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="assign &apos;file_folder&apos; style 1" ID="ID_1270988197" CREATED="1590807331427" MODIFIED="1679342178015">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20012.png" SIZE="0.9433962" NAME="ExternalObject"/>
</node>
<node TEXT="assign &apos;file_folder&apos; style 3" ID="ID_1814807565" CREATED="1590807331481" MODIFIED="1679342139651" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20011.png" SIZE="0.7444169" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="moving the files nodes to the new folders" ID="ID_1158196008" CREATED="1590794576394" MODIFIED="1590806145410"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        take it with the mouse and move it to their new position
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="move &apos;files&apos; nodes into new &apos;folders&apos;" ID="ID_778559080" CREATED="1590807678966" MODIFIED="1597347693789" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20013.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="adding other nodes / notes / details" ID="ID_1625194663" CREATED="1590794561668" MODIFIED="1590806309424"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        you can add other nodes. and use them to classify or add information
      </li>
      <li>
        the script just looks after

        <ul>
          <li>
            nodes having links to files or folders
          </li>
          <li>
            or nodes having the 'file_folder' style.
          </li>
        </ul>
      </li>
      <li>
        all other nodes are ignored
      </li>
      <li>
        notes and details are also ignored
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="adding nodes, notes, details" ID="ID_1090104357" CREATED="1590808387849" MODIFIED="1597347700784" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20014.png" SIZE="0.9118541" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="changing files names" ID="ID_231729277" CREATED="1590794639542" MODIFIED="1597275176593"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        you can also change files names: you just need to change its node text.
      </li>
      <li>
        beware not to change its file extension
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="renaming files" ID="ID_1420984609" CREATED="1590808632297" MODIFIED="1597347706168" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20015.png" SIZE="0.9917355" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="update the files and folders in your disk" STYLE_REF="Organizador" ID="ID_1182392227" CREATED="1590794661092" MODIFIED="1597275212745"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        select a node inside the <b>base folder</b>&nbsp;tree
      </li>
      <li>
        run the script in the menu <b>Scripts Edo</b>&nbsp;/ <b>Organizar Mapa</b>&nbsp;/ <b>Updates Folders Like Map</b>

        <ul>
          <li>
            you can also&nbsp;select a node inside the <b>base folder</b>&nbsp;tree and then click the button in the &quot;<b>update Folders</b>&quot; node in the left of the map (take care not to select this node when trying to click its button)
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="add new Styles" STYLE_REF="Organizador" FOLDED="true" ID="ID_1687318378" CREATED="1592838662490" MODIFIED="1597274889477"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      for other maps
    </p>
  </body>
</html></richcontent>
<node TEXT="for each new Style:" STYLE_REF="Organizador" ID="ID_1129119163" CREATED="1592841393949" MODIFIED="1597274555413">
<node TEXT="select the muster node" ID="ID_587062624" CREATED="1592839717618" MODIFIED="1597274588878" NUMBERED="true">
<node TEXT="BotonMenu" ID="ID_416745702" CREATED="1592084803981" MODIFIED="1592842172343" ICON_SIZE="24 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="baseFolder" ID="ID_504531478" CREATED="1592084803981" MODIFIED="1592842324991" ICON_SIZE="24 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="newFolderImport" ID="ID_668585828" CREATED="1592084803981" MODIFIED="1592842324984" ICON_SIZE="24 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="locked" ID="ID_895342247" CREATED="1593212701967" MODIFIED="1597273698831" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px" BORDER_DASH="DASHES">
<icon BUILTIN="emoji-1F512"/>
</node>
<node TEXT="freshNew" ID="ID_1793616985" CREATED="1593213107807" MODIFIED="1597273552453" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</node>
<node TEXT="movedRenamed" ID="ID_263862093" CREATED="1595525991989" MODIFIED="1597273528771" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</node>
<node TEXT="file" ID="ID_472260282" CREATED="1593213292935" MODIFIED="1593214118016" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</node>
<node TEXT="file_folder" ID="ID_796157526" CREATED="1593214180238" MODIFIED="1593214523143" ICON_SIZE="12 pt" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-1F4C2"/>
</node>
<node TEXT="missing" ID="ID_1520632540" CREATED="1597422561327" MODIFIED="1597422654970" BORDER_WIDTH="3 px" BACKGROUND_COLOR="#f28bb3">
<icon BUILTIN="broken-line"/>
</node>
<node TEXT="modifiedFile" ID="ID_394158838" CREATED="1599251325090" MODIFIED="1599251800834" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#cc6600">
<icon BUILTIN="emoji-2B55"/>
<font ITALIC="true"/>
</node>
</node>
<node TEXT="Ctrl + C" ID="ID_21737143" CREATED="1592840130776" MODIFIED="1592840139065" NUMBERED="true"/>
<node TEXT="apply new style from selection" ID="ID_1600968769" CREATED="1592839759108" MODIFIED="1597274597913" LINK="menuitem:_NewUserStyleAction" NUMBERED="true">
<node TEXT="take care with trailing spaces when pasting the name" ID="ID_1384968396" CREATED="1597274618871" MODIFIED="1597274646912"/>
</node>
<node TEXT="testing nodes" ID="ID_1206257270" CREATED="1592841576802" MODIFIED="1597274679628"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí se debería reflejar si el estilo se cargó correctamente
    </p>
  </body>
</html></richcontent>
<node TEXT="BotonMenu" STYLE_REF="BotonMenu" ID="ID_1221516433" CREATED="1592839269082" MODIFIED="1592839595822"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="baseFolder" STYLE_REF="baseFolder" ID="ID_1251497248" CREATED="1592839269082" MODIFIED="1592839621855"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="newFolderImport" STYLE_REF="newFolderImport" ID="ID_840043894" CREATED="1592839269082" MODIFIED="1592839607623"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="locked" STYLE_REF="locked" ID="ID_1964858331" CREATED="1593212005397" MODIFIED="1597273572997"/>
<node TEXT="freshNew" STYLE_REF="freshNew" ID="ID_87124226" CREATED="1593213236294" MODIFIED="1593213249604"/>
<node TEXT="movedRenamed" STYLE_REF="movedRenamed" ID="ID_1167577854" CREATED="1595526352759" MODIFIED="1595526365006"/>
<node TEXT="file" STYLE_REF="file" ID="ID_1716171840" CREATED="1593213432726" MODIFIED="1593213439198"/>
<node TEXT="file_folder" STYLE_REF="file_folder" ID="ID_1057732732" CREATED="1593214134748" MODIFIED="1593214153053"/>
<node TEXT="missing" STYLE_REF="missing" ID="ID_452128965" CREATED="1597422759657" MODIFIED="1597422798947"/>
<node TEXT="modifiedFile" STYLE_REF="modifiedFile" ID="ID_1247796190" CREATED="1599251835635" MODIFIED="1599251860762"/>
</node>
</node>
<node TEXT="if you want:" STYLE_REF="Organizador" ID="ID_356028967" CREATED="1592841407318" MODIFIED="1597274711148">
<node TEXT="increase Icons size in Styles map" ID="ID_1058152691" CREATED="1592840320648" MODIFIED="1597274768084" LINK="menuitem:_EditStylesAction">
<node TEXT="--&gt;    20 to 28 pts" ID="ID_1171454872" CREATED="1592840412977" MODIFIED="1597274728788"/>
</node>
</node>
<node TEXT="add conditional styles in the Map:" ID="ID_1845585598" CREATED="1592841434865" MODIFIED="1597274798702" LINK="menuitem:_ManageConditionalStylesAction">
<node TEXT="BotonMenu" ID="ID_1908810167" CREATED="1592841512550" MODIFIED="1592841517532">
<node TEXT="Hyperlink Contains &quot;menuitem:&quot;" ID="ID_371993844" CREATED="1592841311706" MODIFIED="1592841341639"/>
</node>
<node TEXT="file" ID="ID_1625675193" CREATED="1593213451397" MODIFIED="1593213453572">
<node TEXT="Script filter :" ID="ID_1251136012" CREATED="1593212822947" MODIFIED="1593212822947">
<node TEXT="{node.link?.uri?.scheme == &apos;file&apos;}" ID="ID_189147934" CREATED="1593213496688" MODIFIED="1593213507250"/>
</node>
</node>
<node TEXT="file_folder" ID="ID_379415549" CREATED="1593212811188" MODIFIED="1593212811188">
<node TEXT="Script filter :" ID="ID_594856239" CREATED="1593212822947" MODIFIED="1593212822947">
<node TEXT="{node.link?.uri?.scheme == &apos;file&apos; &amp;&amp; (node.link.file?.exists()? node.link.file.directory : node.link.uri.path?.reverse()[0] == &apos;/&apos;)}" ID="ID_656365850" CREATED="1593212830874" MODIFIED="1593212830874"/>
</node>
</node>
<node TEXT="modifiedFile" ID="ID_1080248109" CREATED="1599329840839" MODIFIED="1599329876554">
<node TEXT="modifiedFile Contains &quot;true&quot;" ID="ID_1458055973" CREATED="1599329840834" MODIFIED="1599329876562"/>
</node>
</node>
<node TEXT="Temp Script" ID="ID_1837970204" CREATED="1597275496080" MODIFIED="1597275496098"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      I write something here
    </p>
    <p>
      
    </p>
    <p>
      Hello world
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Actions:" STYLE_REF="Organizador" FOLDED="true" ID="ID_1321530167" CREATED="1590503364731" MODIFIED="1597274086662" NUMBERED="true">
<node TEXT="Create BaseFolder Node" ID="ID_1941122703" CREATED="1598135040614" MODIFIED="1598135093458" LINK="menuitem:_CreateBaseFolderNode_on_single_node"/>
<node TEXT="Import Just Folders" ID="ID_301694900" CREATED="1597423437025" MODIFIED="1597423471054" LINK="menuitem:_ImportJustFolders_on_single_node"/>
<node TEXT="MAP-DRIVE-INATOR" ID="ID_1022693340" CREATED="1594333825266" MODIFIED="1598135242403" LINK="menuitem:_Map-Drive-Inator_on_single_node" BACKGROUND_COLOR="#ab2b59"/>
<node TEXT="Distribute New Nodes" ID="ID_462223382" CREATED="1590503514564" MODIFIED="1597274444903" LINK="menuitem:_DistributeNewNodes_on_single_node"/>
<node TEXT="Check missing File Nodes" ID="ID_1445454111" CREATED="1599247587525" MODIFIED="1599247610261" LINK="menuitem:_CheckMissingFileNodes_on_single_node"/>
<node TEXT="selected node&#xa; and its descendants" STYLE_REF="Organizador" ID="ID_1808490451" CREATED="1597445677095" MODIFIED="1597452205549">
<node TEXT="TimeStamps" STYLE_REF="Organizador" ID="ID_746484724" CREATED="1599247306575" MODIFIED="1599247516858">
<node TEXT="Get file timestamps" ID="ID_426177707" CREATED="1597445579923" MODIFIED="1597445666648" LINK="menuitem:_GetFileTimestamps_on_selected_node"/>
<node TEXT="Clear file timestamps in nodes" ID="ID_871470913" CREATED="1597445587207" MODIFIED="1597445777909" LINK="menuitem:_ClearFileTimestampsInNodes_on_selected_node"/>
<node TEXT="Sort by timestamp" ID="ID_1034853517" CREATED="1597445588339" MODIFIED="1597446361495" LINK="menuitem:_SortByTimestamp_on_single_node"/>
<node TEXT="Unmark Modified Files" ID="ID_628638023" CREATED="1599247445121" MODIFIED="1599494058354" LINK="menuitem:_UnmarkModifiedFiles_on_selected_node"/>
</node>
<node TEXT="clear formats" STYLE_REF="Organizador" ID="ID_1386472999" CREATED="1599247312883" MODIFIED="1599247516861">
<node TEXT="Unmark moved or renamed nodes" ID="ID_70820238" CREATED="1599247403149" MODIFIED="1599247491307" LINK="menuitem:_UnmarkMovedOrRenamedNodes_on_selected_node"/>
<node TEXT="Unmark new nodes" ID="ID_1223608095" CREATED="1599247418737" MODIFIED="1599247509341" LINK="menuitem:_UnmarkNewNodes_on_selected_node"/>
<node ID="ID_1858490962" TREE_ID="ID_628638023"/>
</node>
</node>
<node TEXT="to node" STYLE_REF="Organizador" ID="ID_167372529" CREATED="1599247370672" MODIFIED="1599247526811">
<node TEXT="give node &apos;file_folder&apos; style" STYLE_REF="file_folder" ID="ID_815319331" CREATED="1590806506996" MODIFIED="1592082554300" LINK="menuitem:_AssignStyleAction.file_folder" MAX_WIDTH="250 px" MIN_WIDTH="250 px"/>
<node TEXT="give node &apos;locked&apos; style" ID="ID_1595957319" CREATED="1596484461314" MODIFIED="1596484513782" LINK="menuitem:_AssignStyleAction.locked" MAX_WIDTH="250 px" MIN_WIDTH="250 px">
<icon BUILTIN="emoji-1F512"/>
</node>
</node>
<node TEXT="group" STYLE_REF="Organizador" ID="ID_107087638" CREATED="1599865650349" MODIFIED="1599865656847">
<node TEXT="group Childnodes by" ID="ID_1632882073" CREATED="1599865658135" MODIFIED="1599866212386" LINK="menuitem:_GroupChildnodesBy_on_selected_node"/>
<node TEXT="ungroup Childnodes" ID="ID_1037285901" CREATED="1599865676125" MODIFIED="1599866234649" LINK="menuitem:_UngroupChildnodes_on_selected_node"/>
</node>
</node>
</node>
<node TEXT="Features" POSITION="bottom_or_right" ID="ID_1933019455" CREATED="1597336293381" MODIFIED="1597336813997" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
<node TEXT="basic" STYLE_REF="Organizador" FOLDED="true" ID="ID_916161454" CREATED="1597337606934" MODIFIED="1597452217797">
<node TEXT="video 1" ID="ID_1939874482" CREATED="1597346952852" MODIFIED="1597346956474">
<node TEXT="lo básico" ID="ID_1757220682" CREATED="1597346968785" MODIFIED="1597346975184" LINK="https://youtu.be/2vwd38rxAlY"/>
</node>
<node TEXT="import folder structure" ID="ID_893737363" CREATED="1597337330399" MODIFIED="1597452247973" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="you can import the folder structure of any folder in your drive" ID="ID_508140405" CREATED="1597447897026" MODIFIED="1597447941760"/>
</node>
<node TEXT="import only new files and folders" ID="ID_115058096" CREATED="1597337362549" MODIFIED="1597452248021" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="After the first import, Map-Drive-Inator imports only the new files and folders created in your drive without duplicating the allready existing one." ID="ID_1849562988" CREATED="1597447945011" MODIFIED="1597448081563"/>
</node>
<node TEXT="alerts about missing files" ID="ID_1917116963" CREATED="1597339003984" MODIFIED="1597452248055" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="It alerts if any node links to a deleted or moved file." ID="ID_1077141148" CREATED="1597448085831" MODIFIED="1597448156723"/>
<node TEXT="For example, if another program deletes, moves or renames a file, then MDI will alert you that a link in a node points to a missing file." ID="ID_1501941095" CREATED="1597448158588" MODIFIED="1597448316527"/>
</node>
<node TEXT="move file from one folder to another" ID="ID_1657805577" CREATED="1597337385547" MODIFIED="1597452248082" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="if you move a &apos;file&apos; node in your mindmap from one &apos;folder&apos; node to another, the file gets moved in your drive also" ID="ID_1861751704" CREATED="1597448342653" MODIFIED="1597448703837"/>
</node>
<node TEXT="create new folders" ID="ID_984455598" CREATED="1597337406604" MODIFIED="1597452248114" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="you can create nodes as folders in your map and move file nodes in it. MDI then creates the folders and moves the files into them." ID="ID_1135344312" CREATED="1597448756680" MODIFIED="1597448821859"/>
</node>
<node TEXT="rename files" ID="ID_1156580523" CREATED="1597337423991" MODIFIED="1597452248135" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="if you modify the text of a file node, the file in the drive gets also renamed to this new text" ID="ID_1076188117" CREATED="1597448825127" MODIFIED="1597448900544"/>
</node>
<node TEXT="rename folders" ID="ID_120642634" CREATED="1597337431883" MODIFIED="1597452248148" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="if you modify the text of a folder node, the folder in the drive gets also renamed to this new text" ID="ID_610792282" CREATED="1597448825127" MODIFIED="1597448921673"/>
</node>
<node TEXT="move outside files into the project" ID="ID_1675560792" CREATED="1597337502759" MODIFIED="1597452248162" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="if you paste nodes with links to files that are outside of your base folder, MDI move them to their new position in your folder structure" ID="ID_1597509970" CREATED="1597448926581" MODIFIED="1597449056008"/>
</node>
<node TEXT="use copy of a folder in multiple positions in the map, but has to remain in the same path position" ID="ID_1651169814" CREATED="1597337789916" MODIFIED="1597452248171" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
</node>
<node TEXT="other" STYLE_REF="Organizador" FOLDED="true" ID="ID_1743927001" CREATED="1597337666186" MODIFIED="1597452217811">
<font STRIKETHROUGH="false"/>
<node TEXT="video 2" ID="ID_841866417" CREATED="1597347161697" MODIFIED="1597347165010">
<node TEXT="el resto" ID="ID_1187409569" CREATED="1597347167450" MODIFIED="1597347175477" LINK="https://youtu.be/bd30aySucc4"/>
</node>
<node TEXT="can handle clones" ID="ID_550697123" CREATED="1597337673551" MODIFIED="1597452273710" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="if you have clones of file or folder nodes in your map, MDI can handle them. If one of them is positioned correctly in the map, MDI understands that this file doesn&apos;t need to be moved" ID="ID_698551375" CREATED="1597449186268" MODIFIED="1597451161851"/>
</node>
<node TEXT="locked" ID="ID_1866219877" CREATED="1597336926216" MODIFIED="1597452273743" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ignore nodes in it
    </p>
  </body>
</html></richcontent>
<node TEXT="you can mark some nodes as &apos;locked&apos;. That means that MDI ignores it and its descendant." ID="ID_1653018271" CREATED="1597451193472" MODIFIED="1597451367785"/>
<node TEXT="ignores outside files and doesn´t move them into the project folder" ID="ID_1931119002" CREATED="1597337957596" MODIFIED="1597347396757" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="you can have nodes with links to files outside your base folder wihout having MDI moving the file form its original drive&apos;s position to your base folder." ID="ID_1337052967" CREATED="1597451378657" MODIFIED="1597451601733">
<node TEXT="this way you can avoid this" ID="ID_1800171867" CREATED="1597451626292" MODIFIED="1597451664584">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1597509970" STARTINCLINATION="332.99999 pt;0 pt;" ENDINCLINATION="332.99999 pt;0 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
</node>
<node TEXT="ignores folders and its subfolders and files when looking in the drive" ID="ID_1674185783" CREATED="1597337999248" MODIFIED="1597347396764" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<node TEXT="any &apos;folder&apos; node marked as locked (or inside a locked node) will be ignored (and its content) when searching for file changes in the drive" ID="ID_746839135" CREATED="1597451675680" MODIFIED="1597451804436"/>
</node>
</node>
<node TEXT="ignores folders with name starting with a dot (and its subfolders and files when looking in the drive)&#xa;example: &quot;.git&quot;" ID="ID_1343452811" CREATED="1597337999248" MODIFIED="1597452273752" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
</node>
<node TEXT="more:" STYLE_REF="Organizador" FOLDED="true" ID="ID_1047604820" CREATED="1597446614477" MODIFIED="1597452217816">
<node TEXT="Import folders only" ID="ID_345705392" CREATED="1597446635398" MODIFIED="1597452273760" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT="imports the folders structure without the files" ID="ID_1717110614" CREATED="1597446766430" MODIFIED="1597446792528"/>
<node TEXT="This helps at the beginning, before the first full import. So you can define if you want some folders to be ignored (to mark as locked)" ID="ID_1936711595" CREATED="1597446794196" MODIFIED="1597452356495">
<icon BUILTIN="messagebox_warning"/>
</node>
<node TEXT="so you can import only what you want and don&apos;t get excess files to manage in your map" ID="ID_645702854" CREATED="1597446986051" MODIFIED="1597452393673"/>
</node>
<node TEXT="import timestamps" ID="ID_1836261839" CREATED="1597447266628" MODIFIED="1597452273780" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT="for the selected node and its descendants" ID="ID_1364816807" CREATED="1597447483708" MODIFIED="1597447503154"/>
<node TEXT="you can import as attributes following timestamps from your files" ID="ID_591952294" CREATED="1597447276185" MODIFIED="1597447302574">
<node TEXT="lastAccessTime" ID="ID_204841025" CREATED="1597447320479" MODIFIED="1597447320479"/>
<node TEXT="lastModifiedTime" ID="ID_1910453294" CREATED="1597447325148" MODIFIED="1597447325148"/>
<node TEXT="creationTime" ID="ID_1868439804" CREATED="1597447330003" MODIFIED="1597447330003"/>
</node>
<node TEXT="you can use them to sort, search and filter your nodes" ID="ID_1736997860" CREATED="1597447339271" MODIFIED="1597447390432"/>
<node TEXT="if the file have been modified it can be seen in its style" ID="ID_1264627584" CREATED="1599329985445" MODIFIED="1599330136718">
<node TEXT="mofified file" STYLE_REF="modifiedFile" ID="ID_332409081" CREATED="1599866405499" MODIFIED="1599866420738"/>
</node>
</node>
<node TEXT="sort by timestamps" ID="ID_732574262" CREATED="1597447403834" MODIFIED="1597452273788" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT="you can sort a node and its descendants by any of the timestamps" ID="ID_1033913354" CREATED="1597447415761" MODIFIED="1597447451002">
<node TEXT="lastAccessTime" ID="ID_503866256" CREATED="1597447320479" MODIFIED="1597447320479"/>
<node TEXT="lastModifiedTime" ID="ID_456157774" CREATED="1597447325148" MODIFIED="1597447325148"/>
<node TEXT="creationTime" ID="ID_1495272951" CREATED="1597447330003" MODIFIED="1597447330003"/>
</node>
</node>
<node TEXT="clear the timestamps" ID="ID_718889327" CREATED="1597447465341" MODIFIED="1597452273792" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT="for the selected node and its descendants" ID="ID_290685175" CREATED="1597447483708" MODIFIED="1597447503154"/>
<node TEXT="deletes the timestamps attributes in the nodes" ID="ID_7364982" CREATED="1597447535859" MODIFIED="1597447557117"/>
</node>
</node>
<node TEXT="added" STYLE_REF="Organizador" ID="ID_1278170436" CREATED="1598135273450" MODIFIED="1598135277623">
<node TEXT="maxDepth" ID="ID_556445443" CREATED="1598135365162" MODIFIED="1598135370166" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT=" The maximum number of directory levels when recursing" ID="ID_909377810" CREATED="1598135353428" MODIFIED="1598135510150"/>
<node TEXT="(default is -1 which means infinite, set to 0 for no recursion)" ID="ID_189095763" CREATED="1598135353431" MODIFIED="1598135505564"/>
</node>
<node TEXT="nameFilter" ID="ID_1499795442" CREATED="1598135449000" MODIFIED="1598135454340" BACKGROUND_COLOR="#99ccff" NUMBERED="true">
<node TEXT="A filter to perform on the name of traversed files. If set, only files which match are brought." ID="ID_1913078862" CREATED="1598135398030" MODIFIED="1598135499337"/>
<node TEXT="This option allowes four types of inputs:" ID="ID_1237449337" CREATED="1598135398033" MODIFIED="1598135493752">
<node TEXT="1. nothing (empty)" ID="ID_1576205460" CREATED="1598135398036" MODIFIED="1598135550854">
<node TEXT="means no filtering" ID="ID_1651298569" CREATED="1598135537833" MODIFIED="1598135537842"/>
<node TEXT="(default)" ID="ID_1749507742" CREATED="1598135537821" MODIFIED="1598135537827"/>
</node>
<node TEXT="2. regex" ID="ID_124150247" CREATED="1598135398040" MODIFIED="1598135569500">
<node TEXT="~/.*\.mp3/" ID="ID_36415377" CREATED="1598135621681" MODIFIED="1598135684703"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      example
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="3. &apos;simplified&apos; regex" ID="ID_1348548675" CREATED="1598135398043" MODIFIED="1598135591859">
<node TEXT="~.*\.mp3" ID="ID_195982893" CREATED="1598135609846" MODIFIED="1598135694117"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      example
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="4. string with *" ID="ID_1493867332" CREATED="1598135398046" MODIFIED="1598135671155">
<node TEXT="*.mp3" ID="ID_898544369" CREATED="1598135671170" MODIFIED="1598135706463"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      example
    </p>
  </body>
</html></richcontent>
<node TEXT="~/(?i).*\.mp3/" ID="ID_722660512" CREATED="1598135671164" MODIFIED="1598135757336"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      equivalent to regex
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="5. list of strings with * and ;" ID="ID_1032314669" CREATED="1598135398049" MODIFIED="1598135803392">
<node TEXT="*.mp3;*.png" ID="ID_35285374" CREATED="1598135803405" MODIFIED="1598135812950"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      example
    </p>
  </body>
</html></richcontent>
<node TEXT="~/(?i)(.*\.mp3|.*\.png)/" ID="ID_1400217155" CREATED="1598135803400" MODIFIED="1598135823492"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      equivalent to regex
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="group" STYLE_REF="Organizador" ID="ID_1964736207" CREATED="1599866502920" MODIFIED="1599866507432">
<node TEXT="example images" FOLDED="true" ID="ID_1231725632" CREATED="1599868623207" MODIFIED="1599868839439">
<cloud COLOR="#999999" SHAPE="ROUND_RECT"/>
<node TEXT="before:" ID="ID_1548039148" CREATED="1599868596556" MODIFIED="1599868751362">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/updatesFoldersLikeMap_files/groupingExample%20001.png" SIZE="0.6920415" NAME="ExternalObject"/>
</node>
<node TEXT="grouped by creation date Year - Month" ID="ID_424548648" CREATED="1599868596564" MODIFIED="1599868756873">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/updatesFoldersLikeMap_files/groupingExample%20002.png" SIZE="0.63829786" NAME="ExternalObject"/>
</node>
<node TEXT="grouped by file extension" ID="ID_1134874250" CREATED="1599868596572" MODIFIED="1599868780926">
<hook URI="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/updatesFoldersLikeMap_files/groupingExample%20003.png" SIZE="0.6772009" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="you can group the childnodes of a node using different conditions:" ID="ID_1771770718" CREATED="1599866509764" MODIFIED="1599866684977">
<node TEXT="extension of the file" ID="ID_155025783" CREATED="1599866574521" MODIFIED="1600699461911"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Good to know:<br/>the script use the name of the file linked to the node to get the extension.
    </p>
    <p>
      it get the text after the last dot and it asumes that is the extension.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Year or YearMonth when the file was" ID="ID_1134162043" CREATED="1599866584347" MODIFIED="1600698454516"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      to use this you have to get the filestamps first
    </p>
    <p>
      (TimeStamps / Get file timestamps)
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      to use this you have to get the filestamps first
    </p>
    <p>
      
    </p>
    <p>
      apply TimeStamps / Get file timestamps to the branch you want to group before grouping it.
    </p>
  </body>
</html></richcontent>
<node TEXT="created" ID="ID_1822403100" CREATED="1599866612535" MODIFIED="1599866616323"/>
<node TEXT="last modified" ID="ID_1914079884" CREATED="1599866618930" MODIFIED="1599866627208"/>
<node TEXT="last accessed" ID="ID_1307646565" CREATED="1599866628357" MODIFIED="1599866637814"/>
</node>
</node>
<node TEXT="the grouping criteria input strings are:" ID="ID_1848057897" CREATED="1599866708223" MODIFIED="1599867185623"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      upper or lower case deosn't matter
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      for using this script you have two options:
    </p>
    <p>
      
    </p>
    <p>
      A. the <b><u>first one</u></b>&nbsp;is to set a restricted set to the 'group by' attribute. I don't know how to do this automatically, but here are the steps to do it manually:
    </p>
    <p>
      
    </p>
    <p>
      -setting this script for the first time:
    </p>
    <p>
      1. execute this script on a node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- this will add to it a new attribute (&quot;group by&quot;)
    </p>
    <p>
      2. open the Attribute Manager
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- menu Edit / Node Properties / Attribute Manager ...
    </p>
    <p>
      3. check 'Restricted set' for this attribute
    </p>
    <p>
      4. click 'Edit' for this attribute (another form opens)
    </p>
    <p>
      5. add following strings to its set (one by one. Copy/ Paste taking care not to paste the newline character with it):
    </p>
    <ul>
      <li>
        Ext
      </li>
      <li>
        creation YearMonth
      </li>
      <li>
        creation Year
      </li>
      <li>
        lastAccess YearMonth
      </li>
      <li>
        lastAccess Year
      </li>
      <li>
        lastModified YearMonth
      </li>
      <li>
        lastModified Year
      </li>
    </ul>
    <p>
      6. close the 'edit' form
    </p>
    <p>
      7. click 'Ok' button to close the Attribute Manager
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      B. the <b><u>second option</u></b>&nbsp;is not using a restricted set at all and remember the following options to type them as input everytime you use the script. You can type the options listed before, but you have also the posibility to type their &quot;short versions&quot; (in the same order than before) (upper or undercase, it doesn't matter):
    </p>
    <ul>
      <li>
        ext
      </li>
      <li>
        cYM
      </li>
      <li>
        cY
      </li>
      <li>
        LAYM
      </li>
      <li>
        LAY
      </li>
      <li>
        LMYM
      </li>
      <li>
        LMY
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="long versions" ID="ID_107905866" CREATED="1599866752850" MODIFIED="1599866825684">
<node TEXT="Ext" ID="ID_1087767970" CREATED="1599866739935" MODIFIED="1599866741487"/>
<node TEXT="creation YearMonth" ID="ID_933222239" CREATED="1599866735343" MODIFIED="1599866735343"/>
<node TEXT="creation Year" ID="ID_95730285" CREATED="1599866735343" MODIFIED="1599866735343"/>
<node TEXT="lastAccess YearMonth" ID="ID_1868458440" CREATED="1599866735347" MODIFIED="1599866735347"/>
<node TEXT="lastAccess Year" ID="ID_1116271224" CREATED="1599866735349" MODIFIED="1599866735349"/>
<node TEXT="lastModified YearMonth" ID="ID_1663491893" CREATED="1599866735352" MODIFIED="1599866735352"/>
<node TEXT="lastModified Year" ID="ID_1196008139" CREATED="1599866735354" MODIFIED="1599866735354"/>
</node>
<node TEXT="short versions" ID="ID_798937809" CREATED="1599866826873" MODIFIED="1599866832629">
<node TEXT="ext" ID="ID_102097204" CREATED="1599866867333" MODIFIED="1599866870234"/>
<node TEXT="cym" ID="ID_1004998766" CREATED="1599866872459" MODIFIED="1599866874192"/>
<node TEXT="cy" ID="ID_1582319982" CREATED="1599866875300" MODIFIED="1599866876762"/>
<node TEXT="laym" ID="ID_1255835225" CREATED="1599866877552" MODIFIED="1599866880041"/>
<node TEXT="lay" ID="ID_1844038998" CREATED="1599866880522" MODIFIED="1599866881649"/>
<node TEXT="lmym" ID="ID_974438528" CREATED="1599866888134" MODIFIED="1599866894348"/>
<node TEXT="lmy" ID="ID_723331714" CREATED="1599866895591" MODIFIED="1599866897258"/>
</node>
</node>
</node>
</node>
<node TEXT="Example:" FOLDED="true" POSITION="bottom_or_right" ID="ID_1316259066" CREATED="1597276969516" MODIFIED="1597276975690" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
<node TEXT="look at this videos" ID="ID_525825074" CREATED="1597451868466" MODIFIED="1597451880593">
<node TEXT="lo básico" ID="ID_1650411941" CREATED="1597346968785" MODIFIED="1597346975184" LINK="https://youtu.be/2vwd38rxAlY"/>
<node TEXT="el resto" ID="ID_1146532349" CREATED="1597347167450" MODIFIED="1597347175477" LINK="https://youtu.be/bd30aySucc4"/>
</node>
</node>
</node>
</map>
