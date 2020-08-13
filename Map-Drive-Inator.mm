<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Example MAP" FOLDED="false" ID="ID_819943156" CREATED="1590784750245" MODIFIED="1597275276457">
<edge DASH="SOLID"/>
<hook NAME="MapStyle" zoom="1.1">
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
    <properties fit_to_viewport="false;" show_icon_for_attributes="true" show_note_icons="true" show_notes_in_map="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="300.0 px" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="as_parent">
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
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
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
<stylenode TEXT="BotonMenu" ICON_SIZE="20.0 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3.0 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="baseFolder" ICON_SIZE="20.0 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ICON_SIZE="20.0 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="locked" ICON_SIZE="20.0 pt" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="freshNew" ICON_SIZE="20.0 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ICON_SIZE="20.0 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" BORDER_WIDTH="3.0 px">
<icon BUILTIN="emoji-1F4C2"/>
</stylenode>
<stylenode TEXT="Organizador">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
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
<node TEXT="MapDriveInator" POSITION="right" ID="ID_1488840535" CREATED="1589833899017" MODIFIED="1597275408723" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
<node TEXT="UNDER CONSTUCTION" ID="ID_1021111333" CREATED="1597347715234" MODIFIED="1597347780404" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="pencil"/>
<font SIZE="16" BOLD="true"/>
</node>
<node TEXT="Instructions" STYLE_REF="Organizador" ID="ID_1687633798" CREATED="1590789587612" MODIFIED="1590791056779"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I've tested only in windows. I do`'t know if it runs in other OS.
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      windows
    </p>
  </body>
</html>
</richcontent>
<node TEXT="UNDER CONSTUCTION" ID="ID_1206466179" CREATED="1597347715234" MODIFIED="1597347780398" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="pencil"/>
<font SIZE="16" BOLD="true"/>
</node>
<node TEXT="first time:" STYLE_REF="Organizador" ID="ID_242771435" CREATED="1590789610801" MODIFIED="1590789623249">
<node TEXT="copy scripts to your scripts folder" FOLDED="true" ID="ID_1083806285" CREATED="1590789697917" MODIFIED="1597274967202"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="open User Directory" ID="ID_1766225359" CREATED="1590804727552" MODIFIED="1597272950021" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="copy lib to your lib folder" ID="ID_741141676" CREATED="1590789697917" MODIFIED="1597275001048"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="open User Directory" ID="ID_252880445" CREATED="1590804727552" MODIFIED="1597348042813" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="allow scripts to read and write files" ID="ID_1427365019" CREATED="1590790718419" MODIFIED="1597275002553"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="open Preferences" ID="ID_1408247914" CREATED="1590804727596" MODIFIED="1597275019108" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20003.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="Freeplane scriptspreferences" ID="ID_698032929" CREATED="1590804727613" MODIFIED="1597275031885" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20004.png" SIZE="0.62434965" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="relaunch freeplane" ID="ID_982912135" CREATED="1590789734867" MODIFIED="1590805944229"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
</node>
<node TEXT="To work it need to be used with ABSOLUTE links" ID="ID_1437662581" CREATED="1597275889440" MODIFIED="1597275912193"/>
</node>
<node TEXT="importing the folder structure" STYLE_REF="Organizador" ID="ID_1374265871" CREATED="1590792021431" MODIFIED="1597347644141">
<icon BUILTIN="pencil"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      use this map as a template, because it has the <b>user defined styles </b>and <b>conditional styles </b>that are necesary for the script to run correctly
    </p>
  </body>
</html>
</richcontent>
<node TEXT="copy your base folder to freeplane as a node" ID="ID_1394265874" CREATED="1590792061344" MODIFIED="1590806013157"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="copy base folder" ID="ID_966651652" CREATED="1590804727650" MODIFIED="1597275052027" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20006.png" SIZE="0.90361446" NAME="ExternalObject"/>
</node>
<node TEXT="paste base folder" ID="ID_359931643" CREATED="1590804727670" MODIFIED="1597275056798" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20007.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="select it" ID="ID_123446570" CREATED="1590792160606" MODIFIED="1590806021353"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
</node>
<node TEXT="TODO:" ID="ID_1110214878" CREATED="1597275114156" MODIFIED="1597347640503">
<icon BUILTIN="pencil"/>
</node>
</node>
<node TEXT="organizing it" STYLE_REF="Organizador" ID="ID_1011171624" CREATED="1590792542264" MODIFIED="1590792589833">
<node TEXT="creating new folders" ID="ID_958877563" CREATED="1590794551926" MODIFIED="1590807536831"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="assign &apos;file_folder&apos; style 1" ID="ID_1270988197" CREATED="1590807331427" MODIFIED="1597275128001" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20012.png" SIZE="0.9433962" NAME="ExternalObject"/>
</node>
<node TEXT="assign &apos;file_folder&apos; style 3" ID="ID_1814807565" CREATED="1590807331481" MODIFIED="1597275131942" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20011.png" SIZE="0.7444169" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="moving the files nodes to the new folders" ID="ID_1158196008" CREATED="1590794576394" MODIFIED="1590806145410"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="move &apos;files&apos; nodes into new &apos;folders&apos;" ID="ID_778559080" CREATED="1590807678966" MODIFIED="1597347693789" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20013.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="adding other nodes / notes / details" ID="ID_1625194663" CREATED="1590794561668" MODIFIED="1590806309424"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="adding nodes, notes, details" ID="ID_1090104357" CREATED="1590808387849" MODIFIED="1597347700784" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20014.png" SIZE="0.9118541" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="changing files names" ID="ID_231729277" CREATED="1590794639542" MODIFIED="1597275176593"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<node TEXT="renaming files" ID="ID_1420984609" CREATED="1590808632297" MODIFIED="1597347706168" TEXT_SHORTENED="true">
<hook URI="updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20015.png" SIZE="0.9917355" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="update the files and folders in your disk" STYLE_REF="Organizador" ID="ID_1182392227" CREATED="1590794661092" MODIFIED="1597275212745"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
</node>
</node>
<node TEXT="add new Styles" STYLE_REF="Organizador" FOLDED="true" ID="ID_1687318378" CREATED="1592838662490" MODIFIED="1597274889477"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      for other maps
    </p>
  </body>
</html>
</richcontent>
<node TEXT="for each new Style:" STYLE_REF="Organizador" ID="ID_1129119163" CREATED="1592841393949" MODIFIED="1597274555413">
<node TEXT="select the muster node" ID="ID_587062624" CREATED="1592839717618" MODIFIED="1597274588878" NUMBERED="true">
<node TEXT="BotonMenu" ID="ID_416745702" CREATED="1592084803981" MODIFIED="1592842172343" ICON_SIZE="24.0 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3.0 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="baseFolder" ID="ID_504531478" CREATED="1592084803981" MODIFIED="1592842324991" ICON_SIZE="24.0 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="newFolderImport" ID="ID_668585828" CREATED="1592084803981" MODIFIED="1592842324984" ICON_SIZE="24.0 pt" COLOR="#000000" BACKGROUND_COLOR="#ffeca9" BORDER_COLOR="#5566c5">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      patrón de base
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="locked" ID="ID_895342247" CREATED="1593212701967" MODIFIED="1597273698831" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px" BORDER_DASH="DASHES">
<icon BUILTIN="emoji-1F512"/>
</node>
<node TEXT="freshNew" ID="ID_1793616985" CREATED="1593213107807" MODIFIED="1597273552453" ICON_SIZE="20.0 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</node>
<node TEXT="movedRenamed" ID="ID_263862093" CREATED="1595525991989" MODIFIED="1597273528771" ICON_SIZE="20.0 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</node>
<node TEXT="file" ID="ID_472260282" CREATED="1593213292935" MODIFIED="1593214118016" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</node>
<node TEXT="file_folder" ID="ID_796157526" CREATED="1593214180238" MODIFIED="1593214523143" ICON_SIZE="12.0 pt" BORDER_WIDTH="3.0 px">
<icon BUILTIN="emoji-1F4C2"/>
</node>
</node>
<node TEXT="Ctrl + C" ID="ID_21737143" CREATED="1592840130776" MODIFIED="1592840139065" NUMBERED="true"/>
<node TEXT="apply new style from selection" ID="ID_1600968769" CREATED="1592839759108" MODIFIED="1597274597913" LINK="menuitem:_NewUserStyleAction" NUMBERED="true">
<node TEXT="take care with trailing spaces when pasting the name" ID="ID_1384968396" CREATED="1597274618871" MODIFIED="1597274646912"/>
</node>
<node TEXT="testing nodes" ID="ID_1206257270" CREATED="1592841576802" MODIFIED="1597274679628"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí se debería reflejar si el estilo se cargó correctamente
    </p>
  </body>
</html>
</richcontent>
<node TEXT="BotonMenu" STYLE_REF="BotonMenu" ID="ID_1221516433" CREATED="1592839269082" MODIFIED="1592839595822"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="baseFolder" STYLE_REF="baseFolder" ID="ID_1251497248" CREATED="1592839269082" MODIFIED="1592839621855"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="newFolderImport" STYLE_REF="newFolderImport" ID="ID_840043894" CREATED="1592839269082" MODIFIED="1592839607623"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      asignado (prueba)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="locked" STYLE_REF="locked" ID="ID_1964858331" CREATED="1593212005397" MODIFIED="1597273572997"/>
<node TEXT="freshNew" STYLE_REF="freshNew" ID="ID_87124226" CREATED="1593213236294" MODIFIED="1593213249604"/>
<node TEXT="movedRenamed" STYLE_REF="movedRenamed" ID="ID_1167577854" CREATED="1595526352759" MODIFIED="1595526365006"/>
<node TEXT="file" STYLE_REF="file" ID="ID_1716171840" CREATED="1593213432726" MODIFIED="1593213439198"/>
<node TEXT="file_folder" STYLE_REF="file_folder" ID="ID_1057732732" CREATED="1593214134748" MODIFIED="1593214153053"/>
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
</node>
<node TEXT="Temp Script" ID="ID_1837970204" CREATED="1597275496080" MODIFIED="1597275496098"><richcontent TYPE="NOTE">

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
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .txt
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Actions:" STYLE_REF="Organizador" ID="ID_1321530167" CREATED="1590503364731" MODIFIED="1597274086662" NUMBERED="true">
<node TEXT="MAP-DRIVE-INATOR" ID="ID_1022693340" CREATED="1594333825266" MODIFIED="1594333862163" LINK="menuitem:_Map-Drive-Inator_on_single_node"/>
<node TEXT="Distribute New Nodes" ID="ID_462223382" CREATED="1590503514564" MODIFIED="1597274444903" LINK="menuitem:_DistributeNewNodes_on_single_node"/>
<node TEXT="give node &apos;file_folder&apos; style" STYLE_REF="file_folder" ID="ID_815319331" CREATED="1590806506996" MODIFIED="1592082554300" LINK="menuitem:_AssignStyleAction.file_folder" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px"/>
<node TEXT="give node &apos;locked&apos; style" ID="ID_1595957319" CREATED="1596484461314" MODIFIED="1596484513782" LINK="menuitem:_AssignStyleAction.locked" MAX_WIDTH="250.0 px" MIN_WIDTH="250.0 px">
<icon BUILTIN="emoji-1F512"/>
</node>
</node>
</node>
<node TEXT="Features" FOLDED="true" POSITION="right" ID="ID_1933019455" CREATED="1597336293381" MODIFIED="1597336813997" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
<node TEXT="basic" ID="ID_916161454" CREATED="1597337606934" MODIFIED="1597337616511">
<node TEXT="video 1" ID="ID_1939874482" CREATED="1597346952852" MODIFIED="1597346956474">
<node TEXT="lo básico" ID="ID_1757220682" CREATED="1597346968785" MODIFIED="1597346975184" LINK="https://youtu.be/2vwd38rxAlY"/>
</node>
<node TEXT="import folder structure" ID="ID_893737363" CREATED="1597337330399" MODIFIED="1597346841668" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="import only new files and folders" ID="ID_115058096" CREATED="1597337362549" MODIFIED="1597346841712" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="alerts about missing files" ID="ID_1917116963" CREATED="1597339003984" MODIFIED="1597346841745" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="move file form one folder to another" ID="ID_1657805577" CREATED="1597337385547" MODIFIED="1597346841770" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="create new folders" ID="ID_984455598" CREATED="1597337406604" MODIFIED="1597346841790" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="rename files" ID="ID_1156580523" CREATED="1597337423991" MODIFIED="1597346841807" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="rename folders" ID="ID_120642634" CREATED="1597337431883" MODIFIED="1597346841820" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="move outside files into the project" ID="ID_1675560792" CREATED="1597337502759" MODIFIED="1597346841831" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="use copy of a folder in multiple positions in the map, but has to remain in the same path position" ID="ID_1651169814" CREATED="1597337789916" MODIFIED="1597347396716" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
</node>
<node TEXT="other" ID="ID_1743927001" CREATED="1597337666186" MODIFIED="1597347396709">
<font STRIKETHROUGH="false"/>
<node TEXT="video 2" ID="ID_841866417" CREATED="1597347161697" MODIFIED="1597347165010">
<node TEXT="el resto" ID="ID_1187409569" CREATED="1597347167450" MODIFIED="1597347175477" LINK="https://youtu.be/bd30aySucc4"/>
</node>
<node TEXT="can handle clones" ID="ID_550697123" CREATED="1597337673551" MODIFIED="1597347396735" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="locked" ID="ID_1866219877" CREATED="1597336926216" MODIFIED="1597347396750" NUMBERED="true">
<font STRIKETHROUGH="false"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ignore nodes in it
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ignores outside files and doesn´t move them into the project folder" ID="ID_1931119002" CREATED="1597337957596" MODIFIED="1597347396757" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
<node TEXT="ignores folders and its subfolders and files when looking in the drive" ID="ID_1674185783" CREATED="1597337999248" MODIFIED="1597347396764" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
</node>
<node TEXT="ignores folders with name starting with a dot (and its subfolders and files when looking in the drive)&#xa;example: &quot;.git&quot;" ID="ID_1343452811" CREATED="1597337999248" MODIFIED="1597347396768" NUMBERED="true">
<font STRIKETHROUGH="false"/>
</node>
</node>
</node>
<node TEXT="Example:" POSITION="right" ID="ID_1316259066" CREATED="1597276969516" MODIFIED="1597276975690" COLOR="#3333ff" BACKGROUND_COLOR="#bbbbff">
<font SIZE="14" BOLD="true"/>
</node>
</node>
</map>
