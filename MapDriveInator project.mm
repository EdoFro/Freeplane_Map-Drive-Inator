<map version="freeplane 1.11.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="MapDriveInator project.mm" FOLDED="false" ID="ID_113708126" CREATED="1641504381816" MODIFIED="1673446036037" LINK="file:/E:/Respaldo%20EF/ef/Documentos%20con%20macros/08%20Freemind%20Groovy/scripts/ScriptsEnComputadorYDesarrollosEdo%20v1.9.mm"><hook NAME="MapStyle" background="#f9f9f8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder" LAST="false">
            <script_condition>
                <script>(node.link?.uri?.scheme == &apos;file&apos; &amp;&amp; node.link.uri.path.takeRight(1) == &apos;/&apos;)</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="file_folder_with_icon" LAST="false">
            <conjunct_condition>
                <script_condition>
                    <script>import org.freeplane.core.util.FreeplaneVersion&#xd;
return (c.freeplaneVersion &lt; FreeplaneVersion.getVersion(&quot;1.9.0&quot;) || !(node.link?.uri?.scheme == &apos;file&apos;) )</script>
                </script_condition>
                <style_equals_condition TEXT="file_folder"/>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder_with_icon" LAST="false">
            <conjunct_condition>
                <style_contains_condition TEXT="file_folder"/>
                <script_condition>
                    <script>import org.freeplane.core.util.FreeplaneVersion&#xd;
return (c.freeplaneVersion &lt; FreeplaneVersion.getVersion(&quot;1.9.0&quot;) || !(node.link?.uri?.scheme == &apos;file&apos;) )</script>
                </script_condition>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="customMenuPackage" LAST="false">
            <attribute_exists_condition ATTRIBUTE="tbActions"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Warning" LAST="false">
            <node_contains_condition VALUE=".EXIT_ON_CLOSE" ITEM="filter_any_text"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="menuButton" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="GroovyNode" LAST="false">
            <script_condition>
                <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>(node.findAll() - node).any{
    edofro.freeplane.groovynode.GN.isGroovyNode(it)
}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsNextTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;nextTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsPendingTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;pendingTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="hasGroovyNode" LAST="false">
            <any_descendant_condition>
                <script_condition>
                    <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
                </script_condition>
            </any_descendant_condition>
        </conditional_style>
    </conditional_styles>
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" BookmarksKeys="{}" followedTemplateLocation="template:/DFGHI%20Proyecto-Groovy-Tareas-MDI-menuButton%20(vis01).mm" pruebaDiccionario="ID_311366985|:|idDictionary|-|ID_323296041|:|ToM Actions|-|" show_icon_for_attributes="true" show_notes_in_map="false" save_modification_times="true" save_last_visited_node="default" show_note_icons="true" mdhFreeMindmapPath="hhgf" save_folding="save_folding_if_map_is_changed" followedMapLastTime="1661362125221" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="DEFAULT" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px" CHILD_NODES_LAYOUT="AUTO_CENTERED" MAX_WIDTH="10 cm" MIN_WIDTH="0 cm">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;0 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="10" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="MS UI Gothic" SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" ID="ID_358779365" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="baseFolder" ID="ID_1246743661" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ID="ID_175940221" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ID="ID_1804698977" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ID="ID_851444256" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" ID="ID_1717966522" BORDER_WIDTH="2.5 px" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" ID="ID_1554270070" BORDER_WIDTH="3 px"/>
<stylenode TEXT="missing" ID="ID_1068634079" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" ID="ID_1027988377" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" ID="ID_936671747" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon" ID="ID_927144007">
<icon BUILTIN="emoji-1F4C2"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_647184451" ICON_SIZE="16 pt" COLOR="#286b86" BACKGROUND_COLOR="#92c5d7" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#286b86">
<icon BUILTIN="groovyNode/groovy-G"/>
<font NAME="Harlow Solid Italic" SIZE="12"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_191105537" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_547619512">
<icon BUILTIN="groovyNode/groovy-G"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_1141135899" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_738828078" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_1196215838" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="nextTask" ID="ID_507772011" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="pendingTask" ID="ID_1278203117" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="completedTask" ID="ID_263222449" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="discardedTask" ID="ID_1726907748" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="containsNextTasks" ID="ID_661211039" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="containsPendingTasks" ID="ID_1486748518" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="Proyecto" ID="ID_643179356" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito" ID="ID_1085570108">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa" ID="ID_604763806">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador" ID="ID_235021673">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Minuta" ID="ID_461928519">
<icon BUILTIN="list"/>
<cloud COLOR="#69a1f8" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Acuerdo" ID="ID_1601320744" BACKGROUND_COLOR="#66ff33">
<icon BUILTIN="flag-black"/>
</stylenode>
<stylenode TEXT="numerado" ID="ID_1268287532" BACKGROUND_COLOR="#add1ea" STYLE="bubble" NUMBERED="true" MAX_WIDTH="200 px" MIN_WIDTH="200 px"/>
<stylenode TEXT="con duda" ID="ID_801703559" BACKGROUND_COLOR="#ffff66">
<icon BUILTIN="help"/>
<font BOLD="false" ITALIC="true"/>
</stylenode>
<stylenode TEXT="menuButton" ID="ID_398428156" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="project" ID="ID_1147771750" COLOR="#e1e19c" BACKGROUND_COLOR="#1c1c63">
<icon BUILTIN="emoji-1F5C2"/>
<attribute NAME="projectCode" VALUE=""/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" ID="ID_965152203" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="customMenuPackage" ID="ID_1721666989" ICON_SIZE="20 pt" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH="3 px" BORDER_COLOR="#ae5528">
<icon BUILTIN="emoji-1F4E6"/>
<font BOLD="true" ITALIC="true"/>
</stylenode>
<stylenode TEXT="tasksBucket" ID="ID_1197921882">
<icon BUILTIN="emoji-1F5C3"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="maybeTask" ID="ID_1519585836" BACKGROUND_COLOR="#cefcfc">
<icon BUILTIN="emoji-23FA"/>
</stylenode>
<stylenode TEXT="milestone" ID="ID_1534665710">
<icon BUILTIN="emoji-1F6A9"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="fullMarkDown" ID="ID_897231475" FORMAT="markdownPatternFormat" BORDER_DASH="SOLID"><richcontent CONTENT-TYPE="plain/markdown" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="5 cm" MIN_WIDTH="3 cm">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Freeplane_Map-Drive-Inator" STYLE_REF="baseFolder" POSITION="bottom_or_right" ID="ID_282706868" CREATED="1616167740399" MODIFIED="1673976688683" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/">
<icon BUILTIN="emoji-1F4B2"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:39" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="fileSize" VALUE="12.288" OBJECT="org.freeplane.features.format.FormattedNumber|12288|#,##0"/>
<attribute NAME="projectCode" VALUE="Freep.Map-Drive-Inator"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
    <p>
      The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nameFilter:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A filter to perform on the name of traversed files. If set, only files which match are brought.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This options allowes four types of inputs:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. nothing (empty) means no filtering (default)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/.*\.mp3/
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 'simplified' regex&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~.*\.mp3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. string with *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3&nbsp;&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i).*\.mp3/&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. list of strings with * and ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3;*.png&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i)(.*\.mp3|.*\.png)/&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;maxDepth:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of directory levels when recursing
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(default is -1 which means infinite, set to 0 for no recursion)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;-- markWhenMoved:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;change styles to moved/renamed file Nodes
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;set to:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;0 : to change style only if node hasn't a previous one (default),
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;1 : to allways change the style,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-1 : to never change the style
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;-- checkIfReallyBroken:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check if existing nodes pointing to filtered files still exist&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- set to 1 to extra check if a not matching file still exists in drive&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
  </body>
</html></richcontent>
<node TEXT="possible paths" STYLE_REF="locked" ID="ID_399374123" CREATED="1630513133490" MODIFIED="1655909705575"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en orden de prioridad
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane_Map-Drive-Inator" STYLE_REF="missing" ID="ID_1171983621" CREATED="1673443693279" MODIFIED="1673969986902" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      notebook edo
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Freeplane_Map-Drive-Inator" ID="ID_495655473" CREATED="1673443693279" MODIFIED="1673969986905" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/">
<icon BUILTIN="emoji-27A1"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Disco E:
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:39" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|datetime"/>
<attribute NAME="fileSize" VALUE="12.288" OBJECT="org.freeplane.features.format.FormattedNumber|12288|#,##0"/>
</node>
</node>
<node TEXT="old" ID="ID_981665497" CREATED="1641529058796" MODIFIED="1641529065816">
<node TEXT="lib" ID="ID_1893653910" CREATED="1616167740401" MODIFIED="1673969744889" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/lib/">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="files" ID="ID_1340011039" CREATED="1641401717205" MODIFIED="1641401722142">
<node TEXT=".git" ID="ID_43997028" CREATED="1616167740400" MODIFIED="1673969744890" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/.git/">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
</node>
<node TEXT=".gitattributes" ID="ID_629932038" CREATED="1616167740401" MODIFIED="1673969738166" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/.gitattributes">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="20-07-20 10:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-20T10:32-0400|datetime"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="66" OBJECT="org.freeplane.features.format.FormattedNumber|66|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Auto detect text files and perform LF normalization
    </p>
    <p>
      * text=auto
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT=".gitignore" ID="ID_710272888" CREATED="1616167740401" MODIFIED="1673969738183" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/.gitignore">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="06-01-22 16:32" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-06T16:32-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="483" OBJECT="org.freeplane.features.format.FormattedNumber|483|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      Map-Drive-Inator.groovy.bak
    </p>
    <p>
      
    </p>
    <p>
      .gradle
    </p>
    <p>
      **/build/
    </p>
    <p>
      !src/**/build/
    </p>
    <p>
      
    </p>
    <p>
      # Ignore Gradle GUI config
    </p>
    <p>
      gradle-app.setting
    </p>
    <p>
      
    </p>
    <p>
      # Avoid ignoring Gradle wrapper jar file (.jar files are usually ignored)
    </p>
    <p>
      !gradle-wrapper.jar
    </p>
    <p>
      
    </p>
    <p>
      # Cache of project
    </p>
    <p>
      .gradletasknamecache
    </p>
    <p>
      
    </p>
    <p>
      # # Work around https://youtrack.jetbrains.com/issue/IDEA-116898
    </p>
    <p>
      # gradle/wrapper/gradle-wrapper.properties
    </p>
    <p>
      
    </p>
    <p>
      # Addon maps
    </p>
    <p>
      *.addon.mm
    </p>
    <p>
      *.mm.bak
    </p>
    <p>
      # version.properties
    </p>
    <p>
      
    </p>
    <p>
      # ignore .jar files
    </p>
    <p>
      *.jar
    </p>
    <p>
      
    </p>
    <p>
      # ignore some folders
    </p>
    <p>
      ignoredByGitHub/
    </p>
    <p>
      delete/
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="MapDriveInatorV2" FOLDED="true" ID="ID_828647119" CREATED="1673968595524" MODIFIED="1673969744894" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<node TEXT="lib" STYLE_REF="Organizador" FOLDED="true" ID="ID_1299482089" CREATED="1616167740217" MODIFIED="1616167740217">
<node TEXT="src" ID="ID_598707755" CREATED="1673968595535" MODIFIED="1673969744896" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/src/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="main" ID="ID_913704295" CREATED="1673968595537" MODIFIED="1673969744896" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/src/main/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="groovy" ID="ID_1433998257" CREATED="1673968595539" MODIFIED="1673969744897" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/src/main/groovy/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<node TEXT="MDIv2.groovy" ID="ID_1835829851" CREATED="1673968595541" MODIFIED="1673969744897" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/src/main/groovy/MDIv2.groovy">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:13-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.023" OBJECT="org.freeplane.features.format.FormattedNumber|5023|#,##0"/>
</node>
<node TEXT="Sync.groovy" ID="ID_309132156" CREATED="1673968595542" MODIFIED="1673969744899" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/src/main/groovy/Sync.groovy">
<attribute NAME="lastModifiedTime" VALUE="14-01-22 20:09" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-14T20:09-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="691" OBJECT="org.freeplane.features.format.FormattedNumber|691|#,##0"/>
</node>
</node>
</node>
</node>
<node TEXT="build" ID="ID_22994202" CREATED="1673968834253" MODIFIED="1673969744899" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/build/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      gradle lo administra
    </p>
  </body>
</html></richcontent>
<node TEXT="classes" STYLE_REF="locked" ID="ID_873682295" CREATED="1673968846691" MODIFIED="1673969744899" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/build/classes/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 16:11" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T16:11-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
<node TEXT="tmp" STYLE_REF="locked" ID="ID_11691582" CREATED="1673968846692" MODIFIED="1673969744899" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/build/tmp/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 16:12" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T16:12-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="lib" ID="ID_38835318" CREATED="1673968595527" MODIFIED="1673969744899" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/lib/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - aquí se crea nuevo libreria .jar
    </p>
    <p>
      - agregar aquí otras librerías que se requieran
    </p>
  </body>
</html></richcontent>
<node TEXT="MapDriveInator.jar" ID="ID_1000358893" CREATED="1673968595529" MODIFIED="1673969744900" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/lib/MapDriveInator.jar">
<attribute NAME="lastModifiedTime" VALUE="15-01-22 01:19" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T01:19-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="9.051" OBJECT="org.freeplane.features.format.FormattedNumber|9051|#,##0"/>
</node>
</node>
</node>
<node TEXT="scripts" ID="ID_1535564200" CREATED="1673968595531" MODIFIED="1673969744900" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/scripts/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van los scripts que se llaman desde el menú
    </p>
  </body>
</html></richcontent>
<node TEXT="CreateBaseFolderNode.groovy" ID="ID_895107032" CREATED="1673968595533" MODIFIED="1673969744901" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/scripts/CreateBaseFolderNode.groovy">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="346" OBJECT="org.freeplane.features.format.FormattedNumber|346|#,##0"/>
</node>
<node TEXT="importMDIStyles" ID="ID_1003797776" CREATED="1654875862445" MODIFIED="1654875904643"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.pseudofreeplaneapi.UserStyles as us
    </p>
    <p>
      
    </p>
    <p>
      //region: opens template map
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sep&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= File.separator
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def userDir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= c.userDirectory.path
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def mapFileName = &quot;F - MDI styles.mm&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def pathName&nbsp;&nbsp;&nbsp;&nbsp;= userDir + sep + &quot;templates&quot; + sep + &quot;Functional Styles Base&quot; + sep + mapFileName
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sourceMap&nbsp;&nbsp;&nbsp;= getMapFromPath(pathName, false) //usar mapa indicado (pero oculto)
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def targetMap = node.map&nbsp;&nbsp;// --&gt; active map
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap)
    </p>
    <p>
      
    </p>
    <p>
      //Other use case examples on how to use edofro.pseudofreeplaneapi.UserStyles.copyUserStyles
    </p>
    <p>
      /*
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myString = 'ToM_goto'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myList = 'ToM_nextPage,ToM_goto,ToM_showNode'.split(',')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myClosure =&nbsp;&nbsp;{it.text.contains('u')}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myClosure2 =&nbsp;&nbsp;{it.text.startsWith('ToM_')}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myString)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myList)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myClosure)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myClosure2)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      // end:
    </p>
    <p>
      
    </p>
    <p>
      // region: --------------------------- help methods ------------------------
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def getMapFromPath(filePath, withView){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(exists(filePath)){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def m = c.mapLoader(filePath)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(withView) m.withView()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return m.getMindMap()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def exists(String path){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exists(new File(path))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def exists(File file){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file.isFile()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      // end:
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="MapDriveInator.mm" ID="ID_151492379" CREATED="1673968595545" MODIFIED="1673969744901" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/MapDriveInator.mm">
<attribute NAME="lastModifiedTime" VALUE="20-01-22 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-20T12:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="21.759" OBJECT="org.freeplane.features.format.FormattedNumber|21759|#,##0"/>
</node>
<node TEXT="build.gradle" ID="ID_56095861" CREATED="1673968595547" MODIFIED="1673969744901" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/build.gradle">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="2.086" OBJECT="org.freeplane.features.format.FormattedNumber|2086|#,##0"/>
</node>
<node TEXT="zips" ID="ID_675695541" CREATED="1616167740371" MODIFIED="1673969744902" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="icons" ID="ID_1495924276" CREATED="1616167740371" MODIFIED="1673969744902" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/icons/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir íconos propios del AddOn
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_1106013023" CREATED="1631460354268" MODIFIED="1673969744902" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/icons/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="doc" ID="ID_680771650" CREATED="1631461076561" MODIFIED="1673969744903" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/doc/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir algún documento o mapa adicional
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_857784023" CREATED="1631460354268" MODIFIED="1673969744903" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/doc/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="templates" ID="ID_1709021293" CREATED="1620659975335" MODIFIED="1673969744903" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/templates/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir mapa template
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_1339117801" CREATED="1631460354268" MODIFIED="1673969744904" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/zips/templates/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="agregar template" STYLE_REF="pendingTask" ID="ID_1337837486" CREATED="1641650665842" MODIFIED="1641650673469"/>
<node TEXT="agregar script para copiar estilos a mapa" STYLE_REF="pendingTask" ID="ID_729724224" CREATED="1641650675321" MODIFIED="1641650698176"/>
</node>
</node>
</node>
<node TEXT="images" ID="ID_1547784914" CREATED="1631461312175" MODIFIED="1673969744904" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/images/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator-screenshot-1.png" STYLE_REF="pendingTask" ID="ID_1916027439" CREATED="1616167740292" MODIFIED="1641490697962">
<node TEXT="128x77" ID="ID_1111737256" CREATED="1616167740293" MODIFIED="1616167740293"/>
</node>
<node TEXT="MapDriveInator.png" STYLE_REF="pendingTask" ID="ID_307166317" CREATED="1616167740293" MODIFIED="1641490698696">
<node TEXT="53x32" ID="ID_1816181979" CREATED="1616167740293" MODIFIED="1616167740293"/>
</node>
<node TEXT="MapDriveInator-icon.png" STYLE_REF="pendingTask" ID="ID_1286945850" CREATED="1616167740293" MODIFIED="1641490699399">
<node TEXT="27x16" ID="ID_486573005" CREATED="1616167740294" MODIFIED="1616167740294"/>
</node>
</node>
<node TEXT="generados automáticamente" STYLE_REF="Organizador" ID="ID_111849460" CREATED="1616167740294" MODIFIED="1631461616556"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí voy reuniendo los que se generan automáticamente
    </p>
    <p>
      NO es folder
    </p>
  </body>
</html></richcontent>
<node TEXT="MapDriveInator-v0.0.2.addon.mm" ID="ID_817975731" CREATED="1673968595544" MODIFIED="1673969744904" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/MapDriveInator-v0.0.2.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="37.509" OBJECT="org.freeplane.features.format.FormattedNumber|37509|#,##0"/>
</node>
<node TEXT="MapDriveInator.mm.bak" ID="ID_387044729" CREATED="1673968595546" MODIFIED="1673969744905" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/MapDriveInator.mm.bak">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="22.950" OBJECT="org.freeplane.features.format.FormattedNumber|22950|#,##0"/>
</node>
<node TEXT="version.properties" ID="ID_734013378" CREATED="1673968595549" MODIFIED="1673969744905" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInatorV2/version.properties">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="164" OBJECT="org.freeplane.features.format.FormattedNumber|164|#,##0"/>
</node>
<node TEXT="versiones anteriores" STYLE_REF="Organizador" ID="ID_663250348" CREATED="1616167740295" MODIFIED="1616167740295"/>
</node>
</node>
<node TEXT="MapDriveInator" STYLE_REF="file_folder" ID="ID_1462849055" CREATED="1631460354268" MODIFIED="1673969986929" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/">
<attribute NAME="script1" VALUE="def nodo = node&#xd;&#xa;def texto = nodo.text&#xd;&#xa;&#xd;&#xa;def nodos = nodo.find{it.text.contains(texto)}&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;def cambiarA = ui.showInputDialog(&#xd;&#xa;        nodo.delegate, &#xd;&#xa;        &apos;input new AddOn name (it will CamelCase it and delete spaces)&apos;, &#xd;&#xa;        &apos; my new add on example   &apos;&#xd;&#xa;    )?.trim()&#xd;&#xa;&#xd;&#xa;cambiarA = cambiarA.split(&apos; &apos;)*.capitalize().join()&#xd;&#xa;&#xd;&#xa;nodos.each{n -&gt;&#xd;&#xa;    n.text = n.text.replace(texto,cambiarA)&#xd;&#xa;}"/>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:30" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:30-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:39" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<node TEXT="lib" STYLE_REF="Organizador" FOLDED="true" ID="ID_509478984" CREATED="1616167740217" MODIFIED="1616167740217">
<node TEXT="src" STYLE_REF="file_folder" ID="ID_767967142" CREATED="1616167740217" MODIFIED="1673969744912" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/src/">
<attribute NAME="lastModifiedTime" VALUE="10-01-22 13:28" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-10T13:28-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="main" STYLE_REF="file_folder" ID="ID_242117641" CREATED="1616167740218" MODIFIED="1673969744914" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/src/main/">
<attribute NAME="lastModifiedTime" VALUE="10-01-22 13:28" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-10T13:28-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="groovy" STYLE_REF="file_folder" ID="ID_225362559" CREATED="1616167740218" MODIFIED="1673969744915" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/src/main/groovy/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MDI.groovy" ID="ID_901526658" CREATED="1616167740402" MODIFIED="1673969744918" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/src/main/groovy/MDI.groovy">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:10-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="24.527" OBJECT="org.freeplane.features.format.FormattedNumber|24527|#,##0"/>
<node TEXT="class MDI{" FOLDED="true" ID="ID_1196551919" CREATED="1616167740405" MODIFIED="1616167740405">
<node TEXT="//region: ---------------------- Functions Initial Setup" STYLE_REF="completedTask" FOLDED="true" ID="ID_621271091" CREATED="1616167740405" MODIFIED="1623451291186">
<node TEXT="def static obtainBaseFolder(n) {" STYLE_REF="completedTask" FOLDED="true" ID="ID_755781680" CREATED="1616167740405" MODIFIED="1623451291288"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // function, returns Node (&quot;Base folder&quot;) under the selected node
    </p>
  </body>
</html></richcontent>
<node TEXT="en caso de null podría además verificar si tiene link relativo, transformarlo a absoluto y probar nuevamente si encuentra BaseFolderNode" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1803029347" CREATED="1616167740405" MODIFIED="1623451123022"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MDI.obtainBaseFolder(n)
    </p>
  </body>
</html></richcontent>
<node TEXT="getAbsolutePath()" ID="ID_205408240" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="getCanonicalPath" ID="ID_1798418570" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="getPath" ID="ID_506051445" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="https://stackoverflow.com/questions/1099859/how-to-split-a-path-platform-independent" ID="ID_1935090017" CREATED="1616167740405" MODIFIED="1616167740405" LINK="https://stackoverflow.com/questions/1099859/how-to-split-a-path-platform-independent"/>
<node TEXT="https://stackoverflow.com/questions/27257759/groovy-split-using-file-seperator" ID="ID_1216560097" CREATED="1616167740405" MODIFIED="1616167740405" LINK="https://stackoverflow.com/questions/27257759/groovy-split-using-file-seperator"/>
</node>
</node>
<node TEXT="def static obtainNewImportsNode(n){" ID="ID_1280168532" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static wantToLog(n){" ID="ID_782132352" CREATED="1616167740405" MODIFIED="1616167740405"/>
</node>
<node TEXT="//region: ---------------------- Updating Folders In Drive And Map" STYLE_REF="completedTask" FOLDED="true" ID="ID_1701127506" CREATED="1616167740405" MODIFIED="1623451291391">
<node TEXT="def static updateFolders(xfiles){" ID="ID_845084339" CREATED="1616167740405" MODIFIED="1616167740405"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // loops all the folders and update them
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="def static updateThisFolder(xf) {" ID="ID_1646739463" CREATED="1616167740405" MODIFIED="1616167740405"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // updates the position of folder in the drive
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="def static deleteFolder(folderPath){" ID="ID_482308611" CREATED="1616167740405" MODIFIED="1616167740405"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //deletes folder (privado)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="//region: ---------------------- nodes marks" STYLE_REF="completedTask" FOLDED="true" ID="ID_1044867492" CREATED="1616167740405" MODIFIED="1623451291485">
<node TEXT="def static isLocked(n){" ID="ID_1711991483" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static isMoved(n){" ID="ID_1066830223" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static markAsMoved(n,b, markMoved = 0){" ID="ID_261261640" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static markWhenMoved(n){" ID="ID_1315811588" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static isNew(n){" ID="ID_979844601" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static markAsNew(n,b){" ID="ID_1940037581" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static isBroken(n){" ID="ID_91510454" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static checkIfReallyBroken(n) {" ID="ID_1447252410" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static markAsBroken(n,b,checkAgain = false){" ID="ID_1046410294" CREATED="1616167740405" MODIFIED="1616167740405"/>
</node>
<node TEXT="//region: ---------------------- getting Information from nodes" FOLDED="true" ID="ID_1066504083" CREATED="1616167740405" MODIFIED="1616167740405">
<node TEXT="def static N(id){" ID="ID_834870060" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static nodeIsFolder(n){" ID="ID_1222857561" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static isLinkToFile(n){" ID="ID_1831793006" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static getPathFromLink(n){" STYLE_REF="pendingTask" ID="ID_1851564408" CREATED="1616167740405" MODIFIED="1623451123414"/>
<node TEXT="def static getPathFromLink2(n,lastChar =&apos;&apos;){" ID="ID_1008929495" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static getPathFromLink3(n,lastChar =&apos;&apos;){" ID="ID_287800272" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="def static obtainPathFromMap(n) {" FOLDED="true" ID="ID_1268554001" CREATED="1616167740405" MODIFIED="1616167740405">
<node TEXT="//function, returns string, builds the new path string by looking at the position of the node in the mindmap" ID="ID_1458823720" CREATED="1616167740405" MODIFIED="1616167740405"/>
<node TEXT="//it uses all the file-folder styled nodes till the base node" ID="ID_1995897122" CREATED="1616167740406" MODIFIED="1616167740406"/>
</node>
<node TEXT="def static hasCloneWhithPositionOK(n,isFolder){" FOLDED="true" ID="ID_360149378" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="//function, boolean, it returns true if the node has a clone which position in disk is equivalent as its position in the map" ID="ID_637532260" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="// when a node linked to a file is cloned in multiple places, not all position in the map will be consistent with its position in the drive." ID="ID_308454776" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="// Only one of them must be in the right place to consider that all the clones are placed OK" ID="ID_39134545" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="//(privado)" ID="ID_946564170" CREATED="1616167740406" MODIFIED="1616167740406"/>
</node>
<node TEXT="def static excludedFolders(nodo){" STYLE_REF="pendingTask" ID="ID_1917683671" CREATED="1616167740406" MODIFIED="1623451123812"/>
</node>
<node TEXT="//region: ---------------------- Funciones Strings" FOLDED="true" ID="ID_1385945412" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="def static getPathFromStrings(folderPath,fileName){" ID="ID_562262718" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static getFolderpathFromStrings(folderPath,nodo){" ID="ID_365205374" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static soloPath(fileAddress) {" ID="ID_817471862" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static correctFolderName(n){" ID="ID_1639360053" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //function, returns string, looks at text in node and correct it if it can't be used as a foldername (privado)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="//region: ---------------------- Modifying Nodes" FOLDED="true" ID="ID_1276011243" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="def static setLink(n, addr){" ID="ID_1084992958" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //adds a [link to a file] to the node
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="def static setLinkImage(n, addr){" ID="ID_465628089" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //corrects link to image in node which is also a file in the project
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="//region: ---------------------- Mannaging Files in Drive" FOLDED="true" ID="ID_295751906" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="def static createPath(String p) {" ID="ID_282856221" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // create all folders of a path (if they doesn't exist)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="def static createFolder(String folderName) {" ID="ID_570307275" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // create new folder if it doesn't exist (privado)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="def static isDirEmpty(dirName) {" ID="ID_1934268602" CREATED="1616167740406" MODIFIED="1616167740406"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // function boolean - is directory empty?? (privado)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="//region: ---------------------- Choosing Clone With &apos;Better&apos; Path" FOLDED="true" ID="ID_1489632824" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="def static chooseClone(xFi){" ID="ID_486807112" CREATED="1616167740406" MODIFIED="1616167740406"/>
</node>
<node TEXT="//region: ---------------------- Similarity" FOLDED="true" ID="ID_207381072" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="private double similarity(String s1, String s2) {" ID="ID_1103498006" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="private int computeEditDistance(String s1, String s2) {" ID="ID_1738196718" CREATED="1616167740406" MODIFIED="1616167740406"/>
</node>
<node TEXT="//region: ---------------------- Getting files info from drive" FOLDED="true" ID="ID_673002340" CREATED="1616167740406" MODIFIED="1616167740406">
<node TEXT="def static listFilesFromDrive(rootNode){" ID="ID_135376461" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static getFilter(n) {" ID="ID_567852337" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static toRegex(texto){" ID="ID_200366427" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static getMaxDepth(n, defaultMaxDepth = -1) {" STYLE_REF="pendingTask" ID="ID_1602508196" CREATED="1616167740406" MODIFIED="1623451124192"/>
<node TEXT="def static getCheckBroken(n, defaultCheck = 0) {" ID="ID_1701313601" CREATED="1616167740406" MODIFIED="1616167740406"/>
<node TEXT="def static getMarkMoved(n, defaultMark = 0) {" ID="ID_1427605012" CREATED="1616167740406" MODIFIED="1616167740406"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="build" ID="ID_1037823891" CREATED="1616167740224" MODIFIED="1673969744920" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/build/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      gradle lo administra
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="11-01-23 16:12" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T16:12-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 16:11" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T16:11-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="classes" STYLE_REF="locked" ID="ID_492783989" CREATED="1642350936140" MODIFIED="1673976392400" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/build/classes/">
<attribute NAME="lastModifiedTime" VALUE="15-01-22 00:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T00:33-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:58" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:58-0300|datetime"/>
<attribute NAME="creationTime" VALUE="15-01-22 00:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T00:33-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
<node TEXT="tmp" STYLE_REF="locked" ID="ID_1705582526" CREATED="1642350936328" MODIFIED="1673976403646" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/build/tmp/">
<attribute NAME="lastModifiedTime" VALUE="15-01-22 01:19" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T01:19-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:58" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:58-0300|datetime"/>
<attribute NAME="creationTime" VALUE="15-01-22 00:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T00:33-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="lib" STYLE_REF="file_folder" ID="ID_930264566" CREATED="1616167740232" MODIFIED="1673969744922" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/lib/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - aquí se crea nuevo libreria .jar
    </p>
    <p>
      - agregar aquí otras librerías que se requieran
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:30" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:30-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:53" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:53-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator.jar" ID="ID_1873606824" CREATED="1673976318687" MODIFIED="1673976576821" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/lib/MapDriveInator.jar"/>
</node>
</node>
<node TEXT="scripts" STYLE_REF="file_folder" ID="ID_1180592192" CREATED="1616167740367" MODIFIED="1673969744925" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van los scripts que se llaman desde el menú
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<node TEXT="importMDIStyles" ID="ID_50035749" CREATED="1654875862445" MODIFIED="1673983897813"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.pseudofreeplaneapi.UserStyles as us
    </p>
    <p>
      
    </p>
    <p>
      //region: opens template map
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sep&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= File.separator
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def userDir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= c.userDirectory.path
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def mapFileName = &quot;MDI styles template.mm&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def pathName&nbsp;&nbsp;&nbsp;&nbsp;= userDir + sep + &quot;templates&quot; + sep + &quot;MapDriveInator&quot; + sep + mapFileName
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//return &quot;Does the file: '${pathName}' exist? :&nbsp;&nbsp;&nbsp;${exists(pathName)}&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sourceMap&nbsp;&nbsp;&nbsp;= getMapFromPath(pathName, false) //usar mapa indicado (pero oculto)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def targetMap = node.map&nbsp;&nbsp;// --&gt; active map
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap) //, {it.text.startsWith('mdi_')})
    </p>
    <p>
      
    </p>
    <p>
      //Other use case examples on how to use edofro.pseudofreeplaneapi.UserStyles.copyUserStyles
    </p>
    <p>
      /*
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myString = 'ToM_goto'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myList = 'ToM_nextPage,ToM_goto,ToM_showNode'.split(',')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myClosure =&nbsp;&nbsp;{it.text.contains('u')}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def myClosure2 =&nbsp;&nbsp;{it.text.startsWith('ToM_')}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myString)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myList)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myClosure)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;us.copyUserStyles(sourceMap, targetMap, myClosure2)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      // end:
    </p>
    <p>
      
    </p>
    <p>
      // region: --------------------------- help methods ------------------------
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def getMapFromPath(filePath, withView){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(exists(filePath)){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def m = c.mapLoader(filePath)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(withView) m.withView()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return m.getMindMap()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def exists(String path){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exists(new File(path))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def exists(File file){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file.isFile()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      // end:
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="CreateBaseFolderNode.groovy" ID="ID_1667255103" CREATED="1616167740406" MODIFIED="1673970404175" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/CreateBaseFolderNode.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="25-02-21 13:27" OBJECT="org.freeplane.features.format.FormattedDate|2021-02-25T13:27-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="475" OBJECT="org.freeplane.features.format.FormattedNumber|475|#,##0"/>
</node>
<node TEXT="MapDriveInator.groovy" FOLDED="true" ID="ID_696665609" CREATED="1616167740407" MODIFIED="1673970386868" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/MapDriveInator.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 16:35" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T16:35-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="26.364" OBJECT="org.freeplane.features.format.FormattedNumber|26364|#,##0"/>
<node TEXT="filesOK" ID="ID_1203036016" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="intersect" LOCALIZED_STYLE_REF="default" ID="ID_1831815539" CREATED="1616167740410" MODIFIED="1661557082941">
<node TEXT="listFiles" ID="ID_1790725510" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ff9999"/>
<node TEXT="" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_1841954890" CREATED="1616167740410" MODIFIED="1661557083039">
<icon BUILTIN="addition"/>
<node TEXT="listCons" FOLDED="true" ID="ID_364098745" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xConsistentes" FOLDED="true" ID="ID_259971121" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xSingles" ID="ID_192183190" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#66ff99"/>
</node>
</node>
<node TEXT="listClonCons" FOLDED="true" ID="ID_152859207" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonesConsistentes" FOLDED="true" ID="ID_571626962" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClones" ID="ID_1619063380" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ccff66"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="filesSinNodos" STYLE_REF="completedTask" FOLDED="true" ID="ID_1908821722" CREATED="1616167740410" MODIFIED="1623451291584"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      string
    </p>
  </body>
</html></richcontent>
<node TEXT="filesNOK" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1935312180" CREATED="1616167740410" MODIFIED="1623451124590">
<node TEXT="listCons" FOLDED="true" ID="ID_177171427" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xConsistentes" FOLDED="true" ID="ID_1339230105" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xSingles" ID="ID_963121278" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#66ff99"/>
</node>
</node>
<node TEXT="listFiles" ID="ID_929866313" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ff9999"/>
<node TEXT="listClonCons" FOLDED="true" ID="ID_1247140914" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonesConsistentes" FOLDED="true" ID="ID_1601169700" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClones" ID="ID_1199012358" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ccff66"/>
</node>
</node>
</node>
<node TEXT="listInConsLink" FOLDED="true" ID="ID_59426809" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xInconsistentes" FOLDED="true" ID="ID_1109643201" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_121091108" CONTENT_ID="ID_963121278"/>
</node>
</node>
<node TEXT="listInConsPath" FOLDED="true" ID="ID_245104920" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_548187366" TREE_ID="ID_1109643201">
<node ID="ID_478919051" CONTENT_ID="ID_963121278"/>
</node>
</node>
<node TEXT="listClonInConsLink" FOLDED="true" ID="ID_1668216591" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonesInconsistentes" FOLDED="true" ID="ID_920369337" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonesPend" STYLE_REF="completedTask" FOLDED="true" ID="ID_1710238030" CREATED="1616167740410" MODIFIED="1623451292060">
<node TEXT="listClonConsOK" FOLDED="true" ID="ID_60655704" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_1925442597" CONTENT_ID="ID_1247140914">
<node ID="ID_219127024" CONTENT_ID="ID_1601169700">
<node ID="ID_1115430238" CONTENT_ID="ID_1199012358"/>
</node>
</node>
<node ID="ID_74119498" CONTENT_ID="ID_929866313"/>
</node>
<node ID="ID_212911812" CONTENT_ID="ID_1199012358"/>
</node>
</node>
</node>
<node TEXT="listClonInConsPath" FOLDED="true" ID="ID_1418086433" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_1089356747" TREE_ID="ID_920369337">
<node ID="ID_696907441" TREE_ID="ID_1710238030">
<node ID="ID_280970367" TREE_ID="ID_60655704">
<node ID="ID_650689880" CONTENT_ID="ID_1247140914">
<node ID="ID_655040986" CONTENT_ID="ID_1601169700">
<node ID="ID_1528191809" CONTENT_ID="ID_1199012358"/>
</node>
</node>
<node ID="ID_600856246" CONTENT_ID="ID_929866313"/>
</node>
<node ID="ID_1105625129" CONTENT_ID="ID_1199012358"/>
</node>
</node>
</node>
</node>
<node TEXT="nodosSinFile" STYLE_REF="completedTask" ID="ID_175975032" CREATED="1616167740410" MODIFIED="1623451292181"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      xFile
    </p>
  </body>
</html></richcontent>
<node TEXT="nodosSinFileA" FOLDED="true" ID="ID_1656247803" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xConsistentes" ID="ID_1806689776" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xSingles" ID="ID_21439795" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#66ff99"/>
</node>
<node TEXT="nSinFileA" FOLDED="true" ID="ID_800865262" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="listCons" ID="ID_176128609" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_1002083296" CONTENT_ID="ID_1806689776">
<node ID="ID_631870955" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node TEXT="listFiles" ID="ID_1376485010" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ff9999"/>
</node>
</node>
<node TEXT="nodosSinFileB" ID="ID_1206363834" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xInconsistentes" FOLDED="true" ID="ID_39219233" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_1944147998" CONTENT_ID="ID_21439795"/>
</node>
<node TEXT="xLinkOk" STYLE_REF="pendingTask" ID="ID_301903505" CREATED="1616167740410" MODIFIED="1623451125136">
<node ID="ID_1879782725" CONTENT_ID="ID_39219233">
<node ID="ID_1298942704" CONTENT_ID="ID_21439795"/>
</node>
<node TEXT="filesNOK" STYLE_REF="pendingTask" ID="ID_1220310224" CREATED="1616167740410" MODIFIED="1623451125990">
<node TEXT="" LOCALIZED_STYLE_REF="default" ID="ID_1786878609" CREATED="1616167740410" MODIFIED="1661557083148">
<icon BUILTIN="subtraction"/>
<node ID="ID_1622141118" CONTENT_ID="ID_1376485010"/>
<node TEXT="" LOCALIZED_STYLE_REF="default" ID="ID_251033483" CREATED="1616167740410" MODIFIED="1661557083255">
<icon BUILTIN="addition"/>
<node ID="ID_1865212911" CONTENT_ID="ID_176128609">
<node TEXT="links de" LOCALIZED_STYLE_REF="default" ID="ID_1644053004" CREATED="1616167740410" MODIFIED="1661557083380">
<node ID="ID_403389418" CONTENT_ID="ID_1806689776">
<node TEXT="path==link" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_909460739" CREATED="1616167740410" MODIFIED="1661557083474">
<node ID="ID_1469238076" CONTENT_ID="ID_21439795"/>
</node>
</node>
</node>
</node>
<node TEXT="listClonCons" ID="ID_754602089" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="links de" LOCALIZED_STYLE_REF="default" ID="ID_367991008" CREATED="1616167740410" MODIFIED="1661557083552">
<node TEXT="xClonesConsistentes" ID="ID_1870406343" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="path==link" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_88265315" CREATED="1616167740410" MODIFIED="1661557083615">
<node TEXT="xClones" ID="ID_821283923" CREATED="1616167740410" MODIFIED="1616167740410" BACKGROUND_COLOR="#ccff66"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="xPathOk" STYLE_REF="completedTask" FOLDED="true" ID="ID_203613511" CREATED="1616167740410" MODIFIED="1623451293574">
<node ID="ID_97254618" CONTENT_ID="ID_39219233">
<node ID="ID_1868020298" CONTENT_ID="ID_21439795"/>
</node>
<node ID="ID_10803416" CONTENT_ID="ID_1220310224">
<node ID="ID_6296068" CONTENT_ID="ID_176128609">
<node ID="ID_1586358044" CONTENT_ID="ID_1806689776">
<node ID="ID_1924149081" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_237439986" CONTENT_ID="ID_1376485010"/>
<node ID="ID_1784119181" CONTENT_ID="ID_754602089">
<node ID="ID_60178414" CONTENT_ID="ID_1870406343">
<node ID="ID_1456575820" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="nodosSinFileC" FOLDED="true" ID="ID_592029034" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonesPend" FOLDED="true" ID="ID_428886837" CREATED="1616167740410" MODIFIED="1616167740410">
<node TEXT="xClonLinkOk" STYLE_REF="pendingTask" FOLDED="true" ID="ID_44360888" CREATED="1616167740410" MODIFIED="1623451182007">
<node TEXT="filesNOK2" FOLDED="true" ID="ID_545920824" CREATED="1616167740410" MODIFIED="1616167740410">
<node ID="ID_1777035119" CONTENT_ID="ID_1220310224">
<node ID="ID_326888382" CONTENT_ID="ID_176128609">
<node ID="ID_61742434" CONTENT_ID="ID_1806689776">
<node ID="ID_1166999044" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_559771302" CONTENT_ID="ID_1376485010"/>
<node ID="ID_1383987441" CONTENT_ID="ID_754602089">
<node ID="ID_333147274" CONTENT_ID="ID_1870406343">
<node ID="ID_853070761" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
<node ID="ID_422140638" TREE_ID="ID_301903505">
<node ID="ID_491855388" CONTENT_ID="ID_39219233">
<node ID="ID_897278531" CONTENT_ID="ID_21439795"/>
</node>
<node ID="ID_1375123441" CONTENT_ID="ID_1220310224">
<node ID="ID_1773196103" CONTENT_ID="ID_176128609">
<node ID="ID_1284471061" CONTENT_ID="ID_1806689776">
<node ID="ID_1935408245" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_1878384127" CONTENT_ID="ID_1376485010"/>
<node ID="ID_1110535140" CONTENT_ID="ID_754602089">
<node ID="ID_1622195424" CONTENT_ID="ID_1870406343">
<node ID="ID_445050008" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
<node ID="ID_927370102" TREE_ID="ID_203613511">
<node ID="ID_1132723485" CONTENT_ID="ID_39219233">
<node ID="ID_946655840" CONTENT_ID="ID_21439795"/>
</node>
<node ID="ID_1206508347" CONTENT_ID="ID_1220310224">
<node ID="ID_676407720" CONTENT_ID="ID_176128609">
<node ID="ID_1359097908" CONTENT_ID="ID_1806689776">
<node ID="ID_1667647532" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_486884952" CONTENT_ID="ID_1376485010"/>
<node ID="ID_1632652988" CONTENT_ID="ID_754602089">
<node ID="ID_104104730" CONTENT_ID="ID_1870406343">
<node ID="ID_1934715418" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="xClonesPend" STYLE_REF="completedTask" FOLDED="true" ID="ID_163203373" CREATED="1616167740411" MODIFIED="1623451293773">
<node TEXT="listClonConsOK" FOLDED="true" ID="ID_1551315602" CREATED="1616167740411" MODIFIED="1616167740411">
<node ID="ID_479305734" CONTENT_ID="ID_754602089">
<node ID="ID_109583850" CONTENT_ID="ID_1870406343">
<node ID="ID_1933195217" CONTENT_ID="ID_821283923"/>
</node>
</node>
<node ID="ID_1320691779" CONTENT_ID="ID_1376485010"/>
</node>
<node ID="ID_893384798" CONTENT_ID="ID_821283923"/>
</node>
</node>
<node TEXT="xClonPathOk" STYLE_REF="completedTask" FOLDED="true" ID="ID_1556713454" CREATED="1616167740411" MODIFIED="1623451293241">
<node ID="ID_1655036037" TREE_ID="ID_545920824">
<node ID="ID_1437595330" CONTENT_ID="ID_1220310224">
<node ID="ID_407842887" CONTENT_ID="ID_176128609">
<node ID="ID_527941864" CONTENT_ID="ID_1806689776">
<node ID="ID_29757321" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_1132985544" CONTENT_ID="ID_1376485010"/>
<node ID="ID_879483224" CONTENT_ID="ID_754602089">
<node ID="ID_1622419214" CONTENT_ID="ID_1870406343">
<node ID="ID_1148580592" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
<node ID="ID_371350622" CONTENT_ID="ID_301903505">
<node ID="ID_1058715314" CONTENT_ID="ID_39219233">
<node ID="ID_1966535187" CONTENT_ID="ID_21439795"/>
</node>
<node ID="ID_1289823636" CONTENT_ID="ID_1220310224">
<node ID="ID_713323319" CONTENT_ID="ID_176128609">
<node ID="ID_1603010292" CONTENT_ID="ID_1806689776">
<node ID="ID_578029796" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_38398478" CONTENT_ID="ID_1376485010"/>
<node ID="ID_888051499" CONTENT_ID="ID_754602089">
<node ID="ID_1391826587" CONTENT_ID="ID_1870406343">
<node ID="ID_771566864" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
<node ID="ID_1725468449" CONTENT_ID="ID_203613511">
<node ID="ID_145433812" CONTENT_ID="ID_39219233">
<node ID="ID_1182570188" CONTENT_ID="ID_21439795"/>
</node>
<node ID="ID_258589948" CONTENT_ID="ID_1220310224">
<node ID="ID_403126037" CONTENT_ID="ID_176128609">
<node ID="ID_1524385760" CONTENT_ID="ID_1806689776">
<node ID="ID_194234563" CONTENT_ID="ID_21439795"/>
</node>
</node>
<node ID="ID_1964378765" CONTENT_ID="ID_1376485010"/>
<node ID="ID_374312882" CONTENT_ID="ID_754602089">
<node ID="ID_1633976915" CONTENT_ID="ID_1870406343">
<node ID="ID_1748407745" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
</node>
<node ID="ID_1219910202" CONTENT_ID="ID_163203373">
<node ID="ID_945639116" CONTENT_ID="ID_1551315602">
<node ID="ID_1627044380" CONTENT_ID="ID_754602089">
<node ID="ID_1247259287" CONTENT_ID="ID_1870406343">
<node ID="ID_583754182" CONTENT_ID="ID_821283923"/>
</node>
</node>
<node ID="ID_34067485" CONTENT_ID="ID_1376485010"/>
</node>
<node ID="ID_1863436080" CONTENT_ID="ID_821283923"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="pathOK" FOLDED="true" ID="ID_166971102" CREATED="1616167740411" MODIFIED="1616167740411"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      xFile
    </p>
  </body>
</html></richcontent>
<node TEXT="xPathOk" STYLE_REF="completedTask" FOLDED="true" ID="ID_676787321" CREATED="1616167740411" MODIFIED="1623451294211">
<node TEXT="xInconsistentes" FOLDED="true" ID="ID_882919079" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xSingles" ID="ID_1487006220" CREATED="1616167740411" MODIFIED="1616167740411" BACKGROUND_COLOR="#66ff99"/>
</node>
<node TEXT="filesNOK" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1942377905" CREATED="1616167740411" MODIFIED="1623451184792">
<node TEXT="listCons" FOLDED="true" ID="ID_1482842557" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xConsistentes" FOLDED="true" ID="ID_471460629" CREATED="1616167740411" MODIFIED="1616167740411">
<node ID="ID_650452086" CONTENT_ID="ID_1487006220"/>
</node>
</node>
<node TEXT="listFiles" ID="ID_1521362622" CREATED="1616167740411" MODIFIED="1616167740411" BACKGROUND_COLOR="#ff9999"/>
<node TEXT="listClonCons" FOLDED="true" ID="ID_42225888" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xClonesConsistentes" FOLDED="true" ID="ID_1297356143" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xClones" ID="ID_1642014499" CREATED="1616167740411" MODIFIED="1616167740411" BACKGROUND_COLOR="#ccff66"/>
</node>
</node>
</node>
</node>
<node TEXT="xClonPathOk" STYLE_REF="completedTask" FOLDED="true" ID="ID_53499464" CREATED="1616167740411" MODIFIED="1623451293989">
<node TEXT="filesNOK2" FOLDED="true" ID="ID_316093081" CREATED="1616167740411" MODIFIED="1616167740411">
<node ID="ID_1053047975" CONTENT_ID="ID_1942377905">
<node ID="ID_849683402" CONTENT_ID="ID_1482842557">
<node ID="ID_975698539" CONTENT_ID="ID_471460629">
<node ID="ID_1854561384" CONTENT_ID="ID_1487006220"/>
</node>
</node>
<node ID="ID_1830801477" CONTENT_ID="ID_1521362622"/>
<node ID="ID_1706272437" CONTENT_ID="ID_42225888">
<node ID="ID_742685122" CONTENT_ID="ID_1297356143">
<node ID="ID_1159370051" CONTENT_ID="ID_1642014499"/>
</node>
</node>
</node>
<node TEXT="xLinkOk" STYLE_REF="pendingTask" FOLDED="true" ID="ID_165500006" CREATED="1616167740411" MODIFIED="1623451183387">
<node ID="ID_466201913" CONTENT_ID="ID_882919079">
<node ID="ID_510303765" CONTENT_ID="ID_1487006220"/>
</node>
<node ID="ID_456473891" CONTENT_ID="ID_1942377905">
<node ID="ID_774610106" CONTENT_ID="ID_1482842557">
<node ID="ID_920210077" CONTENT_ID="ID_471460629">
<node ID="ID_1735607370" CONTENT_ID="ID_1487006220"/>
</node>
</node>
<node ID="ID_1314307281" CONTENT_ID="ID_1521362622"/>
<node ID="ID_1889270776" CONTENT_ID="ID_42225888">
<node ID="ID_131721913" CONTENT_ID="ID_1297356143">
<node ID="ID_1774963861" CONTENT_ID="ID_1642014499"/>
</node>
</node>
</node>
</node>
<node ID="ID_1618400576" CONTENT_ID="ID_676787321">
<node ID="ID_1532942374" CONTENT_ID="ID_882919079">
<node ID="ID_629789235" CONTENT_ID="ID_1487006220"/>
</node>
<node ID="ID_1333699265" CONTENT_ID="ID_1942377905">
<node ID="ID_698882817" CONTENT_ID="ID_1482842557">
<node ID="ID_831144659" CONTENT_ID="ID_471460629">
<node ID="ID_1999630471" CONTENT_ID="ID_1487006220"/>
</node>
</node>
<node ID="ID_804855921" CONTENT_ID="ID_1521362622"/>
<node ID="ID_1717237187" CONTENT_ID="ID_42225888">
<node ID="ID_1824390791" CONTENT_ID="ID_1297356143">
<node ID="ID_1162137455" CONTENT_ID="ID_1642014499"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="xClonesPend" STYLE_REF="completedTask" FOLDED="true" ID="ID_958281473" CREATED="1616167740411" MODIFIED="1623451294301">
<node TEXT="listClonConsOK" FOLDED="true" ID="ID_211458633" CREATED="1616167740411" MODIFIED="1616167740411">
<node ID="ID_1504958383" CONTENT_ID="ID_42225888">
<node ID="ID_436214303" CONTENT_ID="ID_1297356143">
<node ID="ID_37344886" CONTENT_ID="ID_1642014499"/>
</node>
</node>
<node ID="ID_1150018936" CONTENT_ID="ID_1521362622"/>
</node>
<node ID="ID_569114904" CONTENT_ID="ID_1642014499"/>
</node>
</node>
</node>
<node TEXT="linkOK" FOLDED="true" ID="ID_1735728940" CREATED="1616167740411" MODIFIED="1616167740411"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      xFile
    </p>
  </body>
</html></richcontent>
<node TEXT="xLinkOk" STYLE_REF="pendingTask" FOLDED="true" ID="ID_939656994" CREATED="1616167740411" MODIFIED="1623451186972">
<node TEXT="xInconsistentes" FOLDED="true" ID="ID_1240757332" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xSingles" ID="ID_621420174" CREATED="1616167740411" MODIFIED="1616167740411" BACKGROUND_COLOR="#66ff99"/>
</node>
<node TEXT="filesNOK" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1552780683" CREATED="1616167740411" MODIFIED="1623451188367">
<node TEXT="listCons" FOLDED="true" ID="ID_525400812" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xConsistentes" FOLDED="true" ID="ID_1401234894" CREATED="1616167740411" MODIFIED="1616167740411">
<node ID="ID_1088027698" CONTENT_ID="ID_621420174"/>
</node>
</node>
<node TEXT="listFiles" ID="ID_1402386501" CREATED="1616167740411" MODIFIED="1616167740411" BACKGROUND_COLOR="#ff9999"/>
<node TEXT="listClonCons" FOLDED="true" ID="ID_1038617065" CREATED="1616167740411" MODIFIED="1616167740411">
<node TEXT="xClonesConsistentes" FOLDED="true" ID="ID_1902220136" CREATED="1616167740412" MODIFIED="1616167740412">
<node TEXT="xClones" ID="ID_1309731604" CREATED="1616167740412" MODIFIED="1616167740412" BACKGROUND_COLOR="#ccff66"/>
</node>
</node>
</node>
</node>
<node TEXT="xClonLinkOk" STYLE_REF="pendingTask" FOLDED="true" ID="ID_182148487" CREATED="1616167740412" MODIFIED="1623451185671">
<node TEXT="filesNOK2" FOLDED="true" ID="ID_1469436836" CREATED="1616167740412" MODIFIED="1616167740412">
<node ID="ID_1422418701" CONTENT_ID="ID_1552780683">
<node ID="ID_222907914" CONTENT_ID="ID_525400812">
<node ID="ID_678535606" CONTENT_ID="ID_1401234894">
<node ID="ID_1479973158" CONTENT_ID="ID_621420174"/>
</node>
</node>
<node ID="ID_1684988844" CONTENT_ID="ID_1402386501"/>
<node ID="ID_1848206456" CONTENT_ID="ID_1038617065">
<node ID="ID_1985289491" CONTENT_ID="ID_1902220136">
<node ID="ID_251451392" CONTENT_ID="ID_1309731604"/>
</node>
</node>
</node>
<node ID="ID_1507879118" CONTENT_ID="ID_939656994">
<node ID="ID_251654722" CONTENT_ID="ID_1240757332">
<node ID="ID_748351593" CONTENT_ID="ID_621420174"/>
</node>
<node ID="ID_1489023026" CONTENT_ID="ID_1552780683">
<node ID="ID_863037390" CONTENT_ID="ID_525400812">
<node ID="ID_1295396105" CONTENT_ID="ID_1401234894">
<node ID="ID_534125346" CONTENT_ID="ID_621420174"/>
</node>
</node>
<node ID="ID_1043868927" CONTENT_ID="ID_1402386501"/>
<node ID="ID_1268050860" CONTENT_ID="ID_1038617065">
<node ID="ID_738208970" CONTENT_ID="ID_1902220136">
<node ID="ID_772267544" CONTENT_ID="ID_1309731604"/>
</node>
</node>
</node>
</node>
<node TEXT="xPathOk" STYLE_REF="completedTask" FOLDED="true" ID="ID_885402604" CREATED="1616167740412" MODIFIED="1623451294376">
<node ID="ID_12883716" CONTENT_ID="ID_1240757332">
<node ID="ID_644632813" CONTENT_ID="ID_621420174"/>
</node>
<node ID="ID_1869621478" CONTENT_ID="ID_1552780683">
<node ID="ID_929451724" CONTENT_ID="ID_525400812">
<node ID="ID_1330167170" CONTENT_ID="ID_1401234894">
<node ID="ID_1465895975" CONTENT_ID="ID_621420174"/>
</node>
</node>
<node ID="ID_1652299607" CONTENT_ID="ID_1402386501"/>
<node ID="ID_1255117354" CONTENT_ID="ID_1038617065">
<node ID="ID_592207977" CONTENT_ID="ID_1902220136">
<node ID="ID_1813911429" CONTENT_ID="ID_1309731604"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="xClonesPend" STYLE_REF="completedTask" FOLDED="true" ID="ID_592504102" CREATED="1616167740412" MODIFIED="1623451294465">
<node TEXT="listClonConsOK" FOLDED="true" ID="ID_631156204" CREATED="1616167740412" MODIFIED="1616167740412">
<node ID="ID_1445783442" CONTENT_ID="ID_1038617065">
<node ID="ID_153587511" CONTENT_ID="ID_1902220136">
<node ID="ID_1622897209" CONTENT_ID="ID_1309731604"/>
</node>
</node>
<node ID="ID_487131511" CONTENT_ID="ID_1402386501"/>
</node>
<node ID="ID_1855024003" CONTENT_ID="ID_1309731604"/>
</node>
</node>
</node>
</node>
<node TEXT="ImportJustFolders.groovy" ID="ID_1971460697" CREATED="1616167740412" MODIFIED="1673969744930" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/ImportJustFolders.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.916" OBJECT="org.freeplane.features.format.FormattedNumber|1916|#,##0"/>
</node>
<node TEXT="DistributeNewNodes.groovy" ID="ID_565866031" CREATED="1616167740413" MODIFIED="1673969744932" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/DistributeNewNodes.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 16:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T16:33-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="5.820" OBJECT="org.freeplane.features.format.FormattedNumber|5820|#,##0"/>
</node>
<node TEXT="checkMissingFileNodes.groovy" ID="ID_1194216259" CREATED="1616167740413" MODIFIED="1673969744934" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/checkMissingFileNodes.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="535" OBJECT="org.freeplane.features.format.FormattedNumber|535|#,##0"/>
</node>
<node TEXT="createFilesFromNotes.groovy" ID="ID_51150602" CREATED="1616167740414" MODIFIED="1673969738501" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/createFilesFromNotes.groovy"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-03-21 17:06" OBJECT="org.freeplane.features.format.FormattedDate|2021-03-17T17:06-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.026" OBJECT="org.freeplane.features.format.FormattedNumber|1026|#,##0"/>
</node>
<node TEXT="selected node&#xa; and descendants" STYLE_REF="Organizador" ID="ID_1531851607" CREATED="1616167740415" MODIFIED="1616167740415">
<node TEXT="TimeStamps" STYLE_REF="Organizador" ID="ID_1635637876" CREATED="1616167740415" MODIFIED="1616167740415">
<node TEXT="ClearFileTimestampsInNodes.groovy" ID="ID_440439863" CREATED="1616167740415" MODIFIED="1673969738515" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/ClearFileTimestampsInNodes.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="11-10-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-10-11T19:18-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="948" OBJECT="org.freeplane.features.format.FormattedNumber|948|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/TimeStamps&quot;})
    </p>
    <p>
      
    </p>
    <p>
      // import java.nio.file.Files;
    </p>
    <p>
      // import java.nio.file.Path;
    </p>
    <p>
      // import java.nio.file.Paths;
    </p>
    <p>
      // import java.nio.file.attribute.BasicFileAttributes;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def nodo = node
    </p>
    <p>
      
    </p>
    <p>
      nodo.find{MDI.isLinkToFile(it)}.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// Path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;Paths.get(n.link.file.getAbsolutePath())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// BasicFileAttributes attr&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;Files.readAttributes(file, BasicFileAttributes.class);
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// n['creationTime'] = (attr.creationTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// n['lastAccessTime'] = (attr.lastAccessTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// n['lastModifiedTime'] = (attr.lastModifiedTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n['creationTime'] = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n['lastAccessTime'] = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n['lastModifiedTime'] = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n['fileSize'] = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      c.statusInfo =' timestamps attributes deleted'
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="GetFileTimestamps.groovy" ID="ID_1117487438" CREATED="1616167740415" MODIFIED="1673969738528" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/GetFileTimestamps.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="11-10-20 20:21" OBJECT="org.freeplane.features.format.FormattedDate|2020-10-11T20:21-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.137" OBJECT="org.freeplane.features.format.FormattedNumber|1137|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/TimeStamps&quot;})
    </p>
    <p>
      
    </p>
    <p>
      import java.nio.file.Files;
    </p>
    <p>
      import java.nio.file.Path;
    </p>
    <p>
      import java.nio.file.Paths;
    </p>
    <p>
      import java.nio.file.attribute.BasicFileAttributes;
    </p>
    <p>
      
    </p>
    <p>
      def nodo = node
    </p>
    <p>
      
    </p>
    <p>
      nodo.find{MDI.isLinkToFile(it)}.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if (n.link.file.exists()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;Paths.get(n.link.file.getAbsolutePath())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BasicFileAttributes attr&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;Files.readAttributes(file, BasicFileAttributes.class);
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def previousModifiedTime =&nbsp;&nbsp;n['lastModifiedTime']
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n['lastModifiedTime'] = (attr.lastModifiedTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n['lastAccessTime'] = (attr.lastAccessTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n['creationTime'] = (attr.creationTime().toInstant().toDate().format('yyyy-MM-dd HH:mm'))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n['fileSize'] = attr.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def i = n.attributes.findFirst('fileSize')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.attributes.setFormat(i,'#,##0')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n['modifiedFile'] = n['lastModifiedTime']!=previousModifiedTime?true:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;} else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MDI.markAsBroken(n,true,false)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SortByTimestamp.groovy" ID="ID_81293279" CREATED="1616167740416" MODIFIED="1673969738537" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/SortByTimestamp.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="22-08-20 18:21" OBJECT="org.freeplane.features.format.FormattedDate|2020-08-22T18:21-0400|datetime"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.450" OBJECT="org.freeplane.features.format.FormattedNumber|1450|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/TimeStamps&quot;})
    </p>
    <p>
      
    </p>
    <p>
      //region: main
    </p>
    <p>
      def fileAttr = getSortOrder(node)
    </p>
    <p>
      if(fileAttr){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sortRecursively(node, fileAttr)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo= '-------------------- nodes sorted by ' + fileAttr + ' --------------------'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.select(node)
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo= '-------------------- sort action cancelled --------------------'
    </p>
    <p>
      }
    </p>
    <p>
      //end
    </p>
    <p>
      
    </p>
    <p>
      //region: define sort order
    </p>
    <p>
      def getSortOrder(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch(selectSortOrder(n)) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case '1' :
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 'lastAccessTime'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case '2' :
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 'lastModifiedTime'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case '3' :
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 'creationTime'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def selectSortOrder(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = 'node ${n}\n\nSort by: \n\n&nbsp;&nbsp;1.- lastAccessTime\n&nbsp;&nbsp;2.- lastModifiedTime\n&nbsp;&nbsp;3.- creationTime\n\n'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def b
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;do{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b = ui.showInputDialog(n.delegate, texto, '1')?.take(1)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;} while (b &amp;&amp; (!b.isNumber() || b.toInteger()&lt;=0 ||b.toInteger()&gt;3))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return b?:0
    </p>
    <p>
      }
    </p>
    <p>
      //end&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      //region: sorting
    </p>
    <p>
      def sortRecursively(nodo, attr){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(!nodo.leaf){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sortChildren(nodo, attr)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nodo.children.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sortRecursively(it, attr)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def sortChildren(n, attr){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sorted = new ArrayList(n.children).sort{ it[attr].getDate() }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sorted.each {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.moveTo(n, i++)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      //end
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="clear formats" STYLE_REF="Organizador" ID="ID_1237295602" CREATED="1616167740417" MODIFIED="1616167740417">
<node TEXT="unmarkMovedOrRenamedNodes.groovy" ID="ID_1993362688" CREATED="1616167740417" MODIFIED="1673969744936" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/unmarkMovedOrRenamedNodes.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="158" OBJECT="org.freeplane.features.format.FormattedNumber|158|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator&quot;})
    </p>
    <p>
      
    </p>
    <p>
      import MDI
    </p>
    <p>
      
    </p>
    <p>
      node.find{MDI.isMoved(it)}.each{MDI.markAsMoved(it,false)}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="unmarkNewNodes.groovy" ID="ID_545849997" CREATED="1616167740417" MODIFIED="1673969744938" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/unmarkNewNodes.groovy">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="151" OBJECT="org.freeplane.features.format.FormattedNumber|151|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator&quot;})
    </p>
    <p>
      
    </p>
    <p>
      import MDI
    </p>
    <p>
      
    </p>
    <p>
      node.find{MDI.isNew(it)}.each{MDI.markAsNew(it,false)}
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="unmarkModifiedFiles.groovy" ID="ID_639733378" CREATED="1616167740416" MODIFIED="1673969744939" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/unmarkModifiedFiles.groovy">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="365" OBJECT="org.freeplane.features.format.FormattedNumber|365|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/TimeStamps&quot;})
    </p>
    <p>
      
    </p>
    <p>
      // ui.informationMessage(node.find{it.attributes.containsKey('modifiedFile')}.size().toString())
    </p>
    <p>
      
    </p>
    <p>
      // ui.informationMessage(node.find{it['modifiedFile'] == 'true'}.size().toString())
    </p>
    <p>
      
    </p>
    <p>
      node.find{it.attributes.containsKey('modifiedFile')}.each{it['modifiedFile'] = null}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="group" STYLE_REF="Organizador" ID="ID_88598070" CREATED="1616167740418" MODIFIED="1616167740418">
<node TEXT="groupChildnodesBy.groovy" FOLDED="true" ID="ID_1701363166" CREATED="1616167740418" MODIFIED="1673969744942" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/groupChildnodesBy.groovy">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.360" OBJECT="org.freeplane.features.format.FormattedNumber|4360|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/Group&quot;})
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //println &quot;------------------------ grouping nodes ------------------------------&quot;
    </p>
    <p>
      
    </p>
    <p>
      gCases = 'Ext,creation YearMonth,creation Year,lastAccess YearMonth,lastAccess Year,lastModified YearMonth,lastModified Year'.split(',')
    </p>
    <p>
      
    </p>
    <p>
      nodo = node
    </p>
    <p>
      def groupingCase = getGroupingCase()
    </p>
    <p>
      if (groupingCase){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodos =&nbsp;&nbsp;nodo.children
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def grupos = addGrupos(nodos,[], groupingCase).sort() //creates list of strings with groupTexts. Starts with an empty list
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def groupNodes = createGroupNodes(nodo, grupos, firstWord(groupingCase)) //creates a node for each groupText and adds it to this list
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//moves each node to its corresponding groupNode
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groupNodes.each{gn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def cond = gn.text
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def matchingNodes = nodos.findAll{groupText(it,groupingCase)==cond}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;matchingNodes.each{mn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mn.moveTo(gn)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo = &quot; --- grouping canceled ---&quot;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //----------Methods-----------------------
    </p>
    <p>
      def getGroupingCase(){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = new StringBuilder()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; &quot;Select grouping criteria: \n(for time related grouping, 'Get File Timestamps' must have been applied to the branch before)\n\n&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gCases.eachWithIndex{gC, i -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt;&nbsp;&nbsp;i &lt;&lt; &quot; - &quot; &lt;&lt; gC &lt;&lt; '\n'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; '\n\n'
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def cancel = false
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def respOK = false
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def response
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while (!cancel &amp;&amp; !respOK){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = ui.showInputDialog(node.delegate, texto.toString(),'0')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cancel = !response?true:false
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;respOK = !cancel?response.isNumber() &amp;&amp; response.toDouble()&gt;=0 &amp;&amp; response.toDouble()&lt; gCases.size()?true:false:false
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;response?gCases[response.toDouble().toInteger()]:null
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //creates list of strings with groupTexts
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaNodos: node list to evaluate
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaGrupos: list of strings where the new groupTexts must be added
    </p>
    <p>
      def addGrupos(listaNodos, listaGrupos,gCase){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;listaNodos.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def grupo = groupText(n,gCase)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(grupo &amp;&amp; grupo !in listaGrupos){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;listaGrupos += grupo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return listaGrupos
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //gets group text from a node depending on the defined extracting condition
    </p>
    <p>
      // in this case the nodes in my map have filenames as their nodetexts and the grouping factor I want to use is the file extension, so, to get the groupText it extracts the substring after the last dot
    </p>
    <p>
      // for other grouping conditions this method must be changed
    </p>
    <p>
      def groupText(n,gcond = 'Ext'){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def response
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (gcond.toLowerCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'ext':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def texto = n.link.file?.name
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def i=texto?.lastIndexOf('.')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = i&gt;=1?texto.substring(i+1):null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['creation yearmonth', 'cym']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['creationTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['creation year', 'cy']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['creationTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['lastaccess yearmonth', 'laym']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastAccessTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['lastaccess year', 'lay']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastAccessTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['lastmodified yearmonth', 'lmym']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastModifiedTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['lastmodified year', 'lmy']:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastModifiedTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return response?:&quot;.noGroup&quot;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //returns a list of new nodes added as children to node &quot;n&quot;. For each string in &quot;groups&quot; it creates a new node.
    </p>
    <p>
      def createGroupNodes(n,groups, detailsTxt){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nods =[]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groups.each{g -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def gn = n.createChild(g)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gn.details = detailsTxt
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gn['group'] = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nods &lt;&lt; gn
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return nods
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //returns the first word of a string (ok, no, it returns the substring before a space)
    </p>
    <p>
      def firstWord(s){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i=s.indexOf(' ')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return i&gt;=0?s.substring(0,i):s //if no space then returns the whole string
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="grouping options" FOLDED="true" ID="ID_786243435" CREATED="1616167740419" MODIFIED="1616167740419">
<node TEXT="Ext" ID="ID_33358863" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="creation YearMonth" ID="ID_1597765394" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="creation Year" ID="ID_1779449502" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="lastAccess YearMonth" ID="ID_1023549483" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="lastAccess Year" ID="ID_853629856" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="lastModified YearMonth" ID="ID_870058553" CREATED="1616167740419" MODIFIED="1616167740419"/>
<node TEXT="lastModified Year" ID="ID_453104132" CREATED="1616167740419" MODIFIED="1616167740419"/>
</node>
</node>
<node TEXT="ungroupChildnodes.groovy" ID="ID_873893428" CREATED="1616167740419" MODIFIED="1673969738609" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/scripts/ungroupChildnodes.groovy">
<attribute NAME="lastModifiedTime" VALUE="11-09-20 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="251" OBJECT="org.freeplane.features.format.FormattedNumber|251|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SELECTED_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator/Group&quot;})
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodo = node
    </p>
    <p>
      
    </p>
    <p>
      def groupNodes =&nbsp;&nbsp;nodo.children.findAll{n -&gt; n['group']}
    </p>
    <p>
      
    </p>
    <p>
      groupNodes.each{gN -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gN.children.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.moveTo(nodo)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gN.delete()
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="zips" FOLDED="true" ID="ID_880600127" CREATED="1616167740371" MODIFIED="1673969744946" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="icons" ID="ID_1806972330" CREATED="1616167740371" MODIFIED="1673969744948" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/icons/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir íconos propios del AddOn
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:14-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_305856744" CREATED="1631460354268" MODIFIED="1673969744949" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/icons/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:14-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="doc" ID="ID_676804992" CREATED="1631461076561" MODIFIED="1673969744950" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/doc/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir algún documento o mapa adicional
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_283320947" CREATED="1631460354268" MODIFIED="1673969744951" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/doc/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="templates" ID="ID_1535051774" CREATED="1620659975335" MODIFIED="1673969744952" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/templates/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir mapa template
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:14-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator" ID="ID_1607178942" CREATED="1631460354268" MODIFIED="1673969744953" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/zips/templates/MapDriveInator/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:14-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="agregar template" STYLE_REF="pendingTask" ID="ID_1168481436" CREATED="1641650665842" MODIFIED="1641650673469"/>
<node TEXT="agregar script para copiar estilos a mapa" STYLE_REF="pendingTask" ID="ID_1314525875" CREATED="1641650675321" MODIFIED="1641650698176"/>
</node>
</node>
</node>
<node TEXT="images" FOLDED="true" ID="ID_513998056" CREATED="1631461312175" MODIFIED="1673969744955" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/images/">
<attribute NAME="lastModifiedTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="MapDriveInator-screenshot-1.png" STYLE_REF="pendingTask" FOLDED="true" ID="ID_331581636" CREATED="1616167740292" MODIFIED="1641490697962">
<node TEXT="128x77" ID="ID_752704389" CREATED="1616167740293" MODIFIED="1616167740293"/>
</node>
<node TEXT="MapDriveInator.png" STYLE_REF="pendingTask" FOLDED="true" ID="ID_907083898" CREATED="1616167740293" MODIFIED="1641490698696">
<node TEXT="53x32" ID="ID_1548828115" CREATED="1616167740293" MODIFIED="1616167740293"/>
</node>
<node TEXT="MapDriveInator-icon.png" STYLE_REF="pendingTask" FOLDED="true" ID="ID_199504070" CREATED="1616167740293" MODIFIED="1641490699399">
<node TEXT="27x16" ID="ID_100644585" CREATED="1616167740294" MODIFIED="1616167740294"/>
</node>
</node>
<node TEXT="MapDriveInator.mm" ID="ID_125229745" CREATED="1641504381816" MODIFIED="1673976542914" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/MapDriveInator.mm">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:39" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:39" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="20.478" OBJECT="org.freeplane.features.format.FormattedNumber|20478|#,##0"/>
</node>
<node TEXT="build.gradle" ID="ID_487055818" CREATED="1616167740297" MODIFIED="1673971963663" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/build.gradle">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="2.086" OBJECT="org.freeplane.features.format.FormattedNumber|2086|#,##0"/>
</node>
<node TEXT="generados automáticamente" STYLE_REF="Organizador" ID="ID_1941023859" CREATED="1616167740294" MODIFIED="1631461616556"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí voy reuniendo los que se generan automáticamente
    </p>
    <p>
      NO es folder
    </p>
  </body>
</html></richcontent>
<node TEXT="versiones anteriores" STYLE_REF="Organizador" ID="ID_423253710" CREATED="1616167740295" MODIFIED="1616167740295"/>
<node TEXT="MapDriveInator.mm.bak" ID="ID_703686871" CREATED="1673970106580" MODIFIED="1673976576824" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/MapDriveInator.mm.bak"/>
<node TEXT="MapDriveInator-v0.0.3.addon.mm" ID="ID_1473875230" CREATED="1673976318690" MODIFIED="1673976576826" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/MapDriveInator-v0.0.3.addon.mm"/>
<node TEXT="history.md" ID="ID_1399596341" CREATED="1673976318693" MODIFIED="1673976576827" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/history.md"/>
<node TEXT="version.properties" ID="ID_631139260" CREATED="1673976318697" MODIFIED="1673976576828" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator/version.properties"/>
</node>
</node>
<node TEXT="delete" FOLDED="true" ID="ID_780335546" CREATED="1641400492551" MODIFIED="1673969744963" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      carpeta para acumular archivos a borrar
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:30" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:30-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 12:12" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T12:12-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<node TEXT="MapDriveInator.jar" ID="ID_1216741150" CREATED="1642350936390" MODIFIED="1673969738731" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/MapDriveInator.jar">
<attribute NAME="lastModifiedTime" VALUE="15-01-22 01:19" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-15T01:19-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:53" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:53-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="9.051" OBJECT="org.freeplane.features.format.FormattedNumber|9051|#,##0"/>
</node>
<node TEXT="MDIv2.groovy" ID="ID_862730778" CREATED="1641650610052" MODIFIED="1673969744965" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/MDIv2.groovy">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:13-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="5.023" OBJECT="org.freeplane.features.format.FormattedNumber|5023|#,##0"/>
</node>
<node TEXT="Sync.groovy" ID="ID_1658667853" CREATED="1642350936468" MODIFIED="1673969738735" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/Sync.groovy">
<attribute NAME="lastModifiedTime" VALUE="14-01-22 20:09" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-14T20:09-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="691" OBJECT="org.freeplane.features.format.FormattedNumber|691|#,##0"/>
</node>
<node TEXT="CreateBaseFolderNode.groovy" ID="ID_518040309" CREATED="1616167740406" MODIFIED="1673969744965" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/CreateBaseFolderNode.groovy"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/MapDriveInator&quot;})
    </p>
    <p>
      
    </p>
    <p>
      import MDI
    </p>
    <p>
      
    </p>
    <p>
      baseFolderNode = MDI.obtainBaseFolder(node)
    </p>
    <p>
      if(baseFolderNode){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.select(baseFolderNode)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;baseFolderNode.style.name = 'baseFolder'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nameFilt = MDI.getFilter(baseFolderNode)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def maxD = MDI.getMaxDepth(baseFolderNode)
    </p>
    <p>
      }else{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(&quot;couldn't find the current 'baseFolderNode' or assign a new one \n\n (path between the selected node and the map's root)&quot;)
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="346" OBJECT="org.freeplane.features.format.FormattedNumber|346|#,##0"/>
</node>
<node TEXT="MapDriveInator-v0.0.2.addon.mm" ID="ID_1338490097" CREATED="1642350936484" MODIFIED="1673969744966" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/MapDriveInator-v0.0.2.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:54-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="37.509" OBJECT="org.freeplane.features.format.FormattedNumber|37509|#,##0"/>
</node>
<node TEXT="MapDriveInator.mm.bak" ID="ID_119328901" CREATED="1642350936515" MODIFIED="1673969744966" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/MapDriveInator.mm.bak">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:54-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="22.950" OBJECT="org.freeplane.features.format.FormattedNumber|22950|#,##0"/>
</node>
<node TEXT="version.properties" ID="ID_1983259881" CREATED="1642350936531" MODIFIED="1673969744967" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/delete/version.properties">
<attribute NAME="lastModifiedTime" VALUE="17-01-22 22:33" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T22:33-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:15-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="164" OBJECT="org.freeplane.features.format.FormattedNumber|164|#,##0"/>
</node>
</node>
<node TEXT="resources" STYLE_REF="file_folder" ID="ID_1697408639" CREATED="1631461043230" MODIFIED="1673969744970" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="mindmap" ID="ID_956395609" CREATED="1616167740423" MODIFIED="1616167740423">
<node TEXT="Map-Drive-Inator.mm" FOLDED="true" ID="ID_685781911" CREATED="1616167740423" MODIFIED="1673969744971" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/Map-Drive-Inator.mm">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="50.250" OBJECT="org.freeplane.features.format.FormattedNumber|50250|#,##0"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      este es un mapa de instrucciones
    </p>
  </body>
</html></richcontent>
<node TEXT="modificar estilo folder" STYLE_REF="Organizador" FOLDED="true" ID="ID_1744615156" CREATED="1616167740423" MODIFIED="1616167740423">
<node TEXT="conditional style debe llamar función de MDI" STYLE_REF="pendingTask" ID="ID_515761878" CREATED="1616167740423" MODIFIED="1623451188525"/>
<node TEXT="función debe ser compatible con Linux" STYLE_REF="pendingTask" ID="ID_180911851" CREATED="1616167740423" MODIFIED="1623451188699"/>
</node>
</node>
<node TEXT="updatesFoldersLikeMap_files" FOLDED="true" ID="ID_1565170154" CREATED="1616167740423" MODIFIED="1673969744972" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="16-01-23 12:17" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:17-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="8.192" OBJECT="org.freeplane.features.format.FormattedNumber|8192|#,##0"/>
<node TEXT="updatesFoldersLikeMap Img 001.png" ID="ID_619234156" CREATED="1616167740424" MODIFIED="1673969738770" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20001.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="29.269" OBJECT="org.freeplane.features.format.FormattedNumber|29269|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 003.png" ID="ID_238889045" CREATED="1616167740424" MODIFIED="1673969738772" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20003.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="29.275" OBJECT="org.freeplane.features.format.FormattedNumber|29275|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 004.png" ID="ID_1536471609" CREATED="1616167740424" MODIFIED="1673969738773" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20004.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="36.179" OBJECT="org.freeplane.features.format.FormattedNumber|36179|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 005.png" ID="ID_815937043" CREATED="1616167740425" MODIFIED="1673969738774" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20005.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="44.990" OBJECT="org.freeplane.features.format.FormattedNumber|44990|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 006.png" ID="ID_642676289" CREATED="1616167740425" MODIFIED="1673969738775" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20006.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="47.863" OBJECT="org.freeplane.features.format.FormattedNumber|47863|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 007.png" ID="ID_484042396" CREATED="1616167740425" MODIFIED="1673969738777" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20007.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="15.499" OBJECT="org.freeplane.features.format.FormattedNumber|15499|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 008.png" ID="ID_1179597338" CREATED="1616167740426" MODIFIED="1673969738778" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20008.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="33.957" OBJECT="org.freeplane.features.format.FormattedNumber|33957|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 009.png" ID="ID_441978424" CREATED="1616167740426" MODIFIED="1673969738780" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20009.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="23.041" OBJECT="org.freeplane.features.format.FormattedNumber|23041|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 011.png" ID="ID_1991212190" CREATED="1616167740426" MODIFIED="1673969738781" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20011.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="47.291" OBJECT="org.freeplane.features.format.FormattedNumber|47291|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 012.png" ID="ID_1590808200" CREATED="1616167740426" MODIFIED="1673969738783" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20012.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="63.448" OBJECT="org.freeplane.features.format.FormattedNumber|63448|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 013.png" ID="ID_1659555300" CREATED="1616167740427" MODIFIED="1673969738785" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20013.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="13.467" OBJECT="org.freeplane.features.format.FormattedNumber|13467|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 014.png" ID="ID_1725660397" CREATED="1616167740427" MODIFIED="1673969738787" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20014.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="22.674" OBJECT="org.freeplane.features.format.FormattedNumber|22674|#,##0"/>
</node>
<node TEXT="updatesFoldersLikeMap Img 015.png" ID="ID_1695103670" CREATED="1616167740427" MODIFIED="1673969738789" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/updatesFoldersLikeMap%20Img%20015.png">
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="creationTime" VALUE="23-07-20 20:36" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-23T20:36-0400|datetime"/>
<attribute NAME="fileSize" VALUE="18.797" OBJECT="org.freeplane.features.format.FormattedNumber|18797|#,##0"/>
</node>
<node TEXT="groupingExample 001.png" ID="ID_607274147" CREATED="1616167740428" MODIFIED="1673969738790" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/groupingExample%20001.png">
<attribute NAME="lastModifiedTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="fileSize" VALUE="47.480" OBJECT="org.freeplane.features.format.FormattedNumber|47480|#,##0"/>
</node>
<node TEXT="groupingExample 002.png" ID="ID_858882664" CREATED="1616167740428" MODIFIED="1673969738792" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/groupingExample%20002.png">
<attribute NAME="lastModifiedTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="fileSize" VALUE="54.897" OBJECT="org.freeplane.features.format.FormattedNumber|54897|#,##0"/>
</node>
<node TEXT="groupingExample 003.png" ID="ID_1915614281" CREATED="1616167740428" MODIFIED="1673969738793" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/resources/updatesFoldersLikeMap_files/groupingExample%20003.png">
<attribute NAME="lastModifiedTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-09-20 20:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-09-11T20:53-0300|datetime"/>
<attribute NAME="fileSize" VALUE="49.494" OBJECT="org.freeplane.features.format.FormattedNumber|49494|#,##0"/>
</node>
</node>
</node>
</node>
<node TEXT="ignoredByGitHub" ID="ID_434109182" CREATED="1641400458308" MODIFIED="1673969744975" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/ignoredByGitHub/"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder with files not to be copied to Github
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="11-01-23 11:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T11:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:34" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-01-23 11:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-11T11:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="versión sin librería" STYLE_REF="Organizador" ID="ID_218984627" CREATED="1616167740429" MODIFIED="1616167740429"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      borrar eventualmente
    </p>
  </body>
</html></richcontent>
<node TEXT="Map-Drive-Inator.groovy.bak" ID="ID_1653492165" CREATED="1616167740429" MODIFIED="1673969738818" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/ignoredByGitHub/Map-Drive-Inator.groovy.bak">
<attribute NAME="lastModifiedTime" VALUE="10-08-20 20:15" OBJECT="org.freeplane.features.format.FormattedDate|2020-08-10T20:15-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:58" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:58-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="37.200" OBJECT="org.freeplane.features.format.FormattedNumber|37200|#,##0"/>
</node>
</node>
<node TEXT="MDI To Addon.nppSession" ID="ID_732607886" CREATED="1673443869448" MODIFIED="1673969744976" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/ignoredByGitHub/MDI%20To%20Addon.nppSession">
<attribute NAME="lastModifiedTime" VALUE="18-01-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-18T10:42-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|datetime"/>
<attribute NAME="creationTime" VALUE="10-01-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T16:03-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.780" OBJECT="org.freeplane.features.format.FormattedNumber|5780|#,##0"/>
</node>
<node TEXT="prueba.mm" STYLE_REF="movedRenamed" ID="ID_1521875293" CREATED="1673974537952" MODIFIED="1673976688836" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/ignoredByGitHub/prueba.mm"/>
</node>
<node TEXT=".gitignore" STYLE_REF="discardedTask" ID="ID_204170711" CREATED="1640357004339" MODIFIED="1641497599007"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .gradle
    </p>
    <p>
      **/build/
    </p>
    <p>
      !src/**/build/
    </p>
    <p>
      
    </p>
    <p>
      # Ignore Gradle GUI config
    </p>
    <p>
      gradle-app.setting
    </p>
    <p>
      
    </p>
    <p>
      # Avoid ignoring Gradle wrapper jar file (.jar files are usually ignored)
    </p>
    <p>
      !gradle-wrapper.jar
    </p>
    <p>
      
    </p>
    <p>
      # Cache of project
    </p>
    <p>
      .gradletasknamecache
    </p>
    <p>
      
    </p>
    <p>
      # # Work around https://youtrack.jetbrains.com/issue/IDEA-116898
    </p>
    <p>
      # gradle/wrapper/gradle-wrapper.properties
    </p>
    <p>
      
    </p>
    <p>
      # Addon maps
    </p>
    <p>
      *.addon.mm
    </p>
    <p>
      *.mm.bak
    </p>
    <p>
      # version.properties
    </p>
    <p>
      
    </p>
    <p>
      # ignore .jar files
    </p>
    <p>
      *.jar
    </p>
    <p>
      
    </p>
    <p>
      # ignore some folders
    </p>
    <p>
      ignoredByGitHub/
    </p>
    <p>
      delete/
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="MapDriveInator project.mm" ID="ID_92180960" CREATED="1673446036099" MODIFIED="1673969986975" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/MapDriveInator%20project.mm">
<attribute NAME="lastModifiedTime" VALUE="17-01-23 12:35" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:35-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-23 12:35" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-17T12:35-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="16-01-23 12:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:10-0300|datetime"/>
<attribute NAME="fileSize" VALUE="531.360" OBJECT="org.freeplane.features.format.FormattedNumber|531360|#,##0"/>
<attribute NAME="modifiedFile" VALUE="true"/>
</node>
<node TEXT="LICENSE.md" ID="ID_69801780" CREATED="1624997519282" MODIFIED="1673969738856" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/LICENSE.md"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2022 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="06-01-22 14:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-06T14:42-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.073" OBJECT="org.freeplane.features.format.FormattedNumber|1073|#,##0"/>
</node>
<node TEXT="README.md" FOLDED="true" ID="ID_1216315313" CREATED="1616167740422" MODIFIED="1673969738865" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/README.md">
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="06-01-22 16:54" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-06T16:54-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="3.469" OBJECT="org.freeplane.features.format.FormattedNumber|3469|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Freeplane_Map-Drive-Inator
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;A groovy script to coordinate the disk's folder structure with the nodes structure in the mind map (back and forth)
    </p>
    <p>
      
    </p>
    <p>
      ## Features
    </p>
    <p>
      
    </p>
    <p>
      ____
    </p>
    <p>
      
    </p>
    <p>
      ### basic
    </p>
    <p>
      
    </p>
    <p>
      video 1: lo básico &lt;https://youtu.be/2vwd38rxAlY&gt;
    </p>
    <p>
      
    </p>
    <p>
      1. **import folder structure**&nbsp;&nbsp;
    </p>
    <p>
      you can import the folder structure of any folder in your drive
    </p>
    <p>
      
    </p>
    <p>
      2. **import only new files and folders**&nbsp;&nbsp;
    </p>
    <p>
      After the first import, Map-Drive-Inator imports only the new files and folders created in your drive without duplicating the allready existing one.
    </p>
    <p>
      
    </p>
    <p>
      3. **alerts about missing files**&nbsp;&nbsp;
    </p>
    <p>
      It alerts if any node links to a deleted or moved file.
    </p>
    <p>
      For example, if another program deletes, moves or renames a file, then MDI will alert you that a link in a node points to a missing file.
    </p>
    <p>
      
    </p>
    <p>
      4. **move file from one folder to another**&nbsp;&nbsp;
    </p>
    <p>
      if you move a 'file' node in your mindmap from one 'folder' node to another, the file gets moved in your drive also
    </p>
    <p>
      
    </p>
    <p>
      5. **create new folders**&nbsp;&nbsp;
    </p>
    <p>
      you can create nodes as folders in your map and move file nodes in it. MDI then creates the folders and moves the files into them.
    </p>
    <p>
      
    </p>
    <p>
      6. **rename files**&nbsp;&nbsp;
    </p>
    <p>
      if you modify the text of a file node, the file in the drive gets also renamed to this new text
    </p>
    <p>
      
    </p>
    <p>
      7. **rename folders**&nbsp;&nbsp;
    </p>
    <p>
      if you modify the text of a folder node, the folder in the drive gets also renamed to this new text
    </p>
    <p>
      
    </p>
    <p>
      8. **move *outside files* into the project**&nbsp;&nbsp;
    </p>
    <p>
      if you paste nodes with links to files that are outside of your base folder, MDI move them to their new position in your folder structure
    </p>
    <p>
      
    </p>
    <p>
      9. use copy of a folder in multiple positions in the map, but has to remain in the same path position.
    </p>
    <p>
      
    </p>
    <p>
      ____
    </p>
    <p>
      
    </p>
    <p>
      ### other
    </p>
    <p>
      
    </p>
    <p>
      video 2: el resto &lt;https://youtu.be/bd30aySucc4&gt;&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      1. **Can handle clones**:&nbsp;&nbsp;
    </p>
    <p>
      If you have clones of file or folder nodes in your map, MDI can handle them. If one of them is positioned correctly in the map, MDI understands that this file doesn't need to be moved.
    </p>
    <p>
      
    </p>
    <p>
      2. **locked**:&nbsp;&nbsp;
    </p>
    <p>
      You can mark some nodes as 'locked'. That means that MDI **ignores** it and its descendant.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* **Ignores outside files** and doesn´t move them into the project folder.&nbsp;&nbsp;
    </p>
    <p>
      You can have nodes with links to files outside your base folder wihout having MDI moving the file form its original drive's position to your base folder.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* **Ignores folders** and its subfolders and files when looking **in the drive**.&nbsp;&nbsp;
    </p>
    <p>
      Any 'folder' node marked as locked (or inside a locked node) will be ignored (and its content) when searching for file changes in the drive.
    </p>
    <p>
      
    </p>
    <p>
      3. **Ignores folders** with name ***starting*** with a ***dot*** (and its subfolders and files when looking in the drive)&nbsp;&nbsp;
    </p>
    <p>
      example: &quot;**.git**&quot;
    </p>
    <p>
      
    </p>
    <p>
      ____
    </p>
    <p>
      
    </p>
    <p>
      ### more
    </p>
    <p>
      
    </p>
    <p>
      1. **Import folders only**:&nbsp;&nbsp;
    </p>
    <p>
      Imports the folders structure without the files.&nbsp;&nbsp;
    </p>
    <p>
      This helps at the beginning, before the first full import. So you can define if you want some folders to be ignored (to mark as locked).&nbsp;&nbsp;
    </p>
    <p>
      So you can import only what you want and don't get excess files to manage in your map.
    </p>
    <p>
      
    </p>
    <p>
      2. **Import timestamps**:&nbsp;&nbsp;
    </p>
    <p>
      for the selected node and its descendants
    </p>
    <p>
      you can import as attributes following timestamps from your files&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* lastAccessTime
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* lastModifiedTime
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* creationTime
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;you can use them to sort, search and filter your nodes
    </p>
    <p>
      
    </p>
    <p>
      3. **Sort by timestamps**:&nbsp;&nbsp;
    </p>
    <p>
      you can sort a node and its descendants by any of the timestamps
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* lastAccessTime
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* lastModifiedTime
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;* creationTime
    </p>
    <p>
      
    </p>
    <p>
      4. **Clear the timestamps**:&nbsp;&nbsp;
    </p>
    <p>
      for the selected node and its descendants
    </p>
    <p>
      deletes the timestamps attributes in the nodes
    </p>
  </body>
</html></richcontent>
<node TEXT="README-MapDriveInator-MDH.mm" ID="ID_1813927967" CREATED="1641497885033" MODIFIED="1673969744980" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/README-MapDriveInator-MDH.mm">
<attribute NAME="lastModifiedTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="36.189" OBJECT="org.freeplane.features.format.FormattedNumber|36189|#,##0"/>
</node>
<node TEXT="README_2.md" FOLDED="true" ID="ID_1314808839" CREATED="1641504092418" MODIFIED="1673969738870" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/README_2.md">
<attribute NAME="lastModifiedTime" VALUE="06-01-22 18:15" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-06T18:15-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 15:44" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T15:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="3.516" OBJECT="org.freeplane.features.format.FormattedNumber|3516|#,##0"/>
<node TEXT="versión borrador." ID="ID_508217206" CREATED="1641504146261" MODIFIED="1641504153558"/>
<node TEXT="debo dejar sólo uno" ID="ID_1355708582" CREATED="1641504154823" MODIFIED="1641504161682"/>
</node>
</node>
</node>
<node TEXT="versión instalada en AddOns" STYLE_REF="locked" ID="ID_145121050" CREATED="1616167740215" MODIFIED="1616167740215"/>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_31519401" CREATED="1616167740429" MODIFIED="1673976690412">
<attribute NAME="log_MDI" VALUE="yes"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2023-01-17&nbsp;&nbsp;14:31:28
    </p>
    <p>
      
    </p>
    <p>
      ------- Files: --------&nbsp;
    </p>
    <p>
      &nbsp;0 node(s) pointing to unexisting/filtered files (marked as 'broken')
    </p>
    <p>
      &nbsp;0 link(s) corrected in nodes
    </p>
    <p>
      &nbsp;0 new file(s) imported as node(s)&nbsp;
    </p>
    <p>
      &nbsp;1 node(s) moved/renamed in drive
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&nbsp;
    </p>
    <p>
      36 folders didn't need to be moved&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.1 seconds
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      (elapsed time in miliseconds)
    </p>
    <p>
      -27
    </p>
    <p>
      -30
    </p>
    <p>
      -31
    </p>
    <p>
      
    </p>
    <p>
      arma Listado de Rutas nodos
    </p>
    <p>
      -83
    </p>
    <p>
      
    </p>
    <p>
      saca listados de informacion en nodos xSingles
    </p>
    <p>
      -83
    </p>
    <p>
      
    </p>
    <p>
      saca listados de informacion en nodos xClones
    </p>
    <p>
      -83
    </p>
    <p>
      
    </p>
    <p>
      saca listados de informacion en drive
    </p>
    <p>
      -162
    </p>
    <p>
      
    </p>
    <p>
      obteniendo sublistas
    </p>
    <p>
      -162
    </p>
    <p>
      
    </p>
    <p>
      obtener listado de clones pendientes
    </p>
    <p>
      -162
    </p>
    <p>
      -162
    </p>
    <p>
      
    </p>
    <p>
      obtener listado de clones inconsistentes
    </p>
    <p>
      -162
    </p>
    <p>
      
    </p>
    <p>
      obteniendo sublistas de xInconsistentes
    </p>
    <p>
      -163
    </p>
    <p>
      
    </p>
    <p>
      obteniendo sublistas de xClonesInconsistentes
    </p>
    <p>
      -163
    </p>
    <p>
      -163
    </p>
    <p>
      -163
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;aplicando acciones FILES
    </p>
    <p>
      -183
    </p>
    <p>
      
    </p>
    <p>
      ACTUALIZANDO FOLDERS
    </p>
    <p>
      -186
    </p>
    <p>
      
    </p>
    <p>
      visibilizar avance en Nota de nodo
    </p>
    <p>
      xSingles:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitattributes
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitignore
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\MDI.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\MapDriveInator.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ImportJustFolders.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\DistributeNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\checkMissingFileNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\createFilesFromNotes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ClearFileTimestampsInNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\GetFileTimestamps.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\SortByTimestamp.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkMovedOrRenamedNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkModifiedFiles.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\groupChildnodesBy.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ungroupChildnodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator-v0.0.3.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\history.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\Map-Drive-Inator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 004.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 005.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 006.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 007.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 008.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 009.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 011.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 012.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 013.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 014.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 015.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 002.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\Map-Drive-Inator.groovy.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\MDI To Addon.nppSession
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\prueba.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator project.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\LICENSE.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README-MapDriveInator-MDH.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README_2.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota.txt
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota _ con _ un montón de_carácteres raros.txt
    </p>
    <p>
      
    </p>
    <p>
      xClones:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      consistentes:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitattributes
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitignore
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\MDI.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\MapDriveInator.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ImportJustFolders.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\DistributeNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\checkMissingFileNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\createFilesFromNotes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ClearFileTimestampsInNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\GetFileTimestamps.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\SortByTimestamp.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkMovedOrRenamedNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkModifiedFiles.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\groupChildnodesBy.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ungroupChildnodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator-v0.0.3.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\history.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\Map-Drive-Inator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 004.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 005.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 006.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 007.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 008.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 009.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 011.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 012.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 013.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 014.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 015.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 002.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\Map-Drive-Inator.groovy.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\MDI To Addon.nppSession
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator project.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\LICENSE.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README-MapDriveInator-MDH.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README_2.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota.txt
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota _ con _ un montón de_carácteres raros.txt
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      inconsistentes:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\prueba.mm
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      listCons:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitattributes
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitignore
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\MDI.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\MapDriveInator.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ImportJustFolders.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\DistributeNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\checkMissingFileNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\createFilesFromNotes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ClearFileTimestampsInNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\GetFileTimestamps.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\SortByTimestamp.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkMovedOrRenamedNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkModifiedFiles.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\groupChildnodesBy.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ungroupChildnodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator-v0.0.3.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\history.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\Map-Drive-Inator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 004.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 005.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 006.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 007.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 008.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 009.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 011.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 012.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 013.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 014.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 015.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 002.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\Map-Drive-Inator.groovy.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\MDI To Addon.nppSession
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator project.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\LICENSE.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README-MapDriveInator-MDH.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README_2.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota.txt
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota _ con _ un montón de_carácteres raros.txt
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      listClonCons:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      listInConsLink:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\prueba.mm
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      listInConsPath:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\prueba.mm
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      listFiles:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ClearFileTimestampsInNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\DistributeNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\GetFileTimestamps.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ImportJustFolders.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\MapDriveInator.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\SortByTimestamp.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\checkMissingFileNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\createFilesFromNotes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\groupChildnodesBy.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ungroupChildnodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkModifiedFiles.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkMovedOrRenamedNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\MDI.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator-v0.0.3.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\history.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\prueba.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\MDI To Addon.nppSession
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\Map-Drive-Inator.groovy.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 002.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 004.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 005.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 006.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 007.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 008.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 009.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 011.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 012.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 013.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 014.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 015.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\Map-Drive-Inator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitattributes
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitignore
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\LICENSE.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator project.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README-MapDriveInator-MDH.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README_2.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota _ con _ un montón de_carácteres raros.txt
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota.txt
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      filesOK:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ClearFileTimestampsInNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\DistributeNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\GetFileTimestamps.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ImportJustFolders.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\MapDriveInator.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\SortByTimestamp.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\checkMissingFileNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\createFilesFromNotes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\groupChildnodesBy.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\ungroupChildnodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkModifiedFiles.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkMovedOrRenamedNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\unmarkNewNodes.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\MDI.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator-v0.0.3.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\history.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build.gradle
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\CreateBaseFolderNode.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MDIv2.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator-v0.0.2.addon.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.jar
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\MapDriveInator.mm.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\Sync.groovy
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\version.properties
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\MDI To Addon.nppSession
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\Map-Drive-Inator.groovy.bak
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 002.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\groupingExample 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 001.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 003.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 004.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 005.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 006.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 007.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 008.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 009.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 011.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 012.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 013.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 014.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\updatesFoldersLikeMap Img 015.png
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\Map-Drive-Inator.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitattributes
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.gitignore
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\LICENSE.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator project.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README-MapDriveInator-MDH.mm
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\README_2.md
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota _ con _ un montón de_carácteres raros.txt
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\nota.txt
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      filesNOK:&nbsp;
    </p>
    <p>
      E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\prueba.mm
    </p>
    <p>
      
    </p>
    <p>
      xClonesPend1:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      xClonesPend2:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      xClonesPend3:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      xClonesPend4:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      xClonesPend:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodosSinFileA:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      filesSinNodos:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      xLinkOk:&nbsp;
    </p>
    <p>
      ID_1521875293&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\prueba.mm
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      xPathOk:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodosSinFileB:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      filesNOK2:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      xClonLinkOk:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      xClonPathOk:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodosSinFileC:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodosConFileEnOtraParte:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nodosSinFile:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      xFolders:&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      ID_434109182
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\ignoredByGitHub\
    </p>
    <p>
      
    </p>
    <p>
      ID_1565170154
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\updatesFoldersLikeMap_files\
    </p>
    <p>
      
    </p>
    <p>
      ID_1697408639
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\resources\
    </p>
    <p>
      
    </p>
    <p>
      ID_780335546
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\delete\
    </p>
    <p>
      
    </p>
    <p>
      ID_513998056
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\images\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\images\
    </p>
    <p>
      
    </p>
    <p>
      ID_1607178942
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\templates\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\templates\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_1535051774
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\templates\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\templates\
    </p>
    <p>
      
    </p>
    <p>
      ID_283320947
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\doc\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\doc\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_676804992
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\doc\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\doc\
    </p>
    <p>
      
    </p>
    <p>
      ID_305856744
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\icons\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\icons\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_1806972330
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\icons\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\icons\
    </p>
    <p>
      
    </p>
    <p>
      ID_880600127
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\zips\
    </p>
    <p>
      
    </p>
    <p>
      ID_1180592192
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\scripts\
    </p>
    <p>
      
    </p>
    <p>
      ID_930264566
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\lib\
    </p>
    <p>
      
    </p>
    <p>
      ID_1037823891
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\build\
    </p>
    <p>
      
    </p>
    <p>
      ID_225362559
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\groovy\
    </p>
    <p>
      
    </p>
    <p>
      ID_242117641
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\main\
    </p>
    <p>
      
    </p>
    <p>
      ID_767967142
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\src\
    </p>
    <p>
      
    </p>
    <p>
      ID_1462849055
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_1547784914
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\images\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\images\
    </p>
    <p>
      
    </p>
    <p>
      ID_1339117801
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\templates\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\templates\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_1709021293
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\templates\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\templates\
    </p>
    <p>
      
    </p>
    <p>
      ID_857784023
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\doc\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\doc\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_680771650
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\doc\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\doc\
    </p>
    <p>
      
    </p>
    <p>
      ID_1106013023
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\icons\MapDriveInator\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\icons\MapDriveInator\
    </p>
    <p>
      
    </p>
    <p>
      ID_1495924276
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\icons\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\icons\
    </p>
    <p>
      
    </p>
    <p>
      ID_675695541
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\zips\
    </p>
    <p>
      
    </p>
    <p>
      ID_1535564200
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\scripts\
    </p>
    <p>
      
    </p>
    <p>
      ID_38835318
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\lib\
    </p>
    <p>
      
    </p>
    <p>
      ID_22994202
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\build\
    </p>
    <p>
      
    </p>
    <p>
      ID_1433998257
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\groovy\
    </p>
    <p>
      
    </p>
    <p>
      ID_913704295
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\main\
    </p>
    <p>
      
    </p>
    <p>
      ID_598707755
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\src\
    </p>
    <p>
      
    </p>
    <p>
      ID_828647119
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\MapDriveInatorV2\
    </p>
    <p>
      
    </p>
    <p>
      ID_43997028
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.git\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\.git\
    </p>
    <p>
      
    </p>
    <p>
      ID_1893653910
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\lib\
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\lib\
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Tareas" STYLE_REF="Organizador" FOLDED="true" ID="ID_819044659" CREATED="1641397479073" MODIFIED="1641401944369">
<node TEXT="transformar MDI en AddOn" STYLE_REF="pendingTask" FOLDED="true" ID="ID_665003007" CREATED="1641650752719" MODIFIED="1648484701199">
<node TEXT="replicar librería MDI funcionalidad por funcionalidad" STYLE_REF="pendingTask" ID="ID_144971755" CREATED="1641650791720" MODIFIED="1641650849400"/>
<node TEXT="separar en varias clases" STYLE_REF="pendingTask" ID="ID_1745361455" CREATED="1641650838792" MODIFIED="1641650849244"/>
<node TEXT="pasos para crear AddOn" STYLE_REF="Organizador" FOLDED="true" ID="ID_473646928" CREATED="1616167740206" MODIFIED="1641397499442">
<node TEXT="pasos AddOn" FOLDED="true" ID="ID_1280692201" CREATED="1616167740206" MODIFIED="1616167740206">
<node TEXT="1 a 5" FOLDED="true" ID="ID_1221469484" CREATED="1616167740206" MODIFIED="1616167740206">
<node TEXT="In Freeplane create a new empty map by Ctrl+n." STYLE_REF="completedTask" ID="ID_477927437" CREATED="1616167740206" MODIFIED="1641504508504" NUMBERED="true"/>
<node TEXT="Invoke Tools &gt; Developer Tools &gt; Build add-on. You will be asked for the name of your add-on. Answer My Cool Add-on" STYLE_REF="completedTask" ID="ID_553362650" CREATED="1616167740206" MODIFIED="1641504508629" NUMBERED="true"/>
<node TEXT="Look through the messages in the info box that is shown if everything looks alright. The name attribute of the root node will be myCoolAddOn. This is the identifying technical name of the add-on that is usually used as a file name, for menu locations and translation keys and so on. The node text My Cool Add-on is the English name/translation of the add-on." STYLE_REF="completedTask" ID="ID_305356603" CREATED="1616167740206" MODIFIED="1641504526009" NUMBERED="true"/>
<node TEXT="Set the version attribute of the root node to v0.1 and fill the other attributes of the root node (only freeplaneVersionTo is optional)." STYLE_REF="completedTask" ID="ID_1764949961" CREATED="1616167740206" MODIFIED="1641504927576" NUMBERED="true"/>
<node TEXT="Write an initial description of the add-on as a child node of the description node." STYLE_REF="completedTask" ID="ID_664043439" CREATED="1616167740206" MODIFIED="1641528618339" NUMBERED="true"/>
</node>
<node TEXT="5 a 10" FOLDED="true" ID="ID_1932059575" CREATED="1616167740206" MODIFIED="1616167740206">
<node TEXT="Create a new directory somewhere with the technical name of the add-on, myCoolAddOn." STYLE_REF="completedTask" ID="ID_522100379" CREATED="1616167740206" MODIFIED="1641528638760" NUMBERED="true"/>
<node TEXT="Save the new map to myCoolAddOn/myCoolAddOn.mm." STYLE_REF="completedTask" ID="ID_1433169455" CREATED="1616167740206" MODIFIED="1641528638916" NUMBERED="true"/>
<node TEXT="Copy or move myCoolScript.groovy to myCoolAddOn/scripts/myCoolScript.groovy." STYLE_REF="pendingTask" ID="ID_1973196423" CREATED="1616167740206" MODIFIED="1641504450560" NUMBERED="true"/>
<node TEXT="In the map create a new subnode of the scripts node with name myCoolScript.groovy." STYLE_REF="discardedTask" ID="ID_1194471346" CREATED="1616167740206" MODIFIED="1641528670765" NUMBERED="true"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      no es necesario. lo hace el Build automáticamente
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Copy mycoolicon.png to zips/icons/mycoolicon.png." STYLE_REF="pendingTask" ID="ID_1483352366" CREATED="1616167740206" MODIFIED="1641504450779" NUMBERED="true"/>
</node>
<node TEXT="11 a 15" FOLDED="true" ID="ID_855480863" CREATED="1616167740206" MODIFIED="1616167740206">
<node TEXT="In the map create a new subnode of the zips node with name icons." STYLE_REF="pendingTask" ID="ID_411493290" CREATED="1616167740206" MODIFIED="1641504450857" NUMBERED="true"/>
<node TEXT="Invoke Tools &gt; Developer Tools &gt; Build add-on again. This will add the required attributes of the script node and proposes proper deinstall rules (just accept them when you are asked for it)." STYLE_REF="pendingTask" ID="ID_318355463" CREATED="1616167740206" MODIFIED="1641504450967" NUMBERED="true"/>
<node TEXT="Fill the attributes of the myCoolScript.groovy node. The notes on the scripts node will help you to find the right attribute values. See also the section about menuLocation below." STYLE_REF="pendingTask" ID="ID_1275148123" CREATED="1616167740206" MODIFIED="1641504451076" NUMBERED="true"/>
<node TEXT="Save the map." STYLE_REF="pendingTask" ID="ID_979702267" CREATED="1616167740206" MODIFIED="1641504451232" NUMBERED="true"/>
<node TEXT="Invoke Tools &gt; Developer Tools &gt; Package add-on for publication. This will create the file myCoolAddOn-v0.1.mm which can be installed via Tools &gt; Scripts &gt; Install Add-on (or via Tools &gt; Add-ons)." STYLE_REF="pendingTask" ID="ID_101028478" CREATED="1616167740206" MODIFIED="1641504451373" NUMBERED="true"/>
</node>
</node>
<node TEXT="guardar mapas como &quot;lean&quot; map" STYLE_REF="completedTask" ID="ID_297611631" CREATED="1616167740206" MODIFIED="1641504503077"/>
<node TEXT="cambiar imagen de logo" STYLE_REF="pendingTask" ID="ID_572654671" CREATED="1616167740206" MODIFIED="1641504459310"/>
</node>
</node>
<node TEXT="pendientes" STYLE_REF="Organizador" FOLDED="true" ID="ID_1189420698" CREATED="1616167740207" MODIFIED="1641397139157">
<node TEXT="inicializar" STYLE_REF="Organizador" FOLDED="true" ID="ID_60424786" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="crear fork en Github" ID="ID_1854261940" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="Funcionalidad" STYLE_REF="Organizador" FOLDED="true" ID="ID_193658298" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="incluir preferencias en Addon.mm" FOLDED="true" ID="ID_1798281696" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="indicar properties" ID="ID_172816119" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="indicar valores default" ID="ID_1628906019" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="indicar traducciones" ID="ID_1038410507" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="llevar ajustes a panel de preferencias" ID="ID_354456841" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="documentación" STYLE_REF="Organizador" FOLDED="true" ID="ID_1722874007" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="actualizar wiki" ID="ID_89220239" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="publicar" STYLE_REF="Organizador" FOLDED="true" ID="ID_1034067313" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="gradle build" ID="ID_846312997" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="git ignore de gradle Build" ID="ID_1543890607" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="armar AddOn" FOLDED="true" ID="ID_75419868" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="revisar información de uninstall" ID="ID_552994514" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="actualizar listado de cambios" ID="ID_1960243151" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="poner bien nombres de scripts" ID="ID_1641695413" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="agregar traducciones" ID="ID_239098814" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="agregar historial de cambios" ID="ID_127148230" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="mejorar descripción de add On" ID="ID_798578687" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="testear" ID="ID_593398339" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="agregar release en Github con archivo descargable" ID="ID_175601747" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="actualizar ReadMe" FOLDED="true" ID="ID_873316181" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="nuevas fumcionalidades" FOLDED="true" ID="ID_1258432485" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="ver cambios en versiones" ID="ID_1368434930" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="link a último release" ID="ID_477113700" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="link a release de myTempScripts" ID="ID_289713829" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="imágenes de funcionalidades" FOLDED="true" ID="ID_1932637359" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="load con append" ID="ID_1048682082" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="tempScripts" ID="ID_310707258" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="Agregar imágenes" ID="ID_1086865870" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="agregar descripción de nuevos comandos" ID="ID_594602743" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="agregar historial de cambios" ID="ID_362817623" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
<node TEXT="comunicar en Openforum" ID="ID_152881947" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="actualizar a listado de AddOns en FP wiki" FOLDED="true" ID="ID_303217866" CREATED="1616167740207" MODIFIED="1616167740207">
<node TEXT="agregar a listado de AddOns en FP wiki" ID="ID_530503372" CREATED="1616167740207" MODIFIED="1616167740207"/>
<node TEXT="usar addOn documentation de devTools" ID="ID_214741246" CREATED="1616167740207" MODIFIED="1616167740207"/>
</node>
</node>
</node>
<node TEXT="fields próximos pasos" STYLE_REF="Organizador" FOLDED="true" ID="ID_1947412748" CREATED="1616167740430" MODIFIED="1616167740430" STYLE="bubble">
<attribute NAME="groupBy" VALUE="Text"/>
<attribute NAME="sortBy" VALUE="Text"/>
<node TEXT="release" ID="ID_1265867628" CREATED="1616167740430" MODIFIED="1616167740430"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prioridad / orden" ID="ID_646457200" CREATED="1616167740430" MODIFIED="1616167740430"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="complejidad" ID="ID_97742120" CREATED="1616167740430" MODIFIED="1616167740430"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="próximos pasos:" STYLE_REF="Organizador" FOLDED="true" ID="ID_599288701" CREATED="1616167740431" MODIFIED="1616167740431" STYLE="bubble">
<node TEXT="ideas / tareas:" ID="ID_1281597789" CREATED="1616167740431" MODIFIED="1616167740431"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      repartir
    </p>
  </body>
</html></richcontent>
<node TEXT="Opciones en Nota de nodo BaseFolder debe tener mejor formato" STYLE_REF="pendingTask" ID="ID_550597183" CREATED="1616167740431" MODIFIED="1623451188941"/>
<node TEXT="guardar en nota de &quot;new imported files&quot; los cambios realizados en última MDI" STYLE_REF="pendingTask" ID="ID_1310678286" CREATED="1616167740431" MODIFIED="1623451189153"/>
<node TEXT="revisar y cuidar que al importar nuevos nodosFiles no hayan más de x hijos por nodo" STYLE_REF="pendingTask" ID="ID_859060352" CREATED="1616167740431" MODIFIED="1623451189358">
<node TEXT="porque freeplane se pone muy lento cuando un nodo tien más de X hijos" ID="ID_1162664569" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="determinar X" ID="ID_684991461" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="agrupar en nodos tipo carpeta pero no folder" ID="ID_210408579" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="indicar mensaje al importar" FOLDED="true" ID="ID_425596636" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="o" FOLDED="true" ID="ID_1538175396" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="" ID="ID_82537059" CREATED="1616167740431" MODIFIED="1616167740431">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="antes" ID="ID_1328516918" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="durante" ID="ID_890864865" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="" ID="ID_856558046" CREATED="1616167740431" MODIFIED="1616167740431">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="permitir elegir alternativas de agrupación" FOLDED="true" ID="ID_1422769191" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="según característica" FOLDED="true" ID="ID_1250498707" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="ext" ID="ID_1248576424" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="primeras i" FOLDED="true" ID="ID_1286942045" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="palabras" ID="ID_1378698284" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="carácteres" ID="ID_893719057" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="según fecha" FOLDED="true" ID="ID_1125787949" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="de" FOLDED="true" ID="ID_1822653378" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="creación" ID="ID_556464404" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="acceso" ID="ID_283353816" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="modificación" ID="ID_1782557470" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="agrupado según" FOLDED="true" ID="ID_1323009875" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="día" ID="ID_1579256283" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="semana" ID="ID_1128500845" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="mes" ID="ID_414625026" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
</node>
</node>
<node TEXT="en &quot;tomos&quot;" FOLDED="true" ID="ID_1363818421" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="cada uno con n elementos" FOLDED="true" ID="ID_1249053908" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="se llena uno, se crea el siguiente" ID="ID_1996043499" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="por orden" FOLDED="true" ID="ID_1638214193" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="alfabético" FOLDED="true" ID="ID_1001104670" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="arpa.jpg&#xa;-&gt;&#xa;Guitarra.png" ID="ID_1575422789" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="de fecha" FOLDED="true" ID="ID_525312396" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="de" FOLDED="true" ID="ID_1431709884" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="creación" ID="ID_528483696" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="acceso" ID="ID_1361700024" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="modificación" ID="ID_1966560181" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="ej.:" FOLDED="true" ID="ID_1613500605" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="10-08-20 20:15&#xa;-&gt;&#xa;05-01-21 17:23" ID="ID_1119538778" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
</node>
</node>
</node>
<node TEXT="según característica" FOLDED="true" ID="ID_1246799730" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="en &quot;tomos&quot;" ID="ID_1234187500" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="en &quot;tomos&quot;" FOLDED="true" ID="ID_1161227169" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="según característica" ID="ID_728109759" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
</node>
</node>
<node TEXT="después" FOLDED="true" ID="ID_1945223181" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="automáticamente en tomos" ID="ID_1029196605" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="aviso de que se debió hacer" ID="ID_611909320" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
</node>
</node>
<node TEXT="probar con" STYLE_REF="locked" ID="ID_51147019" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="icons" STYLE_REF="missing" ID="ID_843411429" CREATED="1616167740431" MODIFIED="1673969986978" LINK="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/icons/">
<attribute NAME="lastModifiedTime" VALUE="16-01-22 13:34" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-16T13:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 19:47" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T19:47-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="11-05-21 09:53" OBJECT="org.freeplane.features.format.FormattedDate|2021-05-11T09:53-0400|datetime"/>
<attribute NAME="fileSize" VALUE="12.288" OBJECT="org.freeplane.features.format.FormattedNumber|12288|#,##0"/>
<node TEXT="Esfuerzo" STYLE_REF="missing" ID="ID_1816416031" CREATED="1616167740431" MODIFIED="1673969986979" LINK="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/icons/Esfuerzo/">
<attribute NAME="lastModifiedTime" VALUE="11-01-19 14:18" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-11T14:18-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 13:39" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T13:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="29-01-21 20:35" OBJECT="org.freeplane.features.format.FormattedDate|2021-01-29T20:35-0300|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
<node TEXT="Importancia" STYLE_REF="missing" ID="ID_271010312" CREATED="1616167740431" MODIFIED="1673969986979" LINK="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/icons/Importancia/">
<attribute NAME="lastModifiedTime" VALUE="22-09-18 09:50" OBJECT="org.freeplane.features.format.FormattedDate|2018-09-22T09:50-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 13:39" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T13:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="29-01-21 20:35" OBJECT="org.freeplane.features.format.FormattedDate|2021-01-29T20:35-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
</node>
<node TEXT="Thermometer" STYLE_REF="missing" ID="ID_471448862" CREATED="1616167740431" MODIFIED="1673969986980" LINK="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/icons/Thermometer/">
<attribute NAME="lastModifiedTime" VALUE="22-09-18 09:50" OBJECT="org.freeplane.features.format.FormattedDate|2018-09-22T09:50-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 13:39" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T13:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="29-01-21 20:35" OBJECT="org.freeplane.features.format.FormattedDate|2021-01-29T20:35-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
</node>
<node TEXT="Visual Studio" STYLE_REF="missing" ID="ID_408683376" CREATED="1616167740431" MODIFIED="1673969986981" LINK="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/icons/Visual%20Studio/"/>
</node>
</node>
</node>
<node TEXT="marcar nodoFile como  &quot;para copiar&quot;" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1872791515" CREATED="1616167740431" MODIFIED="1623451189587">
<node TEXT="para el caso donde link no concuerda con posición en mapa" FOLDED="true" ID="ID_580562797" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="caso movedRenamed" ID="ID_1466824866" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
<node TEXT="crea copia con nuevo nombre a nueva posición" ID="ID_1050239482" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="queda &quot;marcado&quot; como" FOLDED="true" ID="ID_16848849" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="o" FOLDED="true" ID="ID_1608644782" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="freshNew" ID="ID_811625420" CREATED="1616167740431" MODIFIED="1616167740431"/>
<node TEXT="newCopy" ID="ID_1542700383" CREATED="1616167740431" MODIFIED="1616167740431"/>
</node>
</node>
</node>
<node TEXT="preferencias FileTimeStamps" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1403569041" CREATED="1616167740431" MODIFIED="1623451189833">
<node TEXT="actualizar en cada MDI&#xa;automatcamente a archivos" FOLDED="true" ID="ID_880673338" CREATED="1616167740431" MODIFIED="1616167740431">
<node TEXT="" ID="ID_939845077" CREATED="1616167740431" MODIFIED="1616167740431">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="existentes" ID="ID_1194175567" CREATED="1616167740431" MODIFIED="1616167740431">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="nuevos" ID="ID_1996672193" CREATED="1616167740431" MODIFIED="1616167740431">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="movidos" ID="ID_839297180" CREATED="1616167740431" MODIFIED="1616167740431">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="copiados" ID="ID_1321829192" CREATED="1616167740431" MODIFIED="1616167740431">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="" ID="ID_1169102993" CREATED="1616167740431" MODIFIED="1616167740431">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="todos" ID="ID_1190373328" CREATED="1616167740431" MODIFIED="1616167740431">
<icon BUILTIN="unchecked"/>
</node>
</node>
</node>
</node>
<node TEXT="agregar comando que MDInarice todos los BaseFolder del mapa" STYLE_REF="pendingTask" ID="ID_1225720693" CREATED="1616167740432" MODIFIED="1623451190069"/>
<node TEXT="submenú Unmark" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1274440134" CREATED="1616167740432" MODIFIED="1623451190349">
<node TEXT="" ID="ID_1152382969" CREATED="1616167740432" MODIFIED="1616167740432">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="que agrupe todos los unmark" ID="ID_749627187" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="agregar unmark todo" ID="ID_685657797" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="" ID="ID_675544576" CREATED="1616167740432" MODIFIED="1616167740432">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="opciones" FOLDED="true" ID="ID_91936571" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="sólo seleccionados" ID="ID_646957449" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="seleccionados y descendientes" ID="ID_364247197" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="todo el base folder y sus descendientes" ID="ID_138515635" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
</node>
</node>
<node TEXT="mejorar estructura de menú MDI" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1550934361" CREATED="1616167740432" MODIFIED="1623451190575">
<node TEXT="Actual" FOLDED="true" ID="ID_1058208037" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Check missing File Nodes" ID="ID_1996076981" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Time Stamps" FOLDED="true" ID="ID_1135365228" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Clear File Timestamps in Nodes" ID="ID_897772635" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Get File Timestamps" ID="ID_491145713" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Sort By Timestamp" ID="ID_1885229172" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Unmark Modified Files" ID="ID_310524052" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="Create Base Folder Node" ID="ID_976597531" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Create Files from Notes" ID="ID_1554376887" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Distribute New Nodes" ID="ID_401546798" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Group" FOLDED="true" ID="ID_537412061" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Group Childnodes By" ID="ID_193232249" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Ungroup Childnodes" ID="ID_1705104548" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="Import Just Folders" ID="ID_1885692316" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Map-Drive-Inator" ID="ID_452215502" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Unmark Moved and Renamed Nodes" ID="ID_1122319406" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Unmark New Nodes" ID="ID_1292786077" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="MDI" FOLDED="true" ID="ID_104053499" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Update" FOLDED="true" ID="ID_1587795134" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Map-Drive-Inator" ID="ID_1823297241" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Get File Timestamps" ID="ID_698688550" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Create Files from Notes" ID="ID_1521712657" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Check missing File Nodes" ID="ID_1579238380" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Import Just Folders" ID="ID_1489213036" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Create Base Folder Node" ID="ID_69032622" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="Organize" FOLDED="true" ID="ID_1293062162" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Distribute New Nodes" ID="ID_1362869908" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Sort By Timestamp" ID="ID_1712479345" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Group Childnodes By" ID="ID_1909453727" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Ungroup Childnodes" ID="ID_1399287868" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="Unmark" FOLDED="true" ID="ID_167966758" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Unmark Moved and Renamed Nodes" ID="ID_251908213" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Unmark New Nodes" ID="ID_10419655" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Unmark Modified Files" ID="ID_780554069" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="Clear File Timestamps in Nodes" ID="ID_1727983954" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
</node>
</node>
<node TEXT="Revisar que comandos se ven afectados por nodos Locked y cuales no" FOLDED="true" ID="ID_591382190" CREATED="1616167740432" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_268438012" MIDDLE_LABEL="relacionados" STARTINCLINATION="102 pt;0 pt;" ENDINCLINATION="87 pt;6 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<node TEXT="que comandos no deben ingresar a ramas locked" STYLE_REF="pendingTask" ID="ID_761127302" CREATED="1616167740432" MODIFIED="1623451190804"/>
<node TEXT="que comandos se pueden aplicar si nodo seleccionado está dentor de nodo locked y cuales no" STYLE_REF="pendingTask" ID="ID_1852988863" CREATED="1616167740432" MODIFIED="1623451191045"/>
</node>
<node TEXT="revisar en que ámbito aplica cada comando:" STYLE_REF="pendingTask" FOLDED="true" ID="ID_268438012" CREATED="1616167740432" MODIFIED="1623451191281">
<node TEXT="sobre todo el mapa" FOLDED="true" ID="ID_301541441" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_717603019" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_177743071" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre todos los baseFolders del mapa" FOLDED="true" ID="ID_294615292" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_117578157" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_254946141" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre baseFolder actual" FOLDED="true" ID="ID_1285253106" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_780174719" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_1827785532" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre nodos seleccionados y sus descendencias" FOLDED="true" ID="ID_1837101781" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_880270914" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_210987749" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre nodo seleccionado y su descendencia" FOLDED="true" ID="ID_1120829294" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_1243029658" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_1803346332" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre nodos seleccionados" FOLDED="true" ID="ID_265847633" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_1515434137" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_1225693361" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="sobre nodo seleccionado" FOLDED="true" ID="ID_1116756681" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="incluyendo ramas Locked" ID="ID_84504591" CREATED="1616167740432" MODIFIED="1616167740432"/>
<node TEXT="excluyendo ramas Locked" ID="ID_995369028" CREATED="1616167740432" MODIFIED="1616167740432"/>
</node>
<node TEXT="MDI" FOLDED="true" ID="ID_935910484" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Update" FOLDED="true" ID="ID_1418645325" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Map-Drive-Inator" ID="ID_599884622" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#9cef23"/>
<node TEXT="Get File Timestamps" ID="ID_441429945" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#ed886d"/>
<node TEXT="Create Files from Notes" ID="ID_295952857" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#19da12"/>
<node TEXT="Check missing File Nodes" ID="ID_1283495321" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#0beaf8"/>
<node TEXT="Import Just Folders" ID="ID_629920130" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#a0f892"/>
<node TEXT="Create Base Folder Node" ID="ID_1004821357" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#e5ff2f"/>
</node>
<node TEXT="Organize" FOLDED="true" ID="ID_754382881" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Distribute New Nodes" ID="ID_1712889289" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#b18db9"/>
<node TEXT="Sort By Timestamp" ID="ID_103438692" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#88e0d1"/>
<node TEXT="Group Childnodes By" ID="ID_1281228183" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#d9a905"/>
<node TEXT="Ungroup Childnodes" ID="ID_762355999" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#f75783"/>
</node>
<node TEXT="Unmark" FOLDED="true" ID="ID_541078150" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="Unmark Moved and Renamed Nodes" ID="ID_14918842" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#b2bcdf"/>
<node TEXT="Unmark New Nodes" ID="ID_1114036938" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#33f3de"/>
<node TEXT="Unmark Modified Files" ID="ID_1621103666" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#bf4cc3"/>
<node TEXT="Clear File Timestamps in Nodes" ID="ID_1707362672" CREATED="1616167740432" MODIFIED="1616167740432" BACKGROUND_COLOR="#c4c092"/>
</node>
</node>
</node>
<node TEXT="comando &quot;enviar a papelera&quot;" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1997152504" CREATED="1616167740432" MODIFIED="1623451191519">
<node TEXT="marcado" FOLDED="true" ID="ID_1072298218" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="opción 1" FOLDED="true" ID="ID_365139389" CREATED="1616167740432" MODIFIED="1616167740432">
<node TEXT="sólo marca nodos file y nodos folder" ID="ID_1278241539" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="marca todos los file y folders bajo el nodo seleccionado" ID="ID_67694621" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="al moverlo" FOLDED="true" ID="ID_1402837856" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="mueve los files primero" ID="ID_1533903476" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="elimina las carpetas marcadas para eliminar" FOLDED="true" ID="ID_1097996236" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="sólo si están vacías en el disco" ID="ID_1458833855" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="si los nodos folders marcados para eliminar no tienen hijos son eliminados del mapa" ID="ID_519166199" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="opción 2" FOLDED="true" ID="ID_1484128149" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="marca cualquier tipo de nodo" ID="ID_1846376180" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="al marcar un nodo desmarca sus descendientes" ID="ID_883834487" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="al moverlo" FOLDED="true" ID="ID_45342693" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se lleva la rama completa" ID="ID_160099510" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="según las preferencias, mantiene o quita los links a carpetas." ID="ID_272821953" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
</node>
<node TEXT="Que hacer con clones??" FOLDED="true" ID="ID_937147882" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="si resto de clones son de este baseFolder" FOLDED="true" ID="ID_129193862" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="desconectar como clon" ID="ID_1144496900" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="quitar link a file" ID="ID_8440012" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="envío" FOLDED="true" ID="ID_663406508" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="opción 1" FOLDED="true" ID="ID_220494149" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="cambie nodo a folder papelera más cercano" ID="ID_1880150796" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="lógica papelera más cercana" FOLDED="true" ID="ID_10750948" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="recorre pathToRoot (hacia root) hasta llegar al BaseFolder" ID="ID_653807555" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="ve si tiene algun hermano como papelera" FOLDED="true" ID="ID_1270209582" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="si" FOLDED="true" ID="ID_1578200766" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="lo envía a ahí" ID="ID_673285057" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="no" FOLDED="true" ID="ID_632422006" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se acerca un nivel más hacia el root" ID="ID_282985850" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="repite" ID="ID_947660926" CREATED="1616167740433" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1270209582" STARTINCLINATION="15.75 pt;50.25 pt;" ENDINCLINATION="33 pt;21 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
</node>
</node>
</node>
<node TEXT="si no hay ninguna, la crea como hijo de BaseFolder y lo envía ahí" ID="ID_1095620712" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="mi opinión:" FOLDED="true" ID="ID_696293714" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="pros" FOLDED="true" ID="ID_1400463494" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se mantiene orden según mís intereses" ID="ID_1497067219" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="como todos los folders papelera tienen el mismo nombre es fácil crear un filtro para omitirlo de GIT o FileSync o respaldos periódicos" ID="ID_654469001" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="contras" FOLDED="true" ID="ID_1300965800" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="tengo muchas carpetas papeleras en el drive que administrar" ID="ID_1920188429" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
</node>
<node TEXT="opción 2" FOLDED="true" ID="ID_955937777" CREATED="1616167740433" MODIFIED="1616167740433">
<icon BUILTIN="button_cancel"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      no vale la pena. puede generar demasiado impacto en disco para archivos que se supone que quiero eliminar
    </p>
    <p>
      
    </p>
    <p>
      los pro los tengo en las opciones 3 y 4 también
    </p>
  </body>
</html></richcontent>
<node TEXT="Hay sólo una papelera" ID="ID_1651049203" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="papelera siempre es hijo directo de BaseFolder" ID="ID_181231593" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="al enviar el nodoFile ahí se recrea folders intermedios, para agrupar files que vienen de un mismo lugar y poder buscarlas" FOLDED="true" ID="ID_752532974" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se crean" FOLDED="true" ID="ID_556533626" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodosfolders" FOLDED="true" ID="ID_1042255565" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="con link" ID="ID_1416293496" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="folders en disco" ID="ID_1424769025" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="se omiten" FOLDED="true" ID="ID_1166096194" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodos intermedios no folder" ID="ID_1319554763" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="mi opinión:" FOLDED="true" ID="ID_306552724" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="pros" FOLDED="true" ID="ID_431963658" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="me permite tener orden en el disco y eliminar archivos agrupados por carpetas" FOLDED="true" ID="ID_1832721714" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="pero eso también lo puedo lograr con las otras opciones si es que quiero" ID="ID_1231670723" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="todos los archivos a eliminar se encuentarn dentro de una misma carpeta," FOLDED="true" ID="ID_671129535" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="más fácil de administrar" ID="ID_504143038" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="me permite excluir fácilmente esa carpeta para uso GIT o FileSync" ID="ID_1413889617" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="contras" FOLDED="true" ID="ID_652669353" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="me puede generar un arbol de carpetas en el disco muy grande y me lo puede complejizar" ID="ID_849631760" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
</node>
<node TEXT="opción 3" FOLDED="true" ID="ID_1263571786" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="Hay sólo una papelera" ID="ID_192854229" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="papelera siempre es hijo directo de BaseFolder" ID="ID_187788124" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="al enviar el nodoFile ahí se recrea nodos folders intermedias (sin link), para agrupar files que vienen de un mismo lugar (sólo a nivel de mapa están distribuidos, en disco están todos en mismo folder)" FOLDED="true" ID="ID_1733571319" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se crean" FOLDED="true" ID="ID_1070661915" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodosfolders" FOLDED="true" ID="ID_322925294" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="sin link" ID="ID_707940308" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="se omiten" FOLDED="true" ID="ID_1269571606" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodos intermedios no folder" ID="ID_262300611" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="folders en disco" ID="ID_1755214804" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="para crear subcarpeta a nivel de disco basta con marcar el nodo como folder y correr MDI. con eso lo agrupa y permite administrarlo más fácil en el disco" ID="ID_570443729" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="mi opinión:" FOLDED="true" ID="ID_245812371" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="pros" FOLDED="true" ID="ID_1518728888" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="me permite conocer orden original del mapa y agrupar files por carpetas según necesidad" FOLDED="true" ID="ID_468494969" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="para eliminar facilmente del disco por grupos" ID="ID_1589442734" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="todos los archivos a eliminar se encuentarn dentro de una misma carpeta," FOLDED="true" ID="ID_411957988" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="más fácil de administrar" ID="ID_1228230677" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="me permite excluir fácilmente esa carpeta para uso GIT o FileSync" ID="ID_659062338" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="contras" FOLDED="true" ID="ID_871606026" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodos que utilizo para agrupar pero que no son folders no se copian, por lo que pierdo granularidad" FOLDED="true" ID="ID_65827470" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="para casos donde en el drive es plano pero en el mapa tiene muchos niveles eso puede ser inconveniente" ID="ID_1580834601" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="si quisiera &quot;desmarcar para eliminar&quot; me sería difícil ubicarlo en su posición original" FOLDED="true" ID="ID_531800976" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="eventualmente eso podría guardarse en un atributo cuando se marcó para eliminar" ID="ID_1707581823" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
</node>
</node>
<node TEXT="opción 4" FOLDED="true" ID="ID_483019260" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="igual a opción 3 pero se agregan todos los nodos intermedios (file y no file)" FOLDED="true" ID="ID_813782512" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="se crean" FOLDED="true" ID="ID_1183972168" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="nodosfolders" FOLDED="true" ID="ID_713454256" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="sin link" ID="ID_341837444" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="nodos intermedios no folder" ID="ID_116518343" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="se omiten" FOLDED="true" ID="ID_1519356826" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="folders en disco" ID="ID_1589590091" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
</node>
<node TEXT="mi opinión:" FOLDED="true" ID="ID_1954495215" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="pros" FOLDED="true" ID="ID_258094437" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="me permite conocer orden original del mapa y agrupar files por carpetas según necesidad" FOLDED="true" ID="ID_853487743" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="para eliminar facilmente del disco por grupos" ID="ID_137787732" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="todos los archivos a eliminar se encuentarn dentro de una misma carpeta," FOLDED="true" ID="ID_1456340898" CREATED="1616167740433" MODIFIED="1616167740433">
<node TEXT="más fácil de administrar" ID="ID_1244023064" CREATED="1616167740433" MODIFIED="1616167740433"/>
<node TEXT="me permite excluir fácilmente esa carpeta para uso GIT o FileSync" ID="ID_602178552" CREATED="1616167740433" MODIFIED="1616167740433"/>
</node>
<node TEXT="si quisiera &quot;desmarcar para eliminar&quot; podría ubicarlo en su posición original" ID="ID_1721985463" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="nodos que utilizo para agrupar pero que no son folders sí se copian, se logra gran granularidad" FOLDED="true" ID="ID_1883079110" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="para casos donde en el drive es plano pero en el mapa tiene muchos niveles eso puede ser importante" ID="ID_1180889547" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
<node TEXT="contras" FOLDED="true" ID="ID_1563248998" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="nodo papelera podría volverse gigante" ID="ID_1146201392" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
</node>
<node TEXT="opción 5" FOLDED="true" ID="ID_1414982144" CREATED="1616167740434" MODIFIED="1616167740434">
<icon BUILTIN="forward"/>
<node TEXT="opciones 1, 3 y 4 combinadas" ID="ID_1713513265" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="sí solo se crea una papelera a nivel de BaseFolder ---&gt; se comporta como opciones 3 o 4" ID="ID_1849068218" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="opciones de preferencias:" FOLDED="true" ID="ID_794014785" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="al enviar a papelera se deben replicar." FOLDED="true" ID="ID_82156139" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="nada, sólo el nodoFile a eliminar" FOLDED="true" ID="ID_180685364" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="desactiva" ID="ID_430062891" CREATED="1616167740434" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1594949158" STARTINCLINATION="229.49999 pt;0 pt;" ENDINCLINATION="229.49999 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
</node>
</node>
<node TEXT="el nodoFile y nodos folders" ID="ID_1322787468" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="el nodo file y todos los nodos intermedios (folders y no folders)" ID="ID_680499910" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="replicar carpetas en disco" FOLDED="true" ID="ID_1167386742" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="boolean" ID="ID_1594949158" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="si el nodoFile marcado para enviar a papelera posee" FOLDED="true" ID="ID_1549684858" CREATED="1616167740434" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_134497283" MIDDLE_LABEL="una o la otra" STARTINCLINATION="131.25 pt;0 pt;" ENDINCLINATION="131.25 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<node TEXT="" ID="ID_1528803421" CREATED="1616167740434" MODIFIED="1616167740434">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="Nota" ID="ID_1381721483" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="Hijos" ID="ID_214000207" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="" ID="ID_526751272" CREATED="1616167740434" MODIFIED="1616167740434">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="mover con él" ID="ID_1166216898" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="impedir movimiento" ID="ID_1366609896" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="dejar &apos;histórico&apos; y mover sólo el nodo con link" FOLDED="true" ID="ID_664155584" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="en la práctica:" FOLDED="true" ID="ID_1613988794" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="se crea copia de nodo con link" FOLDED="true" ID="ID_1444854860" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="sin nota ni hijos" ID="ID_456747314" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="a nodo original" FOLDED="true" ID="ID_246331407" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="se le quita link" ID="ID_908582557" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="se marca como &quot;fantasma&quot; o &quot;histórico&quot;" ID="ID_434789028" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="nodo copia se envía a papelera" ID="ID_1142661020" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
</node>
</node>
<node TEXT="dejar &apos;histórico&apos; de nodo a eliminar?" FOLDED="true" ID="ID_134497283" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="nunca" ID="ID_1955648796" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="sólo si posee Nota" ID="ID_1389633203" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="sólo si posee hijos" ID="ID_1797973605" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="sólo si posee Nota o Hijos" ID="ID_27384223" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="Siempre" ID="ID_950054895" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="manejo de clones" FOLDED="true" ID="ID_1405387639" CREATED="1616167740434" MODIFIED="1616167740434"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      al MDI
    </p>
  </body>
</html></richcontent>
<node TEXT="si nodo es clon, pero link es de fuera del BaseFolder" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1112321110" CREATED="1616167740434" MODIFIED="1623451191752">
<icon BUILTIN="help"/>
<node TEXT="si todos los clones descienden de este BaseFolder" FOLDED="true" ID="ID_1453683206" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="mover" ID="ID_1670172100" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="si alguno de los clones están en otros BaseFolder" FOLDED="true" ID="ID_1388877299" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="link pertenece a alguno de los otros BaseFolders?" FOLDED="true" ID="ID_441036676" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="si" FOLDED="true" ID="ID_1193874550" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="revisar si allá está ok" FOLDED="true" ID="ID_114786947" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="ok" FOLDED="true" ID="ID_1428203203" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="no hacer nada" ID="ID_1436337955" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="No Ok" FOLDED="true" ID="ID_864789468" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="no mover" ID="ID_1242783137" CREATED="1616167740434" MODIFIED="1616167740434"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      mover cuando se MDI ese BaseFolder
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="no" FOLDED="true" ID="ID_1861247216" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="mover" ID="ID_221493047" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
</node>
<node TEXT="hay clones fuera pero ninguno en otro baseFolder" FOLDED="true" ID="ID_167774783" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="mover" ID="ID_211451922" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
<node TEXT="si hay algunos clones bajo nodos Locked y otros no" STYLE_REF="pendingTask" ID="ID_568199118" CREATED="1616167740434" MODIFIED="1623451191993">
<icon BUILTIN="help"/>
</node>
<node TEXT="combinación de los anteriores???" STYLE_REF="pendingTask" ID="ID_962282018" CREATED="1616167740434" MODIFIED="1623451192226">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="uso de fechaUltimoUpdate" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1408368885" CREATED="1616167740434" MODIFIED="1623451192485"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      QUICK IMPORT
    </p>
  </body>
</html></richcontent>
<node TEXT="comparación MDI limitado a último rato" FOLDED="true" ID="ID_1256010845" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="para que sólo cargue files modificadas/creadas desde último update" FOLDED="true" ID="ID_192838497" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="para ese listado de files debería encontrar los nodos que tienen link a ellas" ID="ID_1989814054" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="si faltan nodos:" FOLDED="true" ID="ID_255370618" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="crear nodos (importar nuevos nodos/files)" ID="ID_607337262" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="para los que si existen:" FOLDED="true" ID="ID_1264031298" CREATED="1616167740434" MODIFIED="1616167740434">
<icon BUILTIN="button_cancel"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      dado que no logra hacer una comparación real, quizás es mejor dejar esto fuera
    </p>
  </body>
</html></richcontent>
<node TEXT="revisar si su dirección en link corresponde a su dirección según mapa" ID="ID_185415118" CREATED="1616167740434" MODIFIED="1616167740434"/>
<node TEXT="si no -&gt; corregir" ID="ID_1446213298" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
<node TEXT="para que los compare sólo contra nodos file/folder creados modificados desde último update" FOLDED="true" ID="ID_1221682984" CREATED="1616167740434" MODIFIED="1616167740434">
<icon BUILTIN="button_cancel"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      no funciona:
    </p>
    <p>
      mover o copiar un nodo no cambia su fecha Modified
    </p>
  </body>
</html></richcontent>
<node TEXT="para estos nodos" FOLDED="true" ID="ID_1155808278" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="revisar si su dirección en link corresponde a su dirección según mapa" ID="ID_703628628" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
</node>
</node>
<node TEXT="pros" FOLDED="true" ID="ID_589378459" CREATED="1616167740434" MODIFIED="1616167740434">
<node TEXT="debería ser mucho más rápida la actualización" ID="ID_866364976" CREATED="1616167740434" MODIFIED="1616167740434"/>
</node>
<node TEXT="contras" FOLDED="true" ID="ID_1903245686" CREATED="1616167740435" MODIFIED="1616167740435">
<node TEXT="no revisaría si se eliminaron archivos en el disco de nodos file que no han sido modificados" ID="ID_902233000" CREATED="1616167740435" MODIFIED="1616167740435"/>
<node TEXT="no movería ni renombraría files" ID="ID_644570136" CREATED="1616167740435" MODIFIED="1616167740435"/>
</node>
<node TEXT="sería como un &quot;Quick Import&quot;" ID="ID_943513913" CREATED="1616167740435" MODIFIED="1616167740435"/>
</node>
<node TEXT="prueba markdown" STYLE_REF="pendingTask" ID="ID_629687194" CREATED="1621034580939" MODIFIED="1623451192779"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>null

# MDI

The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:


## nameFilter

A filter to perform on the name of traversed files. If set, only files which match are brought.

This option allowes four types of inputs:


* nothing
   * means no filtering (default)|
* regex
   * example: `~/.*\.mp3/`
* &apos;simplified&apos; regex
   * example: `~.*\.mp3 `
* string with \*
   * example: `*.mp3`
   * equivalent to regex:      `~/(?i).*\.mp3/`
* list of strings with \* and ; 
   * example: `*.mp3;*.png`
   * equivalent to regex:      `~/(?i)(.*\.mp3|.*\.png)/`


## maxDepth

The maximum number of directory levels when recursing

(default is -1 which means no limit, set to 0 for no recursion)




## markWhenMoved

change styles to moved/renamed file Nodes

set to|description
---|---
0 | to change style only if node hasn&apos;t a previous one (default)
1 | to allways change the style
-1 | to never change the style




## checkIfReallyBroken

Check if existing nodes pointing to filtered files still exist.
This option is only useful if you defined a nameFilter before
but in the map there are also some files that doesn&apos;t match
this filter definition

(for example if you brought them manually or import them
before the actual namefilter setting)

- default is 0 which means don&apos;t check --&gt; Mark node as missing also if it doesn&apos;t match the current filter,
- set to 1 to extra check if a not matching file still exists in drive


---
  </text>
</richcontent>
</node>
</node>
<node TEXT="v0.0.1" ID="ID_7917531" CREATED="1616167740435" MODIFIED="1616167740435">
<node TEXT="a." STYLE_REF="Organizador" FOLDED="true" ID="ID_1300092453" CREATED="1616167740435" MODIFIED="1616167740435">
<node TEXT="1. breve" STYLE_REF="Organizador" FOLDED="true" ID="ID_1757158879" CREATED="1616167740435" MODIFIED="1616167740435">
<node TEXT="hacer compatible con Linux" STYLE_REF="completedTask" FOLDED="true" ID="ID_1640404594" CREATED="1616167740435" MODIFIED="1623451294561">
<node TEXT="agregar file.separator" STYLE_REF="locked" FOLDED="true" ID="ID_68890113" CREATED="1616167740435" MODIFIED="1616167740435">
<node TEXT="CreateBaseFolderNode.groovy" STYLE_REF="missing" ID="ID_1967464393" CREATED="1616167740435" MODIFIED="1673969986982" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/CreateBaseFolderNode.groovy">
<attribute NAME="lastAccessTime" VALUE="17-01-22 13:39" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T13:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="25-02-21 13:27" OBJECT="org.freeplane.features.format.FormattedDate|2021-02-25T13:27-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="22-08-20 16:54" OBJECT="org.freeplane.features.format.FormattedDate|2020-08-22T16:54-0400|datetime"/>
<attribute NAME="fileSize" VALUE="475" OBJECT="org.freeplane.features.format.FormattedNumber|475|#,##0"/>
</node>
<node TEXT="ImportJustFolders.groovy" STYLE_REF="missing" ID="ID_572661291" CREATED="1616167740435" MODIFIED="1673969986982" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/ImportJustFolders.groovy">
<attribute NAME="lastAccessTime" VALUE="17-01-22 13:39" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T13:39-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="05-12-20 10:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-05T10:32-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="05-12-20 10:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-05T10:32-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.916" OBJECT="org.freeplane.features.format.FormattedNumber|1916|#,##0"/>
</node>
<node TEXT="MDI.groovy" STYLE_REF="missing" ID="ID_784801119" CREATED="1616167740435" MODIFIED="1673969986983" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/lib/MDI.groovy">
<attribute NAME="lastModifiedTime" VALUE="08-01-22 11:01" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-08T11:01-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:58" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:58-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="05-12-20 10:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-05T10:32-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="24.527" OBJECT="org.freeplane.features.format.FormattedNumber|24527|#,##0"/>
</node>
<node TEXT="Map-Drive-Inator.groovy" STYLE_REF="missing" ID="ID_831125948" CREATED="1616167740436" MODIFIED="1673969986984" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/Map-Drive-Inator.groovy">
<attribute NAME="lastAccessTime" VALUE="17-01-22 19:34" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T19:34-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastModifiedTime" VALUE="18-03-21 17:30" OBJECT="org.freeplane.features.format.FormattedDate|2021-03-18T17:30-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="05-12-20 10:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-05T10:32-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="26.314" OBJECT="org.freeplane.features.format.FormattedNumber|26314|#,##0"/>
</node>
</node>
</node>
<node TEXT="crear file desde nota de nodo V2" STYLE_REF="completedTask" FOLDED="true" ID="ID_1762578705" CREATED="1616167740436" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_51150602" STARTINCLINATION="427.49999 pt;0 pt;" ENDINCLINATION="427.49999 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def fPath = MDI.obtainPathFromMap(node)
    </p>
    <p>
      
    </p>
    <p>
      if(fPath &amp;&amp; fPath != ''){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = node.note.plain
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if (texto &amp;&amp; texto != ''){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!node.link.uri){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def file = new File(fPath + node.text)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file.text = texto
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.link.file = file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo = 'selected node has allready a link'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;} else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo = 'no Note in selected node'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo = 'no Base folder node in pathToRoot from selected node'
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<node TEXT="nota.txt" ID="ID_227406944" CREATED="1616167740436" MODIFIED="1673969738879" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/nota.txt">
<attribute NAME="lastModifiedTime" VALUE="27-12-20 17:56" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-27T17:56-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:19" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:19-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T16:03-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="26" OBJECT="org.freeplane.features.format.FormattedNumber|26|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Esta es una nota de prueba
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="lógica" FOLDED="true" ID="ID_1883105397" CREATED="1616167740437" MODIFIED="1616167740437">
<node TEXT="sólo si posee Base node en su pathToRoot" STYLE_REF="completedTask" ID="ID_1315579221" CREATED="1616167740437" MODIFIED="1623451295129"/>
<node TEXT="sólo si no tiene link" STYLE_REF="completedTask" ID="ID_1354867652" CREATED="1616167740437" MODIFIED="1623451295280"/>
<node TEXT="sólo si tiene nota" STYLE_REF="completedTask" ID="ID_578543257" CREATED="1616167740437" MODIFIED="1623451295402"/>
<node TEXT="sólo si extensión es aceptada" STYLE_REF="discardedTask" FOLDED="true" ID="ID_1196711369" CREATED="1616167740437" MODIFIED="1623451305778">
<node TEXT="decidí que usuario es el responsable, no el programa" ID="ID_1971368062" CREATED="1616167740437" MODIFIED="1616167740437"/>
</node>
</node>
<node TEXT="debe arreglar texto de nodo para que" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1921939438" CREATED="1616167740437" MODIFIED="1623451193015">
<node TEXT="incluya extensión" ID="ID_997462489" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="sea compatible con Sistema Operativo" ID="ID_501252934" CREATED="1616167740437" MODIFIED="1616167740437"/>
</node>
<node TEXT="nota _ con _ un montón de_carácteres raros.txt" ID="ID_1118921209" CREATED="1616167740437" MODIFIED="1673969738881" LINK="file:/E:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/nota%20_%20con%20_%20un%20montón%20de_carácteres%20raros.txt"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Esta es una nota de prueba
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="04-01-21 14:36" OBJECT="org.freeplane.features.format.FormattedDate|2021-01-04T14:36-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-01-23 12:07" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-16T12:07-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="10-01-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-01-10T16:03-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="26" OBJECT="org.freeplane.features.format.FormattedNumber|26|#,##0"/>
</node>
</node>
</node>
<node TEXT="2. mediano" STYLE_REF="Organizador" FOLDED="true" ID="ID_367107251" CREATED="1616167740437" MODIFIED="1616167740437">
<node TEXT="Map Drive Inator debe escribir los cambios que haga en el disco en el Log de Freeplane" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1673288081" CREATED="1616167740437" MODIFIED="1642176810945">
<node TEXT="API LogUtils" ID="ID_1389895232" CREATED="1616167740437" MODIFIED="1616167740437" LINK="http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/LogUtils.html"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      www.freeplane.org
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="logear cambios realizados en disco" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1396567126" CREATED="1616167740437" MODIFIED="1623451193241"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ejemplo:
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;try {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0000cc">logger.info</font>(&quot;this node as date: &quot; + node.to.date)
    </p>
    <p>
      &nbsp;&nbsp;} catch (Exception ex) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#0000cc">logger.severe</font>('error on conversion of &quot;' + node.text + '&quot; to date', ex)
    </p>
    <p>
      &nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      y además existe el
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000cc">logger.warn</font>
    </p>
  </body>
</html></richcontent>
<node TEXT="files" FOLDED="true" ID="ID_456784834" CREATED="1616167740437" MODIFIED="1616167740437">
<node TEXT="movimientos / cambio de nombre" ID="ID_1280312013" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="Nuevos" ID="ID_614262687" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="no encontrados" ID="ID_51946816" CREATED="1616167740437" MODIFIED="1616167740437"/>
</node>
<node TEXT="folders" FOLDED="true" ID="ID_1579561212" CREATED="1616167740437" MODIFIED="1616167740437">
<node TEXT="creación" ID="ID_179278114" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="mover (creación y eliminación)" ID="ID_1576116273" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="mover parcial (creación en un lugar pero permanece en el anterior)" ID="ID_456124923" CREATED="1616167740437" MODIFIED="1616167740437"/>
<node TEXT="folders no encontrados" ID="ID_317567180" CREATED="1616167740437" MODIFIED="1616167740437"/>
</node>
</node>
<node TEXT="logear errores" STYLE_REF="pendingTask" FOLDED="true" ID="ID_889104490" CREATED="1616167740438" MODIFIED="1623451193475">
<node TEXT="intentar mover o cambiar de nombre archivos bloqueados por otras apps" FOLDED="true" ID="ID_208862049" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="marcar estos nodos como pendientes de cambio" ID="ID_1882859725" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="indicar en mensaje final" ID="ID_1186752650" CREATED="1616167740438" MODIFIED="1616167740438"/>
</node>
<node TEXT="intentos de eliminar folders que aún tienen archivos" ID="ID_1059308610" CREATED="1616167740438" MODIFIED="1616167740438"/>
</node>
<node TEXT="debe ser un checkbox en preferences" STYLE_REF="pendingTask" ID="ID_56858058" CREATED="1616167740438" MODIFIED="1623451193768"/>
</node>
<node TEXT="ver compatibilidad con links to hiperlink relative" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1139307681" CREATED="1616167740438" MODIFIED="1623451194027">
<node ID="ID_164009058" TREE_ID="ID_1803029347">
<node ID="ID_1993328284" TREE_ID="ID_205408240"/>
<node ID="ID_1354674067" TREE_ID="ID_1798418570"/>
<node ID="ID_78244106" TREE_ID="ID_506051445"/>
<node ID="ID_1461339572" TREE_ID="ID_1935090017"/>
<node ID="ID_1211658470" TREE_ID="ID_1216560097"/>
</node>
<node TEXT="puede cambiar preferencia" STYLE_REF="pendingTask" FOLDED="true" ID="ID_192846341" CREATED="1616167740438" MODIFIED="1623451194274">
<node TEXT="ejemplo saveLeanMap.groovy" ID="ID_1629629314" CREATED="1616167740438" MODIFIED="1616167740438"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/Scripts/Utilidades&quot;})
    </p>
    <p>
      
    </p>
    <p>
      // get initial values
    </p>
    <p>
      def save_modification_times = config.properties['save_modification_times']
    </p>
    <p>
      def save_folding = config.properties['save_folding']
    </p>
    <p>
      def save_last_visited_node = config.properties['save_last_visited_node']
    </p>
    <p>
      
    </p>
    <p>
      // set &quot;lean&quot; values
    </p>
    <p>
      config.properties['save_modification_times'] = 'false'
    </p>
    <p>
      config.properties['save_folding'] = 'never_save_folding' //never_save_folding&nbsp;&nbsp;, save_folding_if_map_is_changed
    </p>
    <p>
      config.properties['save_last_visited_node'] = 'false'
    </p>
    <p>
      
    </p>
    <p>
      //saves map
    </p>
    <p>
      node.map.saved = false
    </p>
    <p>
      def guardado = node.map.save(true)
    </p>
    <p>
      
    </p>
    <p>
      //return to initial values
    </p>
    <p>
      config.properties['save_modification_times'] = save_modification_times
    </p>
    <p>
      config.properties['save_folding'] = save_folding
    </p>
    <p>
      config.properties['save_last_visited_node'] = save_last_visited_node
    </p>
    <p>
      
    </p>
    <p>
      // reports result
    </p>
    <p>
      ui.informationMessage(guardado?&quot;Map was saved in a lean format&quot;:&quot;Map couldn't get saved&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="3. largo" STYLE_REF="Organizador" FOLDED="true" ID="ID_1437550002" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="cambiar sistema de marcado de nodos/file" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1454764618" CREATED="1616167740438" MODIFIED="1623451194504">
<node TEXT="marca debe ser atributo" FOLDED="true" ID="ID_1173997015" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="freshNew" ID="ID_1291949980" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="movedRenamed" ID="ID_860501725" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="missing" ID="ID_1521536573" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="locked" ID="ID_319097360" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="modifiedFile" ID="ID_1190940753" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="papelera" ID="ID_1212398355" CREATED="1616167740438" MODIFIED="1616167740438"/>
</node>
<node TEXT="con estilos condicionales" FOLDED="true" ID="ID_653932131" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="estado" FOLDED="true" ID="ID_1014477448" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="freshNew" ID="ID_137773375" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="movedRenamed" ID="ID_381525621" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="missing" ID="ID_396919320" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="locked" ID="ID_1628886912" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="modifiedFile" ID="ID_1797604111" CREATED="1616167740438" MODIFIED="1616167740438"/>
</node>
<node TEXT="otros" FOLDED="true" ID="ID_1415847719" CREATED="1616167740438" MODIFIED="1616167740438">
<node TEXT="folder" ID="ID_1491655915" CREATED="1616167740438" MODIFIED="1616167740438"/>
<node TEXT="file" ID="ID_257831482" CREATED="1616167740438" MODIFIED="1616167740438"/>
</node>
</node>
<node TEXT="xxx" FOLDED="true" ID="ID_841971487" CREATED="1616167740438" MODIFIED="1616167740438" ICON_SIZE="20 pt">
<icon BUILTIN="folder-black-48dp"/>
<icon BUILTIN="folder-black-48dp - copia"/>
<icon BUILTIN="folder-black-48dp - copia - copia"/>
<icon BUILTIN="folderMDI"/>
<icon BUILTIN="folderMDIv2"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      cambiar íconos de estilo
    </p>
  </body>
</html></richcontent>
<node TEXT="estado" FOLDED="true" ID="ID_122214974" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="freshNew" ID="ID_1631768509" CREATED="1616167740439" MODIFIED="1616167740439"/>
<node TEXT="movedRenamed" ID="ID_1451190521" CREATED="1616167740439" MODIFIED="1616167740439"/>
<node TEXT="missing" ID="ID_342460603" CREATED="1616167740439" MODIFIED="1616167740439"/>
<node TEXT="locked" ID="ID_1101966391" CREATED="1616167740439" MODIFIED="1616167740439"/>
<node TEXT="modifiedFile" ID="ID_1196061714" CREATED="1616167740439" MODIFIED="1616167740439"/>
</node>
<node TEXT="otros" FOLDED="true" ID="ID_1266059537" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="folder" ID="ID_445404049" CREATED="1616167740439" MODIFIED="1616167740439"/>
<node TEXT="file" ID="ID_741781706" CREATED="1616167740439" MODIFIED="1616167740439"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="b." STYLE_REF="Organizador" ID="ID_742355223" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="1. breve" STYLE_REF="Organizador" FOLDED="true" ID="ID_4462277" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="comando para trabajar con imagen de externalObject" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1297337532" CREATED="1616167740439" MODIFIED="1623451194746" STYLE="bubble">
<node TEXT="nodo con imagen --&gt; traer link a file" ID="ID_45252433" CREATED="1616167740439" MODIFIED="1616167740439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      // si nodo tiene imagen pero no link
    </p>
    <p>
      // --&gt; link de nodo = link de imagen
    </p>
    <p>
      //(esto es para cuando copio archivos imágenes y no se crea link a archivo, necesario para MDI)
    </p>
    <p>
      if(!node.link.file &amp;&amp; node.externalObject){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.link.text = node.externalObject.uri
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// node.externalObject.zoom = 0.75
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      // si nodo tiene imagen y tiene link
    </p>
    <p>
      // --&gt; link de imagen = link de nodo
    </p>
    <p>
      //(esto es para que imgen se siga viendo tras modificaciones en MDI)
    </p>
    <p>
      if(node.link.file &amp;&amp; node.externalObject){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.externalObject.file = node.link.file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.externalObject.zoom = 0.75
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="script para nodo con imagen" ID="ID_752952746" CREATED="1616167740439" MODIFIED="1616167740439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      // script sólo para nodos con Imagen (.externalObject)
    </p>
    <p>
      
    </p>
    <p>
      if ( node.externalObject) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// si nodo tiene imagen pero no link --&gt; link de nodo = link de imagen&nbsp;&nbsp;|| (esto es para cuando copio archivos imágenes y no se crea link a archivo, necesario para MDI)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(!node.link.file)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.link.text = node.externalObject.uri
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// node.externalObject.zoom = 0.75
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;else // si nodo tiene imagen y tiene link --&gt; link de imagen = link de nodo&nbsp;&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;(esto es para que imagen se siga viendo tras modificaciones en MDI)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.externalObject.file = node.link.file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// node.externalObject.zoom = 0.75
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="arregla nodos con imagen de la rama" ID="ID_378933483" CREATED="1616167740439" MODIFIED="1616167740439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      // script sólo para nodos con Imagen (.externalObject)
    </p>
    <p>
      
    </p>
    <p>
      def nodos = node.findAll()
    </p>
    <p>
      
    </p>
    <p>
      nodos.each{ mdiExternalObject(it) }
    </p>
    <p>
      
    </p>
    <p>
      def mdiExternalObject(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if ( n.externalObject) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// si nodo tiene imagen pero no link --&gt; link de nodo = link de imagen&nbsp;&nbsp;|| (esto es para cuando copio archivos imágenes y no se crea link a archivo, necesario para MDI)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!n.link.file)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.link.text = n.externalObject.uri
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// node.externalObject.zoom = 0.75
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else // si nodo tiene imagen y tiene link --&gt; link de imagen = link de nodo&nbsp;&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;(esto es para que imagen se siga viendo tras modificaciones en MDI)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.externalObject.file = n.link.file
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// node.externalObject.zoom = 0.75
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="cambiar nombre de FileTimeStamps a FileStamps o FileProperties" STYLE_REF="pendingTask" ID="ID_1459102250" CREATED="1616167740439" MODIFIED="1623451195032" STYLE="bubble"/>
</node>
<node TEXT="2. mediano" STYLE_REF="Organizador" FOLDED="true" ID="ID_1576064522" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="mostrar resultado MDI en mensaje tras aplicarlo" STYLE_REF="completedTask" ID="ID_166914891" CREATED="1616167740439" MODIFIED="1623451295491"/>
</node>
<node TEXT="3. largo" STYLE_REF="Organizador" ID="ID_1976981975" CREATED="1616167740439" MODIFIED="1616167740439">
<node TEXT="botón en new imported files debe abrir menú con acciones MDI" STYLE_REF="pendingTask" ID="ID_1074393417" CREATED="1616167740439" MODIFIED="1673885073118">
<node TEXT="Prueba createMenuEntryTree" FOLDED="true" ID="ID_1882172124" CREATED="1616167740439" MODIFIED="1616167740439">
<attribute NAME="script1" VALUE="&#xd;&#xa;def arbolMenu = menuUtils.createMenuEntryTree(&apos;ScriptsEdo&apos;)&#xd;&#xa;def hijos = arbolMenu.children()&#xd;&#xa;&#xd;&#xa;texto = new StringBuilder()&#xd;&#xa;recorrer(hijos,&apos;-&apos;)&#xd;&#xa;node.createChild(&apos;resultado&apos;).note = texto.toString()&#xd;&#xa;&#xd;&#xa;def recorrer(nodos, prefijo){&#xd;&#xa;    nodos.each{ n -&gt;&#xd;&#xa;        def mObj = n.getUserObject()&#xd;&#xa;        def lab = mObj.getLabel()&#xd;&#xa;        def key = mObj.getKey()&#xd;&#xa;        println prefijo + &apos; &apos; + key + &apos;  --&gt;  &apos; + lab//.toString()&#xd;&#xa;        texto &lt;&lt; prefijo &lt;&lt; &apos; &apos;  &lt;&lt; key &lt;&lt; &apos;  --&gt;  &apos; &lt;&lt; lab &lt;&lt; &apos;\n&apos;&#xd;&#xa;        if (!n.isLeaf()){ &#xd;&#xa;            recorrer(n.children(),&apos;     &apos; + prefijo)&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def arbolMenu = menuUtils.createMenuEntryTree('MapDriveInator')
    </p>
    <p>
      def hijos = arbolMenu.children()
    </p>
    <p>
      
    </p>
    <p>
      texto = new StringBuilder()
    </p>
    <p>
      recorrer(hijos,'-')
    </p>
    <p>
      node.createChild('resultado').note = texto.toString()
    </p>
    <p>
      
    </p>
    <p>
      def recorrer(nodos, prefijo){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodos.each{ n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def mObj = n.getUserObject()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def lab = mObj.getLabel()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def key = mObj.getKey()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;println prefijo + ' ' + key + '&nbsp;&nbsp;--&gt;&nbsp;&nbsp;' + lab//.toString()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; prefijo &lt;&lt; ' '&nbsp;&nbsp;&lt;&lt; key &lt;&lt; '&nbsp;&nbsp;--&gt;&nbsp;&nbsp;' &lt;&lt; lab &lt;&lt; '\n'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!n.isLeaf()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;recorrer(n.children(),'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + prefijo)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
    <p>
      script como atributo
    </p>
  </body>
</html></richcontent>
<node TEXT="resultado" ID="ID_209527260" CREATED="1616167740439" MODIFIED="1616167740439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - MapDriveInator&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Map Drive Inator
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- CheckMissingFileNodes_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Check Missing File Nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- TimeStamps&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Time Stamps
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ClearFileTimestampsInNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Clear File Timestamps In Nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- GetFileTimestamps_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Get File Timestamps
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- SortByTimestamp_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Sort By Timestamp
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UnmarkModifiedFiles_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark Modified Files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- CreateBaseFolderNode_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Create Base Folder Node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- DistributeNewNodes_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Distribute New Nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Group&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Group
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- GroupChildnodesBy_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Group Childnodes By
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UngroupChildnodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Ungroup Childnodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ImportJustFolders_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Import Just Folders
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Map-Drive-Inator_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Map-Drive-Inator
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UnmarkMovedOrRenamedNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark Moved Or Renamed Nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UnmarkNewNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark New Nodes
    </p>
    <p>
      - Edit&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Edit
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- CopyLinkToClipboard_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Copy Link To Clipboard
    </p>
    <p>
      - NoteToFile&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Note To File
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- FileToNote_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;File To Note
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- LastLoggedError_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Last Logged Error
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- MyTempFile_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;My Temp File
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- MyTempFile2_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;My Temp File2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NoteToFile_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Note To File
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- OpenWithNotepad++_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Open With Notepad++
    </p>
    <p>
      - GroovyTempScript&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Groovy Temp Script
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- FileToNote2_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;File To Note2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- NoteToFile2_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Note To File2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- OpenWithNotepad++2_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Open With Notepad++2
    </p>
    <p>
      - OrganizarMapa&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Organizar Mapa
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UpdatesFoldersLikeMap_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Updates Folders Like Map
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="resultado" ID="ID_1970469198" CREATED="1616167740439" MODIFIED="1616167740439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - CheckMissingFileNodes_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Check Missing File Nodes
    </p>
    <p>
      - TimeStamps&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Time Stamps
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ClearFileTimestampsInNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Clear File Timestamps In Nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- GetFileTimestamps_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Get File Timestamps
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- SortByTimestamp_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Sort By Timestamp
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UnmarkModifiedFiles_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark Modified Files
    </p>
    <p>
      - CreateBaseFolderNode_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Create Base Folder Node
    </p>
    <p>
      - DistributeNewNodes_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Distribute New Nodes
    </p>
    <p>
      - Group&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Group
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- GroupChildnodesBy_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Group Childnodes By
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- UngroupChildnodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Ungroup Childnodes
    </p>
    <p>
      - ImportJustFolders_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Import Just Folders
    </p>
    <p>
      - Map-Drive-Inator_on_single_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Map-Drive-Inator
    </p>
    <p>
      - UnmarkMovedOrRenamedNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark Moved Or Renamed Nodes
    </p>
    <p>
      - UnmarkNewNodes_on_selected_node&nbsp;&nbsp;--&gt;&nbsp;&nbsp;Unmark New Nodes
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="llevar parámetros internos a preferences" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1964185152" CREATED="1616167740440" MODIFIED="1623451195502">
<node TEXT="ignorar directorios comenzados en . (como &quot;.gradle&quot;)" STYLE_REF="pendingTask" ID="ID_1174318349" CREATED="1616167740440" MODIFIED="1623451195732"/>
<node TEXT="revisar que otros parámetros internos pueden salir" STYLE_REF="pendingTask" ID="ID_1010154281" CREATED="1616167740440" MODIFIED="1623451195973"/>
</node>
</node>
</node>
</node>
<node TEXT="otro" ID="ID_1660443215" CREATED="1616167740440" MODIFIED="1616167740440">
<node TEXT="c." STYLE_REF="Organizador" FOLDED="true" ID="ID_1121592947" CREATED="1616167740440" MODIFIED="1616167740440">
<node TEXT="1. breve" STYLE_REF="Organizador" FOLDED="true" ID="ID_909440806" CREATED="1616167740440" MODIFIED="1616167740440">
<node TEXT="MDI sobre todos los BaseFolders del libro" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1934442049" CREATED="1616167740440" MODIFIED="1623451196203"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      uno a uno
    </p>
  </body>
</html></richcontent>
<node TEXT="apply MDI to all BaseFolderNodes in Map" ID="ID_156016569" CREATED="1616167740440" MODIFIED="1616167740440"/>
</node>
<node TEXT="agrupar por primeras palabras de nodos" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1878166666" CREATED="1616167740440" MODIFIED="1623451196448">
<node TEXT="agrupar nodos hermanos por primeras palabras (letras) de texto" FOLDED="true" ID="ID_196915179" CREATED="1616167740440" MODIFIED="1616167740440"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def nodo = node
    </p>
    <p>
      
    </p>
    <p>
      def nodos = nodo.parent.children.intersect(c.selecteds)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def textos = nodos*.text
    </p>
    <p>
      
    </p>
    <p>
      println &quot; letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;${letrasIntersect(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;${letrasInicio(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; palabrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;${palabrasIntersect(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;${palabrasInicio(textos[0],textos[1])} &quot;
    </p>
    <p>
      
    </p>
    <p>
      def lInt = textos[0]
    </p>
    <p>
      def lIni = textos[0]
    </p>
    <p>
      def pInt = textos[0]
    </p>
    <p>
      def pIni = textos[0]
    </p>
    <p>
      
    </p>
    <p>
      textos.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;lInt = letrasIntersect(it, lInt)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;lIni = letrasInicio(it, lIni)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;pInt = palabrasIntersect(it, pInt)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;pIni = palabrasInicio(it, pIni)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def nodoPadre = nodo.parent.createChild(nodo.parent.getChildPosition(nodo))
    </p>
    <p>
      nodoPadre.text = pIni
    </p>
    <p>
      nodoPadre.note = &quot; letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;$lInt&nbsp;&nbsp;&nbsp;\n letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lIni&nbsp;&nbsp;&nbsp;\n palabrasIntersect:&nbsp;&nbsp;$pInt&nbsp;&nbsp;&nbsp;\n palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$pIni&nbsp;&nbsp;&nbsp;\n ${nodos.size()} nodos agrupados&quot;
    </p>
    <p>
      nodos*.moveTo(nodoPadre)
    </p>
    <p>
      c.select(nodoPadre)
    </p>
    <p>
      
    </p>
    <p>
      def letrasIntersect(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras0 = textoA as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras1 = textoB as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return letras0.intersect(letras1).join()&nbsp;&nbsp;//posibilidad 1
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //-------
    </p>
    <p>
      
    </p>
    <p>
      def letrasInicio(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras0 = textoA as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras1 = textoB as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letrasIni = new StringBuilder()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def iMax = letras0.size()&gt;letras1.size()?letras1.size():letras0.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while ( i&lt;iMax &amp;&amp; letras0[i] == letras1[i]){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;letrasIni &lt;&lt; letras0[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return letrasIni
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //----------------
    </p>
    <p>
      def palabrasIntersect(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras0 = textoA.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras1 = textoB.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return palabras0.intersect(palabras1).join(' ')&nbsp;&nbsp;//posibilidad 1
    </p>
    <p>
      }
    </p>
    <p>
      //----------------
    </p>
    <p>
      
    </p>
    <p>
      def palabrasInicio(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras0 = textoA.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras1 = textoB.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabrasIni = []
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def iMax = palabras0.size()&gt;palabras1.size()?palabras1.size():palabras0.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while ( i&lt;iMax &amp;&amp; palabras0[i] == palabras1[i]){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;palabrasIni &lt;&lt; palabras0[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return palabrasIni.join(' ')
    </p>
    <p>
      }
    </p>
    <p>
      // */
    </p>
  </body>
</html></richcontent>
<node TEXT="quitar links y atributos a nodos" ID="ID_615923981" CREATED="1616167740440" MODIFIED="1616167740440">
<attribute NAME="script1" VALUE="&#xd;&#xa;def nodo = node.parent&#xd;&#xa;def nodos = nodo.findAll()-node - nodo&#xd;&#xa;&#xd;&#xa;//c.select(nodos)&#xd;&#xa;nodos*.link*.text = null&#xd;&#xa;nodos*.attributes*.clear()"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="BackUp_Edo" FOLDED="true" ID="ID_1213604687" CREATED="1616167740440" MODIFIED="1616167740440">
<node TEXT="Activo Fijo (compilado) v02 - ver_20171108.xlsx" ID="ID_1208565352" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171109.xlsx" ID="ID_216145509" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171122.xlsx" ID="ID_1062589710" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171227.xlsx" ID="ID_1251722731" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Altas Activo Fijo 2017 -" FOLDED="true" ID="ID_463689897" CREATED="1616167740440" MODIFIED="1616167740440"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_20171122.xlsx&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_2017112&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;3 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Altas Activo Fijo 2017 - ver_20171122.xlsx" ID="ID_576384333" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123.xlsx" ID="ID_549982522" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123_nr_01.xlsx" ID="ID_107155662" CREATED="1616167740440" MODIFIED="1616167740440"/>
</node>
<node TEXT="Consolidado - ver_20170719.xlsm" ID="ID_253902836" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Consolidado - ver_20170721.xlsm" ID="ID_27385329" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171121.xlsm" ID="ID_389787566" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171121_nr_01.xlsm" ID="ID_592627153" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171122.xlsm" ID="ID_1526509160" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171122_nr_01.xlsm" ID="ID_1687642587" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171214.xlsm" ID="ID_714412768" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222.xlsm" ID="ID_165731477" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_01.xlsm" ID="ID_748877021" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_02.xlsm" ID="ID_1376950772" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_03.xlsm" ID="ID_1017983640" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_04.xlsm" ID="ID_481991852" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171226.xlsm" ID="ID_896551082" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171226_nr_01.xlsm" ID="ID_709250070" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171227.xlsm" ID="ID_1587026555" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105.xlsm" ID="ID_816872023" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105_nr_01.xlsm" ID="ID_1744675556" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105_nr_02.xlsm" ID="ID_371028891" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a septiembre) - ver_20171108.xlsm" ID="ID_151029558" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (a septiembre) - ver_20171109.xlsm" ID="ID_698596713" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170727.xlsm" ID="ID_563665561" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170727_nr_01.xlsm" ID="ID_704219145" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170731.xlsm" ID="ID_1657269315" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170731_nr_01.xlsm" ID="ID_1410626634" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170814.xlsm" ID="ID_367061158" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170816.xlsm" ID="ID_891895016" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170817.xlsm" ID="ID_948227163" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170818.xlsm" ID="ID_924079383" CREATED="1616167740440" MODIFIED="1616167740440"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170818_nr_01.xlsm" ID="ID_1892437813" CREATED="1616167740440" MODIFIED="1616167740440"/>
</node>
<node TEXT="prueba" FOLDED="true" ID="ID_467987648" CREATED="1616167740440" MODIFIED="1616167740440">
<attribute NAME="script1" VALUE="&#xd;&#xa;def textos=node.children*.text&#xd;&#xa;&#xd;&#xa;println &quot; letrasIntersect:    ${letrasIntersect(textos[0],textos[1])} &quot;&#xd;&#xa;println &quot; letrasInicio:    ${letrasInicio(textos[0],textos[1])} &quot;&#xd;&#xa;println &quot; palabrasIntersect:    ${palabrasIntersect(textos[0],textos[1])} &quot;&#xd;&#xa;println &quot; palabrasInicio:    ${palabrasInicio(textos[0],textos[1])} &quot;&#xd;&#xa;&#xd;&#xa;def lInt = textos[0]&#xd;&#xa;def lIni = textos[0]&#xd;&#xa;def pInt = textos[0]&#xd;&#xa;def pIni = textos[0]&#xd;&#xa;&#xd;&#xa;textos.each{&#xd;&#xa;    lInt = letrasIntersect(it, lInt)&#xd;&#xa;    lIni = letrasInicio(it, lIni)&#xd;&#xa;    pInt = palabrasIntersect(it, pInt)&#xd;&#xa;    pIni = palabrasInicio(it, pIni)&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;node.createChild(&apos;Resultado&apos;).note = &quot; letrasIntersect:    $lInt   \n letrasInicio:       $lIni   \n palabrasIntersect:  $pInt   \n palabrasInicio:     $pIni   \n &quot;&#xd;&#xa;&#xd;&#xa;def letrasIntersect(textoA, textoB) {&#xd;&#xa;    def letras0 = textoA as List&#xd;&#xa;    def letras1 = textoB as List&#xd;&#xa;    return letras0.intersect(letras1).join()  //posibilidad 1&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;//-------&#xd;&#xa;&#xd;&#xa;def letrasInicio(textoA, textoB) {&#xd;&#xa;    def letras0 = textoA as List&#xd;&#xa;    def letras1 = textoB as List&#xd;&#xa;    def letrasIni = new StringBuilder()&#xd;&#xa;    def i = 0&#xd;&#xa;    def iMax = letras0.size()&gt;letras1.size()?letras1.size():letras0.size()&#xd;&#xa;    while ( i&lt;iMax &amp;&amp; letras0[i] == letras1[i]){&#xd;&#xa;        letrasIni &lt;&lt; letras0[i]&#xd;&#xa;        i++&#xd;&#xa;    }&#xd;&#xa;    return letrasIni&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;//----------------&#xd;&#xa;def palabrasIntersect(textoA, textoB) {&#xd;&#xa;    def palabras0 = textoA.split(&apos; &apos;) as List&#xd;&#xa;    def palabras1 = textoB.split(&apos; &apos;) as List&#xd;&#xa;    return palabras0.intersect(palabras1).join(&apos; &apos;)  //posibilidad 1&#xd;&#xa;}&#xd;&#xa;//----------------&#xd;&#xa;&#xd;&#xa;def palabrasInicio(textoA, textoB) {&#xd;&#xa;    def palabras0 = textoA.split(&apos; &apos;) as List&#xd;&#xa;    def palabras1 = textoB.split(&apos; &apos;) as List&#xd;&#xa;    def palabrasIni = []&#xd;&#xa;    def i = 0&#xd;&#xa;    def iMax = palabras0.size()&gt;palabras1.size()?palabras1.size():palabras0.size()&#xd;&#xa;    while ( i&lt;iMax &amp;&amp; palabras0[i] == palabras1[i]){&#xd;&#xa;        palabrasIni &lt;&lt; palabras0[i]&#xd;&#xa;        i++&#xd;&#xa;    }&#xd;&#xa;    return palabrasIni.join(&apos; &apos;)&#xd;&#xa;}&#xd;&#xa;// */"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def textos=node.children*.text
    </p>
    <p>
      
    </p>
    <p>
      println &quot; letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;${letrasIntersect(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;${letrasInicio(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; palabrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;${palabrasIntersect(textos[0],textos[1])} &quot;
    </p>
    <p>
      println &quot; palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;${palabrasInicio(textos[0],textos[1])} &quot;
    </p>
    <p>
      
    </p>
    <p>
      def lInt = textos[0]
    </p>
    <p>
      def lIni = textos[0]
    </p>
    <p>
      def pInt = textos[0]
    </p>
    <p>
      def pIni = textos[0]
    </p>
    <p>
      
    </p>
    <p>
      textos.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;lInt = letrasIntersect(it, lInt)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;lIni = letrasInicio(it, lIni)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;pInt = palabrasIntersect(it, pInt)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;pIni = palabrasInicio(it, pIni)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      node.createChild('Resultado').note = &quot; letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;$lInt&nbsp;&nbsp;&nbsp;\n letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lIni&nbsp;&nbsp;&nbsp;\n palabrasIntersect:&nbsp;&nbsp;$pInt&nbsp;&nbsp;&nbsp;\n palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$pIni&nbsp;&nbsp;&nbsp;\n &quot;
    </p>
    <p>
      
    </p>
    <p>
      def letrasIntersect(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras0 = textoA as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras1 = textoB as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return letras0.intersect(letras1).join()&nbsp;&nbsp;//posibilidad 1
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //-------
    </p>
    <p>
      
    </p>
    <p>
      def letrasInicio(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras0 = textoA as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letras1 = textoB as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def letrasIni = new StringBuilder()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def iMax = letras0.size()&gt;letras1.size()?letras1.size():letras0.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while ( i&lt;iMax &amp;&amp; letras0[i] == letras1[i]){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;letrasIni &lt;&lt; letras0[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return letrasIni
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //----------------
    </p>
    <p>
      def palabrasIntersect(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras0 = textoA.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras1 = textoB.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return palabras0.intersect(palabras1).join(' ')&nbsp;&nbsp;//posibilidad 1
    </p>
    <p>
      }
    </p>
    <p>
      //----------------
    </p>
    <p>
      
    </p>
    <p>
      def palabrasInicio(textoA, textoB) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras0 = textoA.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabras1 = textoB.split(' ') as List
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def palabrasIni = []
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def iMax = palabras0.size()&gt;palabras1.size()?palabras1.size():palabras0.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while ( i&lt;iMax &amp;&amp; palabras0[i] == palabras1[i]){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;palabrasIni &lt;&lt; palabras0[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return palabrasIni.join(' ')
    </p>
    <p>
      }
    </p>
    <p>
      // */
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<node TEXT="Altas Activo Fijo 2017 - ver_20171122.xlsx" ID="ID_1369219924" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123.xlsx" ID="ID_746190989" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123_nr_01.xlsx" ID="ID_632769355" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Resultado" ID="ID_1413967359" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_20171122.xlsx&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_2017112&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="BackUp_Edo" FOLDED="true" ID="ID_1060583663" CREATED="1616167740441" MODIFIED="1616167740441">
<node TEXT="Activo Fijo (compilado) v02 -" FOLDED="true" ID="ID_683150169" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Activo Fijo (compilado) v02 - ver_2017110.xlsx&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Activo Fijo (compilado) v02 - ver_20171&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Activo Fijo (compilado) v02 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Activo Fijo (compilado) v02 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;4 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171108.xlsx" ID="ID_645796338" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171109.xlsx" ID="ID_810433711" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171122.xlsx" ID="ID_439028915" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Activo Fijo (compilado) v02 - ver_20171227.xlsx" ID="ID_159922161" CREATED="1616167740441" MODIFIED="1616167740441"/>
</node>
<node TEXT="Altas Activo Fijo 2017 -" FOLDED="true" ID="ID_743996272" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_20171122.xlsx&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 - ver_2017112&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Altas Activo Fijo 2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;3 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Altas Activo Fijo 2017 - ver_20171122.xlsx" ID="ID_1129546258" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123.xlsx" ID="ID_350660019" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Altas Activo Fijo 2017 - ver_20171123_nr_01.xlsx" ID="ID_1793348433" CREATED="1616167740441" MODIFIED="1616167740441"/>
</node>
<node TEXT="Consolidado -" FOLDED="true" ID="ID_1748381427" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Consolidado - ver_2017071.xlsm&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Consolidado - ver_201707&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Consolidado -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Consolidado -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;2 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Consolidado - ver_20170719.xlsm" ID="ID_1808699910" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Consolidado - ver_20170721.xlsm" ID="ID_1884272482" CREATED="1616167740441" MODIFIED="1616167740441"/>
</node>
<node TEXT="Gastos Mantención 2013-2017" FOLDED="true" ID="ID_1887029365" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 a octe -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Gastos Mantención 2013-2017 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;4 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) -" FOLDED="true" ID="ID_1819416304" CREATED="1616167740441" MODIFIED="1616167740441"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a octubre) - ver_20171121.xlsm&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a octubre) - ver_201&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Gastos Mantención 2013-2017 (a octubre) -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a octubre) -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;16 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171121.xlsm" ID="ID_1855523942" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171121_nr_01.xlsm" ID="ID_1164758848" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171122.xlsm" ID="ID_1432851948" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171122_nr_01.xlsm" ID="ID_868009224" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171214.xlsm" ID="ID_1306590454" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222.xlsm" ID="ID_1345427325" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_01.xlsm" ID="ID_876237106" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_02.xlsm" ID="ID_483444287" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_03.xlsm" ID="ID_1385777395" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171222_nr_04.xlsm" ID="ID_62649997" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171226.xlsm" ID="ID_4398052" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171226_nr_01.xlsm" ID="ID_833766693" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20171227.xlsm" ID="ID_1718437714" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105.xlsm" ID="ID_172193624" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105_nr_01.xlsm" ID="ID_155643231" CREATED="1616167740441" MODIFIED="1616167740441"/>
<node TEXT="Gastos Mantención 2013-2017 (a octubre) - ver_20180105_nr_02.xlsm" ID="ID_1889535011" CREATED="1616167740441" MODIFIED="1616167740441"/>
</node>
<node TEXT="Gastos Mantención 2013-2017 (a septiembre) -" FOLDED="true" ID="ID_459180582" CREATED="1616167740442" MODIFIED="1616167740442"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a septiembre) - ver_2017110.xlsm&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a septiembre) - ver_2017110&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Gastos Mantención 2013-2017 (a septiembre) -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (a septiembre) -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;2 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Gastos Mantención 2013-2017 (a septiembre) - ver_20171108.xlsm" ID="ID_326554253" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 (a septiembre) - ver_20171109.xlsm" ID="ID_1453172130" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb -" FOLDED="true" ID="ID_1542724629" CREATED="1616167740442" MODIFIED="1616167740442"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170727.xlsm&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (version 1).xlsb - ver_201707&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Gastos Mantención 2013-2017 (version 1).xlsb -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 (version 1).xlsb -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;4 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170727.xlsm" ID="ID_1582165058" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170727_nr_01.xlsm" ID="ID_193704948" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170731.xlsm" ID="ID_1642252007" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 (version 1).xlsb - ver_20170731_nr_01.xlsm" ID="ID_1838095394" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
<node TEXT="Gastos Mantención 2013-2017 v02 -" FOLDED="true" ID="ID_1579648636" CREATED="1616167740442" MODIFIED="1616167740442"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;letrasIntersect:&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 v02 - ver_2017081.xlsm&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;letrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 v02 - ver_2017081&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasIntersect:&nbsp;&nbsp;Gastos Mantención 2013-2017 v02 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;palabrasInicio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gastos Mantención 2013-2017 v02 -&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;5 nodos agrupados
    </p>
  </body>
</html></richcontent>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170814.xlsm" ID="ID_1674169221" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170816.xlsm" ID="ID_916832340" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170817.xlsm" ID="ID_1524701761" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170818.xlsm" ID="ID_1707320995" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="Gastos Mantención 2013-2017 v02 - ver_20170818_nr_01.xlsm" ID="ID_1943076167" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="listado extensiones de archivos de branch" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1475784974" CREATED="1616167740442" MODIFIED="1623451196678"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      0.&nbsp;&nbsp;&nbsp;.noGroup
    </p>
    <p>
      1.&nbsp;&nbsp;&nbsp;0
    </p>
    <p>
      2.&nbsp;&nbsp;&nbsp;1
    </p>
    <p>
      3.&nbsp;&nbsp;&nbsp;2
    </p>
    <p>
      4.&nbsp;&nbsp;&nbsp;3
    </p>
    <p>
      5.&nbsp;&nbsp;&nbsp;4
    </p>
    <p>
      6.&nbsp;&nbsp;&nbsp;bak
    </p>
    <p>
      7.&nbsp;&nbsp;&nbsp;class
    </p>
    <p>
      8.&nbsp;&nbsp;&nbsp;dsld
    </p>
    <p>
      9.&nbsp;&nbsp;&nbsp;exe
    </p>
    <p>
      10.&nbsp;&nbsp;groovy
    </p>
    <p>
      11.&nbsp;&nbsp;jar
    </p>
    <p>
      12.&nbsp;&nbsp;jpg
    </p>
    <p>
      13.&nbsp;&nbsp;json
    </p>
    <p>
      14.&nbsp;&nbsp;lck
    </p>
    <p>
      15.&nbsp;&nbsp;md
    </p>
    <p>
      16.&nbsp;&nbsp;mm
    </p>
    <p>
      17.&nbsp;&nbsp;pdf
    </p>
    <p>
      18.&nbsp;&nbsp;png
    </p>
    <p>
      19.&nbsp;&nbsp;properties
    </p>
    <p>
      20.&nbsp;&nbsp;xlsx
    </p>
    <p>
      21.&nbsp;&nbsp;xml
    </p>
  </body>
</html></richcontent>
<node TEXT="no recuerdo como hice esto, pero podría ser una funcionalidad de acá" STYLE_REF="pendingTask" ID="ID_1802474824" CREATED="1616167740442" MODIFIED="1623451196905" HGAP_QUANTITY="13.25 pt" VSHIFT_QUANTITY="-0.75 pt"/>
<node TEXT="buscar en pruebas" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1946023991" CREATED="1616167740442" MODIFIED="1623451197190">
<node TEXT="acá" ID="ID_1617408256" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="más abajo" ID="ID_718988925" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
</node>
</node>
<node TEXT="2. mediano" STYLE_REF="Organizador" FOLDED="true" ID="ID_1710695786" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="crear botón para marcar &quot;toBeDeleted&quot; que envíe al archivo a una carpeta &quot;cesta&quot; en la base del proyecto" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1829837337" CREATED="1616167740442" MODIFIED="1623451197420">
<node TEXT="debe crear nodo cesta si éste no existe" FOLDED="true" ID="ID_1080657483" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="nodo cesta debe ser corresponder a un folder en drive?" FOLDED="true" ID="ID_1317431159" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="tengo la impresión que sí, para evitar confuciones cuando el usuario decide vaciar esa carpeta en el disco duro" ID="ID_435942811" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
</node>
<node TEXT="marca nodo cesta debe ser un atributo" ID="ID_378003888" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="nodo cesta debe además tener un formato reconocible" ID="ID_1320987840" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="definir si envía los marcados para borrar" FOLDED="true" ID="ID_1159043846" CREATED="1616167740442" MODIFIED="1616167740442"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en que momento?
    </p>
  </body>
</html></richcontent>
<node TEXT="al comienzo de ejecución MDI" ID="ID_1587338360" CREATED="1616167740442" MODIFIED="1616167740442">
<icon BUILTIN="forward"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      permite ir marcando y decidiendo
    </p>
    <p>
      
    </p>
    <p>
      al momento que se está conforme se ejecuta
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      nodo permanece ahí
    </p>
    <p>
      al ejecutar MDI se mueve nodo y file
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="envía seleccionados tipo node magnet." ID="ID_712505145" CREATED="1616167740442" MODIFIED="1616167740442"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      nodo se mueve inmediatamente
    </p>
    <p>
      al ejecutar MDI se mueve file
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="envía seleccionados tipo node magnet.y los mueve inmediatamente en drive" ID="ID_1073850054" CREATED="1616167740442" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1738150058" MIDDLE_LABEL="requiere esto?" STARTINCLINATION="379.49999 pt;27 pt;" ENDINCLINATION="235.49999 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      nodo se mueve inmediatamente
    </p>
    <p>
      file se mueve inmediatamente
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="nodo cesta puede ser por nivel" FOLDED="true" ID="ID_1653054996" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="al enviar a cesta busque el más cercano" FOLDED="true" ID="ID_1281665410" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="bajando por pathToRoot" ID="ID_555690643" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="ver si tiene nodo hermano &quot;cesta&quot;" ID="ID_480897375" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
<node TEXT="mirar lógica de" STYLE_REF="locked" FOLDED="true" ID="ID_995891861" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="hierarchySwap.groovy" STYLE_REF="missing" FOLDED="true" ID="ID_1355207503" CREATED="1616167740336" MODIFIED="1673969986985" LINK="file:/C:/Users/Edo/Documents/GitHub/Freepane_Hierarchy-Swap/swapOMatic/scripts/hierarchySwap.groovy">
<attribute NAME="lastModifiedTime" VALUE="13-11-20 08:44" OBJECT="org.freeplane.features.format.FormattedDate|2020-11-13T08:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="14-05-21 11:08" OBJECT="org.freeplane.features.format.FormattedDate|2021-05-14T11:08-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="13-11-20 08:44" OBJECT="org.freeplane.features.format.FormattedDate|2020-11-13T08:44-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.617" OBJECT="org.freeplane.features.format.FormattedNumber|4617|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/Swap-O-Matic&quot;})
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      nAttGroupBy = 'groupBy'
    </p>
    <p>
      nAttSortBy = 'sortBy'
    </p>
    <p>
      
    </p>
    <p>
      def fieldsNode = getFieldsNode(node, nAttGroupBy)
    </p>
    <p>
      
    </p>
    <p>
      c.statusInfo = fieldsNode?&quot;Hierarchy-Swap applied: (using parameters defined in '$fieldsNode')&quot;:&quot;Simple Hierarchy-Swap applied&quot;
    </p>
    <p>
      
    </p>
    <p>
      if(!fieldsNode){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// ui.informationMessage(&quot;aplicando swap simple&quot;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groupByClsre = groupCriterio('TEXT')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sortByClsre = sortCriterio('TEXT')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodos = c.selecteds
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodos.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (isSwappable(it)){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;applySwap(it,'TEXT','TEXT')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c.statusInfo = &quot;node $it.text couldn't be swapped&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// ui.informationMessage(&quot;aplicando swap complejo&quot;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def baseLevel=fieldsNode.getNodeLevel(true)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def k = getChildPos(fieldsNode)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def baseNode =fieldsNode.parent.children[ k + 1 ]
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if ( baseNode.find{true}.size() &gt; 100 ) { baseNode.folded = true }
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def attGroupBy = fieldsNode[nAttGroupBy]?:&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def attSortBy = fieldsNode[nAttSortBy]?:attGroupBy
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groupByClsre = groupCriterio(attGroupBy)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sortByClsre = sortCriterio(attSortBy)
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;fieldsNode.children.eachWithIndex{fieldNode, i -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def j=0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while ( i + 1 &lt; fieldNode.details.to.num0 &amp;&amp; j&lt;5 ) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def prevLevel = fieldNode.details.to.num0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def inMapLevel = baseLevel + prevLevel - 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def thatLevelNodes = baseNode.find{it.getNodeLevel(true)==inMapLevel}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thatLevelNodes.each{ applySwap(it,attGroupBy,attSortBy) }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def fallingFieldNode = fieldsNode.children.find{it.details.to.num0 == prevLevel - 1}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fieldNode.details = prevLevel - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fallingFieldNode.details = prevLevel
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;j++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fieldNode.details = i + 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      // region: Closures
    </p>
    <p>
      
    </p>
    <p>
      Closure groupCriterio(t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (t.toUpperCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['TEXT',&quot;&quot;]:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a.plainText == b.plainText}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'DETAILS':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a.details.to.plain == b.details.to.plain}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a[e] == b[e] }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Closure sortCriterio(t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (t.toUpperCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['TEXT',&quot;&quot;]:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e&nbsp;&nbsp;-&gt; a.plainText}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;&nbsp;'TEXTNUM':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e&nbsp;&nbsp;-&gt; a.to.num0 * -1}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'DETAILS':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e -&gt; a.details.to.plain}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e -&gt; a[e]?a[e].isNumber()?a[e].to.num0 * -1:a[e].toString():&quot;&quot;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      // end
    </p>
    <p>
      
    </p>
    <p>
      // region: Methods
    </p>
    <p>
      
    </p>
    <p>
      def applySwap(n,t,s){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toUngroup(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toSwap(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toGroup(n,t.toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sortChilds(n,s.toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{sortChilds(it,s.toString())}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toUngroup(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def q1 = n.children.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{ n1 -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def q = n1.children.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (def i = 1; i &lt; q; i++) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.appendChild(n1)//.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (def i = q - 1; i&gt;0; i--){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n1.children[i].moveTo(n.children[i+q1-1])
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q1 += q - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toSwap(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{n1 -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def n2 = n1.children[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def childs =[] + n2.children
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n2.moveTo(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n1.moveTo(n2)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;childs.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.moveTo(n1)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toGroup(n,t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while (i &lt; n.children.size()) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def childNode_i = n.children[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def alikeNodes = n.children.findAll{m -&gt; groupByClsre(m,childNode_i,t)} - childNode_i
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alikeNodes.each{ig-&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ig.children.each{it.moveTo(childNode_i)}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ig.delete()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def sortChilds(n, t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sorted = new ArrayList(n.children).sort{ it -&gt; sortByClsre(it, t) }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sorted.eachWithIndex { it, i -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.moveTo(n, i)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def getFieldsNode(n, attr){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def fNode = n.pathToRoot.find{it.attributes.containsKey(attr)}?:getFieldsNode2(n, attr)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return fNode
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def getFieldsNode2(n, attr){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodos = n.pathToRoot.drop(1).reverse()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def baseNodeX = nodos.find{m -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def i = getChildPos(m);
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i&gt;0 &amp;&amp; m.parent.children[ i - 1 ].attributes.containsKey(attr)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return baseNodeX?baseNodeX.parent.children[getChildPos(baseNodeX)-1]:null
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def getChildPos(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return n.parent.getChildPosition(n)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def isSwappable(n) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;!n.leaf &amp;&amp; !n.children.any{it.leaf}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      // end
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="los archivos missing dentro de nodos cesta ..." FOLDED="true" ID="ID_91628038" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="deben ser marcados como missing?" ID="ID_1245052406" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="deben ser simplemente borrados?" FOLDED="true" ID="ID_403701087" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="y si posee nota o atributos o nodos hijos? que hace?" ID="ID_856996207" CREATED="1616167740442" MODIFIED="1616167740442"/>
</node>
<node TEXT="deben ser marcados con otro formato?" FOLDED="true" ID="ID_1592053649" CREATED="1616167740442" MODIFIED="1616167740442">
<icon BUILTIN="forward"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      tipo missing pero en gris, (no alarmante)
    </p>
  </body>
</html></richcontent>
<node TEXT="y perder el link al file" ID="ID_562504942" CREATED="1616167740442" MODIFIED="1616167740442"/>
<node TEXT="y mantener los fileTimeStamps para tener el momento de su eliminación" FOLDED="true" ID="ID_1652292841" CREATED="1616167740442" MODIFIED="1616167740442">
<node TEXT="agregar un fileTimeStamp con fecha de enviado a papelera" ID="ID_738055361" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
</node>
</node>
<node TEXT="parámetro GetFileTimeStamp" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1496648578" CREATED="1616167740443" MODIFIED="1623451197640">
<node TEXT="MDI aplique" FOLDED="true" ID="ID_717732217" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="timestamp siempre" STYLE_REF="pendingTask" ID="ID_1089488788" CREATED="1616167740443" MODIFIED="1623451197869"/>
<node TEXT="automáticamente a archivos movedRenamed" STYLE_REF="pendingTask" ID="ID_219830976" CREATED="1616167740443" MODIFIED="1623451198103"/>
<node TEXT="automáticamente a archivos freshNew" STYLE_REF="pendingTask" ID="ID_685235846" CREATED="1616167740443" MODIFIED="1623451198334"/>
<node TEXT="automáticamente a freshNew + movedRenamed" STYLE_REF="pendingTask" ID="ID_504455264" CREATED="1616167740443" MODIFIED="1623451198553"/>
</node>
<node TEXT="definido en?" FOLDED="true" ID="ID_1616862337" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="preferencias FP" ID="ID_651930016" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="Mapa" ID="ID_1499401092" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="BaseFolderNode" ID="ID_1442595835" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
<node STYLE_REF="pendingTask" FOLDED="true" ID="ID_904998969" CREATED="1616167740443" MODIFIED="1623451198779"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ERROR: al clonar <b><u>Y</u></b>&nbsp;cambiar de nombre a archivo. entra en conflicto SIMILARITY
    </p>
  </body>
</html>
</richcontent>
<node TEXT="last lines from log.0 file" ID="ID_1020817298" CREATED="1616167740443" MODIFIED="1616167740443"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      STDOUT: Oct 14, 2020 11:14:06 AM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: error executing script C:\Users\Edo\Documents\GitHub\Freeplane_Map-Drive-Inator\Map-Drive-Inator.groovy - giving up
    </p>
    <p>
      
    </p>
    <p>
      groovy.lang.MissingMethodException: No signature of method: MDI$_chooseClone_closure12.similarity() is applicable for argument types: (String, String) values: [C:\Users\Edo\Documents\Edo GMBH\Semillas Baer\Docs. trabajo\Proyecto indicadores\02 Procedimientos\Analisis Deudores 11305\Crear Informe Deudores en Francia\revisi�n caso voucher Iansagro.xlsx, ...]
    </p>
    <p>
      
    </p>
    <p>
      STDOUT: Oct 14, 2020 11:14:06 AM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: Error executing the script:
    </p>
    <p>
      
    </p>
    <p>
      No signature of method: MDI$_chooseClone_closure12.similarity() is applicable
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;for argument types: (String, String) values: [C:\Users\Edo\Documents\Edo
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;GMBH\Semillas Baer\Docs. trabajo\Proyecto indicadores\02 Procedimientos\Analisis
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;Deudores 11305\Crear Informe Deudores en Francia\revisi�n caso voucher
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;Iansagro.xlsx, ...] at line -1
    </p>
    <p>
      
    </p>
    <p>
      STDOUT: Oct 14, 2020 11:14:06 AM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: link is not a file uri: java.lang.IllegalArgumentException: URI has a fragment component
    </p>
    <p>
      
    </p>
    <p>
      STDOUT: Oct 14, 2020 11:14:06 AM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: link is not a file uri: java.lang.IllegalArgumentException: URI has a fragment component
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      14-10-2020&nbsp;&nbsp;11:14:06 AM
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="ver si al cambiar de nombre a un archivo clonado anteriormente también se produce error" ID="ID_1368378331" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="alternativas" FOLDED="true" ID="ID_1271031519" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="separar cambio de nombre / mover en dos pasos" FOLDED="true" ID="ID_806479193" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="cambio nombre de archivo" ID="ID_771000617" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="cambio de folders de archivo" ID="ID_1128489923" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
<node TEXT="cambiar momento donde revisa similarity" ID="ID_1455000134" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="poner un try catch y en caso de error separar cambio de nombre / mover en dos pasos" FOLDED="true" ID="ID_1861404615" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="cambio nombre de archivo" FOLDED="true" ID="ID_1141658650" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="sin aplicar Similarity" ID="ID_1217271783" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
<node TEXT="cambio de folders de archivo" FOLDED="true" ID="ID_1053178238" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="ya aplicando Similarity" ID="ID_676141061" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
<node TEXT="poner un try catch y simplemente realizar una de las dos acciones" FOLDED="true" ID="ID_871101166" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="revisar clones (similarity)" ID="ID_1914764485" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="cambiar nombre dearchivo" ID="ID_1728481971" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
</node>
<node TEXT="crear formatos condicionales que permitan diferenciar documentos activos hace poco con archivos sin movimiento" STYLE_REF="pendingTask" FOLDED="true" ID="ID_517331866" CREATED="1616167740443" MODIFIED="1623451199028"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      xxxccc cc
    </p>
  </body>
</html></richcontent>
<node TEXT="modificado hoy" ID="ID_240654981" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="modificado últimos 3 días" ID="ID_1625147315" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="modificado últimos 10 días" ID="ID_184340889" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="modificado últimos 2 meses" ID="ID_1980325978" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="modificado último semestre" ID="ID_504901664" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="estas etapas deberían ser modificables según preferencias" FOLDED="true" ID="ID_32466919" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="en preferencias freeplane?" ID="ID_1856544644" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="o diferente para cada mapa?" ID="ID_358696534" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
</node>
<node TEXT="3. largo" STYLE_REF="Organizador" FOLDED="true" ID="ID_162699325" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="nodos no clones con igual link --&gt; ¿crea copia archivo?" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1364746044" CREATED="1616167740443" MODIFIED="1623451199272">
<node TEXT="actualmente" STYLE_REF="Iniciativa" FOLDED="true" ID="ID_1166347955" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="simplemente lo mueve de ida y vuelta" ID="ID_1623044097" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="para que archivo quede en un solo lugar se debe copiar como clon en el mapa" ID="ID_409790289" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
<node TEXT="1a versión" STYLE_REF="Iniciativa" FOLDED="true" ID="ID_455244569" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="revisa si hay nodos con igual link que no son clones" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1531382187" CREATED="1616167740443" MODIFIED="1623451201148">
<node TEXT="links a archivos" ID="ID_414095250" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="obviamente búsqueda en folders que no son locked" ID="ID_722019247" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
<node TEXT="marca nodos con conflicto" STYLE_REF="pendingTask" ID="ID_1751006135" CREATED="1616167740443" MODIFIED="1623451199859"/>
<node TEXT="les agrega hijo con nota sobre posibles alternativas" STYLE_REF="pendingTask" ID="ID_1507780607" CREATED="1616167740443" MODIFIED="1623451200123"/>
<node TEXT="le pone Locked a los nodos que no coinciden ruta árbol con ruta mapa" STYLE_REF="pendingTask" ID="ID_913896595" CREATED="1616167740443" MODIFIED="1623451200369"/>
<node TEXT="agrega esta información en mensaje de &quot;new imported files&quot;" STYLE_REF="pendingTask" ID="ID_1061306016" CREATED="1616167740443" MODIFIED="1623451200590"/>
</node>
<node TEXT="2da versión" STYLE_REF="Iniciativa" FOLDED="true" ID="ID_716684508" CREATED="1616167740443" MODIFIED="1616167740443">
<node ID="ID_1311561112" TREE_ID="ID_1531382187">
<node ID="ID_1625447430" TREE_ID="ID_414095250"/>
<node ID="ID_987724847" TREE_ID="ID_722019247"/>
</node>
<node TEXT="si ambos están en mismo folder" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1394882888" CREATED="1616167740443" MODIFIED="1623451201331">
<node TEXT="avisa pero lo permite" ID="ID_1424715766" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="da la opción de cambiar el nombre a uno y crear copia" FOLDED="true" ID="ID_443667476" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="copia" ID="ID_47348970" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="clon con branch" ID="ID_1031014323" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="clon sin branch" ID="ID_1213222528" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
</node>
<node TEXT="si ambos están en diferente folder" STYLE_REF="pendingTask" FOLDED="true" ID="ID_28848164" CREATED="1616167740443" MODIFIED="1623451201507">
<node TEXT="obliga a usuario a tomar alternativa:" ID="ID_67247162" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="alternativas permitidas:" FOLDED="true" ID="ID_687148431" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="es movimiento --&gt; se debe eliminar uno de los dos" FOLDED="true" ID="ID_746459008" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="debe indicar cual (si alguno) coincide en árbol con posición en drive" ID="ID_1261820549" CREATED="1616167740443" MODIFIED="1616167740443"/>
</node>
<node TEXT="son clones" FOLDED="true" ID="ID_936468078" CREATED="1616167740443" MODIFIED="1616167740443">
<node TEXT="clon con branch" ID="ID_1973126972" CREATED="1616167740443" MODIFIED="1616167740443"/>
<node TEXT="clon sin branch" ID="ID_1998623163" CREATED="1616167740444" MODIFIED="1616167740444"/>
</node>
<node TEXT="es copia" FOLDED="true" ID="ID_1198520823" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="copiar con igual nombre?" ID="ID_1027897157" CREATED="1616167740444" MODIFIED="1616167740444"/>
<node TEXT="copia con cambio en nombre" ID="ID_1212006123" CREATED="1616167740444" MODIFIED="1616167740444"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="d." STYLE_REF="Organizador" ID="ID_1159149861" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="1. breve" STYLE_REF="Organizador" ID="ID_678571369" CREATED="1616167740444" MODIFIED="1616167740444"/>
<node TEXT="2. mediano" STYLE_REF="Organizador" FOLDED="true" ID="ID_1700004273" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="prueba seleccionar donde debe ir nodo nuevo" STYLE_REF="pendingTask" FOLDED="true" ID="ID_256786237" CREATED="1616167740444" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_565866031" STARTINCLINATION="333.74999 pt;0 pt;" ENDINCLINATION="333.74999 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      def texto = new StringBuilder()
    </p>
    <p>
      
    </p>
    <p>
      baseFolderNode = MDI.obtainBaseFolder(node)
    </p>
    <p>
      
    </p>
    <p>
      def moveTos = c.selecteds
    </p>
    <p>
      
    </p>
    <p>
      def respuesta = selectMoveTo(moveTos)
    </p>
    <p>
      
    </p>
    <p>
      ui.informationMessage('nodo seleccionado: ' + respuesta.toString())
    </p>
    <p>
      
    </p>
    <p>
      def selectMoveTo(nodos){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i=0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = 'Select where to move the new node \n\n' + nodos.collect{++i + '. ' + arm(it)}.join('\n')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def b
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;do{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b = ui.showInputDialog(baseFolderNode.delegate, texto, '1')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;} while (b &amp;&amp; (!b.isNumber() || b.toInteger()&lt;=0 ||b.toInteger()&gt;i))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return b?b.toInteger()-1:0
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def arm(nodo){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodos = nodo.pathToRoot - baseFolderNode.pathToRoot
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodos.plainText.join(' / ')
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="no sé si aplica o es necesario." ID="ID_1269140089" CREATED="1616167740444" MODIFIED="1616167740444"/>
<node TEXT="creo que es un intento parecido a node magnet" ID="ID_1671631936" CREATED="1616167740444" MODIFIED="1616167740444"/>
<node TEXT="ver si una adaptación de nodemagnet podría ser útil acá" ID="ID_1812627835" CREATED="1616167740444" MODIFIED="1616167740444"/>
</node>
</node>
<node TEXT="3. largo" STYLE_REF="Organizador" ID="ID_740817939" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="crear funcionalidad especial que sólo actualice los nodos que están en el árbol (o sólo ese branch) y no traiga los archivos que falten en él" STYLE_REF="pendingTask" ID="ID_1738150058" CREATED="1616167740444" MODIFIED="1673446065483">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#990000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_893492309" STARTINCLINATION="55.5 pt;3 pt;" ENDINCLINATION="45.75 pt;0 pt;" STARTARROW="DEFAULT" ENDARROW="NONE"/>
</node>
<node TEXT="si anterior funciona, se puede colocar un listener para cambios en los nodos files" STYLE_REF="pendingTask" ID="ID_893492309" CREATED="1616167740444" MODIFIED="1623451202246">
<node TEXT="listener en nodos (lado freeplane)" ID="ID_1459742431" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="revisar este script" STYLE_REF="locked" ID="ID_30690468" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="BookmarksMonitorIcons.groovy" STYLE_REF="missing" ID="ID_713890203" CREATED="1616167739565" MODIFIED="1673969986986" LINK="file:/C:/PortableApps/FreeplanePortable/Data/Freeplane/1.8.x/scripts/init/BookmarksMonitorIcons.groovy">
<attribute NAME="lastModifiedTime" VALUE="19-12-20 23:02" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-19T23:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="19-12-20 23:02" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-19T23:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="19-12-20 23:02" OBJECT="org.freeplane.features.format.FormattedDate|2020-12-19T23:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="119" OBJECT="org.freeplane.features.format.FormattedNumber|119|#,##0"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import org.freeplane.features.map.INodeChangeListener
    </p>
    <p>
      import org.freeplane.features.map.NodeChangeEvent
    </p>
    <p>
      import org.freeplane.features.map.IMapChangeListener
    </p>
    <p>
      import org.freeplane.features.map.NodeModel
    </p>
    <p>
      import org.freeplane.features.mode.Controller
    </p>
    <p>
      import org.freeplane.features.icon.factory.IconStoreFactory
    </p>
    <p>
      import org.freeplane.features.icon.IconStore
    </p>
    <p>
      import org.freeplane.features.icon.MindIcon
    </p>
    <p>
      import org.freeplane.plugin.script.proxy.Convertible
    </p>
    <p>
      import org.freeplane.plugin.script.proxy.ScriptUtils
    </p>
    <p>
      import java.lang.StringBuilder
    </p>
    <p>
      import java.util.Enumeration
    </p>
    <p>
      import java.util.Map
    </p>
    <p>
      import groovy.json.JsonSlurper
    </p>
    <p>
      
    </p>
    <p>
      class ChangeListener implements INodeChangeListener, IMapChangeListener
    </p>
    <p>
      {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String namedIcon = &quot;bookmarks/Bookmark 2&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String anonymousIcon = &quot;bookmarks/Bookmark 1&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String storageKey = &quot;BookmarksKeys&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String globalKey = &quot;Bookmarks&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String monitorKey = &quot;monitorMap&quot;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void nodeChanged(NodeChangeEvent event)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// When an icon is added or removed form a node, we must take
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// care about the bookmarks icons :
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// - A bookmark icon must be unique in a node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// - A bookmark icon is the first icon of a node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// - A named-bookmark icon can be set only for a node which is
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;&nbsp;&nbsp;referenced to be a named-bookmarked node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// - It is forbidden to remove named-bookmark icon for a node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;&nbsp;&nbsp;which is referenced to be a named-bookmarked node
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Object property = event.property
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NodeModel node = event.node
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// An icon has been added or deleted
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (NodeModel.NODE_ICON.equals(property)){
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// An icon has been deleted
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( event.oldValue ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String oldIcon = event.oldValue.name
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( oldIcon == namedIcon &amp;&amp; isMonitingActive() ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Prevent named bookmark icon to be removed from named bookmarked nodes,
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// and be sure it is at the first position
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( isNodeHasNamedBookmark( node ) ) putUniqueIconAsFirstIcon( node, namedIcon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// An icon has been added
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( event.newValue ){
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String newIcon = event.newValue.name
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( newIcon == namedIcon &amp;&amp; isMonitingActive() ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// If this is a named bookmark icon
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Be sure a named bookmark icon is at the first position ...
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( isNodeHasNamedBookmark( node ) ) putUniqueIconAsFirstIcon( node, namedIcon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// ... and that a named bookmark icon is added only to named bookmarked nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else removeIcon( node, namedIcon )
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else if( newIcon == anonymousIcon &amp;&amp; isMonitingActive() ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// If this is a regular bookmark icon
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( isNodeHasNamedBookmark( node ) ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Prevent regular bookmark icon to be placed on named bookmarked nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;removeIcon( node, anonymousIcon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Be sure the named bookmark icon is present at the first position
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;putUniqueIconAsFirstIcon( node, namedIcon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Be sure the bookmark icon is present at the first position, and unique
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;putUniqueIconAsFirstIcon( node, anonymousIcon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void onNodeInserted( NodeModel parent, NodeModel child, int newIndex )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// When a node is inserted, we must take care about its named-bookmark
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// icon, because it can be a copy of another node named-bookmarked.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// But only one node can be named-bookmarked with a single keyboard key,
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// so we must remove the named-bookmark icon from the copy.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( ! isMonitingActive() ) return
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IconStore iconStore = IconStoreFactory.ICON_STORE
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon icon = iconStore.getMindIcon( namedIcon )
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def map = ScriptUtils.node().map
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringBuilder named = new StringBuilder()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def stored = map.storage.getAt( storageKey )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( stored ) named = new StringBuilder( stored.getString() )
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;purgeBranchFromBadNamedIcons( child, icon, named )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Return true if a node is referenced as a name-bookmarked node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private boolean isNodeHasNamedBookmark( NodeModel node )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def map = ScriptUtils.node().map
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String mapStorage = &quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def stored = map.storage.getAt( storageKey )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( stored ) mapStorage = stored.getString();
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return mapStorage.contains( '&quot;' + node.getID() + '&quot;' )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Add an icon at the first position for this node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Ensure this icon is unique
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private void putUniqueIconAsFirstIcon( NodeModel node, String iconName )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def icons = node.icons
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = icons.size() - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while( i &gt; 0 ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon icon = icons.get( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( icon.name == iconName ) node.removeIcon( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i--
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( icons.size() &gt; 0 &amp;&amp; icons.get( 0 ).name == iconName ) return
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IconStore iconStore = IconStoreFactory.ICON_STORE
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon iconToAdd = iconStore.getMindIcon( iconName )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.addIcon( iconToAdd, 0 )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Add an icon at the first position for this node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Ensure this icon is unique
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private void putUniqueIconAsFirstIcon( NodeModel node, MindIcon icon )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def icons = node.icons
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = icons.size() - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while( i &gt; 0 ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon ic = icons.get( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( ic.name == icon.name ) node.removeIcon( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i--
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( icons.size() &gt; 0 &amp;&amp; icons.get( 0 ).name == icon.name ) return
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.addIcon( icon, 0 )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Remove an icon from the node
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private void removeIcon( NodeModel node, String iconName )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def icons = node.icons
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = icons.size() - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while( i &gt;= 0 ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon icon = icons.get( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( icon.name == iconName ) node.removeIcon( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i--
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Remove an icon from the node, and fire a change event
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private void removeIcon( NodeModel node, MindIcon icon, boolean fireEvent )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def icons = node.icons
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;boolean changed = false
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = icons.size() - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while( i &gt;= 0 ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MindIcon ic = icons.get( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( ic.name == icon.name ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.removeIcon( i )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;changed = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i--
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( changed &amp;&amp; fireEvent ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NodeChangeEvent event = new NodeChangeEvent(
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node, NodeModel.NODE_ICON, icon, null, true, true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;node.fireNodeChanged( event )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Remove the named bookmark icon for all the nodes in this branch
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// which are not referenced as bookmarked nodes
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private void purgeBranchFromBadNamedIcons( NodeModel node, MindIcon icon, StringBuilder named )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;boolean isNamed = named.indexOf( '&quot;' + node.getID() + '&quot;' ) &gt;= 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( ! isNamed ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Remove the icon and fire the event (to refresh the view)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;removeIcon( node, icon, true )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enumeration&lt;NodeModel&gt; children = node.children()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while( children.hasMoreElements() ){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;purgeBranchFromBadNamedIcons( children.nextElement(), icon, named )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;private Boolean isMonitingActive()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Read the datas from the map storage
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def map = ScriptUtils.node().map
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def stored = map.storage.getAt( globalKey )
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// If no datas here return true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( stored == null ) return true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Else convert them to an HashMap
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def vars = new JsonSlurper().parseText( stored.getText() ) as Map
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Return monitoring value
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return vars[ monitorKey] == true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //
    </p>
    <p>
      // add INodeChangeListener
    </p>
    <p>
      //
    </p>
    <p>
      def mapController = Controller.currentModeController.mapController
    </p>
    <p>
      mapController.nodeChangeListeners.findAll {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.getClass().name == ChangeListener.class.name
    </p>
    <p>
      }.each {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mapController.removeNodeChangeListener(it)
    </p>
    <p>
      }
    </p>
    <p>
      mapController.mapChangeListeners.findAll {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.getClass().name == ChangeListener.class.name
    </p>
    <p>
      }.each {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mapController.removeMapChangeListener(it)
    </p>
    <p>
      }
    </p>
    <p>
      mapController.addNodeChangeListener( new ChangeListener() )
    </p>
    <p>
      mapController.addMapChangeListener( new ChangeListener() )
    </p>
  </body>
</html></richcontent>
<node TEXT="prueba" ID="ID_199825947" CREATED="1616167739569" MODIFIED="1616167739569">
<icon BUILTIN="ksmiletris"/>
<icon BUILTIN="emoji-1F98D"/>
<icon BUILTIN="wizard"/>
</node>
<node TEXT="preuba2" ID="ID_441452601" CREATED="1616167739569" MODIFIED="1616167739569">
<font BOLD="false"/>
</node>
</node>
</node>
</node>
<node TEXT="listener en directorios y files (lado Drive)" FOLDED="true" ID="ID_244086947" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="https://www.baeldung.com/java-nio2-watchservice" ID="ID_510882689" CREATED="1616167740444" MODIFIED="1616167740444" LINK="https://www.baeldung.com/java-nio2-watchservice"/>
<node TEXT="https://docs.oracle.com/javase/tutorial/essential/io/notification.html" ID="ID_410847179" CREATED="1616167740444" MODIFIED="1616167740444" LINK="https://docs.oracle.com/javase/tutorial/essential/io/notification.html"/>
<node TEXT="https://dzone.com/articles/listening-to-fileevents-with-java-nio" ID="ID_354137306" CREATED="1616167740444" MODIFIED="1616167740444" LINK="https://dzone.com/articles/listening-to-fileevents-with-java-nio"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="pruebas" STYLE_REF="Organizador" FOLDED="true" ID="ID_875561550" CREATED="1616167740444" MODIFIED="1616167740444">
<node TEXT="prueba N(Id).groovy" ID="ID_1423280569" CREATED="1616167740444" MODIFIED="1616167740444"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      import org.freeplane.plugin.script.proxy.ScriptUtils
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//def nodo = N('ID_1423280569') //funciona en scripts pero no en librerías
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      // para el caso de librerías
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//seleccionar nodo por su ID
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodo = ScriptUtils.node().map.node('ID_1423280569') //sí funcionó
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def cc = ScriptUtils.c()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;cc.statusInfo = 'text of selected node is ' + nodo.text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba crea sólo nodos folders.groovy" STYLE_REF="completedTask" ID="ID_1618271642" CREATED="1616167740444" MODIFIED="1623451295584"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //.groovy
    </p>
    <p>
      
    </p>
    <p>
      import groovy.io.FileType
    </p>
    <p>
      import groovy.io.FileVisitResult
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def texto = new StringBuilder()
    </p>
    <p>
      
    </p>
    <p>
      // -------------------------- trayendo datos de un folder ------------------------------------
    </p>
    <p>
      texto.append('file.path').append('\n\n')
    </p>
    <p>
      def myDir = new File(&quot;C:/Temp/testFolder/test/&quot;)
    </p>
    <p>
      myDir.eachFileMatch(~/.*\.pdf/) { file -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;texto.append(file.path).append('\n')
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //-------------------------- con nodo seleccionado -------------------------------------------
    </p>
    <p>
      
    </p>
    <p>
      def esLinkaFile = (node.link.uri.scheme == 'file' &amp;&amp; !isLinkToMapNode(node.link) )
    </p>
    <p>
      texto.append('\n\n\n').append('link.uri.scheme :&nbsp;&nbsp;' + link.uri.scheme).append('\n\n--raw\n')
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      // obteniendo path
    </p>
    <p>
      if(esLinkaFile) texto.append('link.file.path :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + link.file.path).append('\n')
    </p>
    <p>
      // texto.append('link.text :\t\t\t\t' + link.text).append('\n')
    </p>
    <p>
      texto.append('link.text : \t\t\t\t' + link.text).append('\n')
    </p>
    <p>
      texto.append('link.uri.path:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + node.link.uri.path).append('\n\n')
    </p>
    <p>
      
    </p>
    <p>
      if(esLinkaFile) texto.append('link.file.directory&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;' + link.file.directory).append('\n')
    </p>
    <p>
      if(esLinkaFile) texto.append('link.file.isFile()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;' + link.file.isFile()).append('\n')
    </p>
    <p>
      
    </p>
    <p>
      texto.append('existe en el disco :&nbsp;&nbsp;&nbsp;' + existeEnDisco(node.link) as String).append('\n')
    </p>
    <p>
      texto.append('es link a nodo en otro mapa :&nbsp;&nbsp;&nbsp;' + isLinkToMapNode(node.link) as String).append('\n')
    </p>
    <p>
      texto.append('es link a nodo en otro mapa (2):&nbsp;&nbsp;&nbsp;' + isLinkToMapNode2(node.link) as String).append('\n')
    </p>
    <p>
      
    </p>
    <p>
      texto.append('\n\n--backslash\n')
    </p>
    <p>
      // dejando path con backslash
    </p>
    <p>
      if(esLinkaFile) texto.append('link.file.path :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + link.file.path).append('\n')
    </p>
    <p>
      // texto.append('link.text :\t\t\t\t' + link.text).append('\n')
    </p>
    <p>
      texto.append('link.text : \t\t\t\t' + link.text.replaceAll(&quot;%20&quot;,&quot; &quot;).drop(6).replaceAll(&quot;/&quot;,&quot;\\\\&quot;).toString()).append('\n')
    </p>
    <p>
      texto.append('link.uri.path:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + node.link.uri.path?.drop(1)?.replaceAll(&quot;/&quot;,&quot;\\\\&quot;)).append('\n')
    </p>
    <p>
      // texto.append('link.uri.schemeSpecificPart:&nbsp;&nbsp;\t' + node.link.uri.schemeSpecificPart.drop(1).replaceAll(&quot;/&quot;,&quot;\\\\&quot;)).append('\n')
    </p>
    <p>
      
    </p>
    <p>
      texto.append('\n\n--normal slash\n')
    </p>
    <p>
      //dejando path con slash
    </p>
    <p>
      if(esLinkaFile) texto.append('link.file.path :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + link.file.path.replaceAll(&quot;\\\\&quot;,&quot;/&quot;)).append('\n')
    </p>
    <p>
      texto.append('link.text : \t\t\t\t' + link.text.replaceAll(&quot;%20&quot;,&quot; &quot;).drop(6)).append('\n')
    </p>
    <p>
      texto.append('link.uri.path:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\t\t\t' + node.link.uri.path?.drop(1)).append('\n')
    </p>
    <p>
      // texto.append('link.uri.schemeSpecificPart:&nbsp;&nbsp;\t' + node.link.uri.schemeSpecificPart.drop(1)).append('\n')
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      node.createChild(&quot;resultado de script&quot;).noteText = texto
    </p>
    <p>
      // ui.informationMessage(i.toString())
    </p>
    <p>
      texto.setLength(0)
    </p>
    <p>
      
    </p>
    <p>
      //----------------------------------metodos y funciones -----------------------------------------
    </p>
    <p>
      
    </p>
    <p>
      def existeEnDisco( mylink){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mylink.uri.scheme == 'file' &amp;&amp; mylink.file?.exists())
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def isLinkToMapNode(mylink){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mylink.uri.scheme == 'file' &amp;&amp; mylink.uri.path?.reverse().take(3).reverse().toLowerCase() == '.mm' &amp;&amp; mylink.uri.fragment?.take(3) =='ID_')
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def isLinkToMapNode2(mylink){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mylink.uri.scheme == 'file' &amp;&amp; !mylink.file)
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba deleteNodesWithLinkToOther.groovy" ID="ID_905032081" CREATED="1616167740444" MODIFIED="1616167740444"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      deleteNodesWithLinkToOther(node)
    </p>
    <p>
      
    </p>
    <p>
      def deleteNodesWithLinkToOther(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.find{it.link?.text?[0] == '#'}*.delete()
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba checkBrokenNodes.groovy" STYLE_REF="completedTask" ID="ID_529117377" CREATED="1616167740445" MODIFIED="1623451295669"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      baseFolderNode = MDI.obtainBaseFolder(node)
    </p>
    <p>
      baseFolderNode.find{MDI.isBroken(it)}.findAll{it.link.file.exists()}.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;MDI.markAsBroken(n, false)
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba interactuar con otro mapa (cerrado).groovy" FOLDED="true" ID="ID_1299357722" CREATED="1616167740445" MODIFIED="1629736794641"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //node.find{it.link?.text?.endsWith()==&quot;.mm&quot;}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def nodosMapas = node.find{it.link &amp;&amp; it.link.text.endsWith(&quot;.mm&quot;) &amp;&amp; it.link.file.exists()}
    </p>
    <p>
      ui.informationMessage(nodosMapas.toString())
    </p>
    <p>
      
    </p>
    <p>
      def mapa
    </p>
    <p>
      def nodosOrganizador
    </p>
    <p>
      def i = 0
    </p>
    <p>
      do {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;mapa = c.mapLoader(nodosMapas[i++].link.file).load()
    </p>
    <p>
      //ui.informationMessage(mapa.toString())
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodosOrganizador = mapa.root.find{it.hasStyle(&quot;Organizador&quot;)}
    </p>
    <p>
      } while (nodosOrganizador.size()&lt;=0 &amp;&amp; i&lt;10)
    </p>
    <p>
      &nbsp;&nbsp;
    </p>
    <p>
      if (nodosOrganizador.size()&gt;0){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoSource = nodosOrganizador[0]
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def uriPath= mapa.file.toURI().toString()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//path.fragment = idNodo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(uriPath.toString())
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoDest = node.createChild(nodoSource.text)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.link.text = uriPath +'#' + nodoSource.id
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.style.name = nodoSource.style.name&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.details = nodoSource.details
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.note = nodoSource.note//?:null
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node TEXT="sin vista.groovy" ID="ID_1771383369" CREATED="1616167740445" MODIFIED="1629737165086"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //node.find{it.link?.text?.endsWith()==&quot;.mm&quot;}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def nodosMapas = node.find{it.link &amp;&amp; it.link.text.endsWith(&quot;.mm&quot;) &amp;&amp; it.link.file.exists()}
    </p>
    <p>
      ui.informationMessage(nodosMapas.toString())
    </p>
    <p>
      
    </p>
    <p>
      def mapa
    </p>
    <p>
      def nodosOrganizador
    </p>
    <p>
      // def i = 0
    </p>
    <p>
      // do {
    </p>
    <p>
      //&nbsp;&nbsp;&nbsp;&nbsp;mapa = c.mapLoader(nodosMapas[0].link.file).withView().load()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;mapa = c.mapLoader(nodosMapas[0].link.file).load()
    </p>
    <p>
      //ui.informationMessage(mapa.toString())
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodosOrganizador = mapa.root.find{it.hasStyle(&quot;Organizador&quot;)}
    </p>
    <p>
      // } while (nodosOrganizador.size()&lt;=0 &amp;&amp; i&lt;10)
    </p>
    <p>
      &nbsp;&nbsp;
    </p>
    <p>
      // if (nodosOrganizador.size()&gt;0){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoSource = nodosOrganizador[0]
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def uriPath= mapa.file.toURI().toString()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//path.fragment = idNodo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(uriPath.toString())
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoDest = node.createChild(nodoSource.text)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.link.text = uriPath +'#' + nodoSource.id
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.style.name = nodoSource.style.name&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.details = nodoSource.details
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.note = nodoSource.note//?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoSource.createChild('esto es una prueba')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      //&nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(mapa.save(false).toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//mapa.close(true,false)
    </p>
    <p>
      // }
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="con vista .groovy" ID="ID_795297146" CREATED="1616167740445" MODIFIED="1629736794573"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //node.find{it.link?.text?.endsWith()==&quot;.mm&quot;}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def nodosMapas = node.find{it.link &amp;&amp; it.link.text.endsWith(&quot;.mm&quot;) &amp;&amp; it.link.file.exists()}
    </p>
    <p>
      ui.informationMessage(nodosMapas.toString())
    </p>
    <p>
      
    </p>
    <p>
      def mapa
    </p>
    <p>
      def nodosOrganizador
    </p>
    <p>
      // def i = 0
    </p>
    <p>
      // do {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;mapa = c.mapLoader(nodosMapas[0].link.file).withView().load()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// mapa = c.mapLoader(nodosMapas[0].link.file).load()
    </p>
    <p>
      //ui.informationMessage(mapa.toString())
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodosOrganizador = mapa.root.find{it.hasStyle(&quot;Organizador&quot;)}
    </p>
    <p>
      // } while (nodosOrganizador.size()&lt;=0 &amp;&amp; i&lt;10)
    </p>
    <p>
      &nbsp;&nbsp;
    </p>
    <p>
      // if (nodosOrganizador.size()&gt;0){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoSource = nodosOrganizador[0]
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def uriPath= mapa.file.toURI().toString()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//path.fragment = idNodo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(uriPath.toString())
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodoDest = node.createChild(nodoSource.text)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.link.text = uriPath +'#' + nodoSource.id
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.style.name = nodoSource.style.name&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.details = nodoSource.details
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoDest.note = nodoSource.note//?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodoSource.createChild('esto es una prueba')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage(mapa.save(false).toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;mapa.close(true,false)
    </p>
    <p>
      // }
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Instructions" STYLE_REF="Organizador" ID="ID_1718733381" CREATED="1616167740445" MODIFIED="1616167740445" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_Map-Drive-Inator/Map-Drive-Inator.mm#ID_1687633798"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Windows
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      I've tested only in windows. I do`'t know if it runs in other OS.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="prueba link uri.groovy" ID="ID_177229964" CREATED="1616167740445" MODIFIED="1616167740445"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //node.find{it.link?.text?.endsWith()==&quot;.mm&quot;}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def u = node.link.uri
    </p>
    <p>
      
    </p>
    <p>
      nodo = node.createChild('jojojo')
    </p>
    <p>
      nodo.link.uri = new URI(u.scheme,u.schemeSpecificPart,u.fragment)
    </p>
    <p>
      
    </p>
    <p>
      def texto = new StringBuilder()
    </p>
    <p>
      
    </p>
    <p>
      texto &lt;&lt; u.path
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;&lt;'\n' &lt;&lt;u.scheme
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;&lt;'\n' &lt;&lt;u.fragment
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;&lt;'\n' &lt;&lt;u.getSchemeSpecificPart()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&lt;&lt;'\n' &lt;&lt;u.schemeSpecificPart
    </p>
    <p>
      
    </p>
    <p>
      nodo.note = texto
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="reordenar hijos en grupos" STYLE_REF="locked" FOLDED="true" ID="ID_869443988" CREATED="1616167740445" MODIFIED="1616167740445">
<node TEXT="603912_groovy_512x512.png" STYLE_REF="missing" ID="ID_800388257" CREATED="1616167740445" MODIFIED="1673969986986" LINK="file:/C:/Users/Edo/Downloads/603912_groovy_512x512.png">
<attribute NAME="lastModifiedTime" VALUE="28-10-19 11:06" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-28T11:06-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="28-10-19 11:06" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-28T11:06-0300|datetime"/>
<attribute NAME="creationTime" VALUE="28-10-19 11:05" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-28T11:05-0300|datetime"/>
<attribute NAME="script1" VALUE="getNodeGroup(node)&#xd;&#xa;&#xd;&#xa;def getNodeGroup(n){&#xd;&#xa;    def texto = n.text&#xd;&#xa;    def i = texto.lastIndexOf(&apos;.&apos;)+1&#xd;&#xa;    return texto.substring(i)&#xd;&#xa;}"/>
<attribute NAME="fileSize" VALUE="8.847" OBJECT="org.freeplane.features.format.FormattedNumber|8847|#,##0"/>
</node>
<node TEXT="agrupar según criterio (condition).groovy" ID="ID_779906449" CREATED="1616167740446" MODIFIED="1673444042495">
<attribute NAME="script1" VALUE="&#xd;&#xa;//println &quot;------------------------ grouping nodes ------------------------------&quot;&#xd;&#xa;&#xd;&#xa;nodo = node&#xd;&#xa;if (nodo[&apos;group by&apos;] &amp;&amp; nodo[&apos;group by&apos;] != &apos;&apos;){&#xd;&#xa;    def groupingCase = nodo[&apos;group by&apos;]&#xd;&#xa;    def nodos =  nodo.children&#xd;&#xa;    def grupos = addGrupos(nodos,[], groupingCase).sort() //creates list of strings with groupTexts. Starts with an empty list&#xd;&#xa;    def groupNodes = createGroupNodes(nodo, grupos, firstWord(groupingCase)) //creates a node for each groupText and adds it to this list&#xd;&#xa;    //moves each node to its corresponding groupNode&#xd;&#xa;    groupNodes.each{gn -&gt;&#xd;&#xa;        def cond = gn.text&#xd;&#xa;        def matchingNodes = nodos.findAll{groupText(it,groupingCase)==cond}&#xd;&#xa;        matchingNodes.each{mn -&gt;&#xd;&#xa;            mn.moveTo(gn)&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;} else {&#xd;&#xa;    nodo[&apos;group by&apos;] = &apos;&apos;&#xd;&#xa;    ui.informationMessage (&quot;please select grouping option in node&apos;s attribute &apos;group by&apos;&quot;)&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;//----------Methods-----------------------&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;//creates list of strings with groupTexts&#xd;&#xa;    //listaNodos: node list to evaluate&#xd;&#xa;    //listaGrupos: list of strings where the new groupTexts must be added&#xd;&#xa;def addGrupos(listaNodos, listaGrupos,gCase){&#xd;&#xa;    listaNodos.each{n -&gt;&#xd;&#xa;        def grupo = groupText(n,gCase)&#xd;&#xa;        if(grupo &amp;&amp; grupo !in listaGrupos){&#xd;&#xa;            listaGrupos += grupo&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;    return listaGrupos&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;//gets group text from a node depending on the defined extracting condition&#xd;&#xa;// in this case the nodes in my map have filenames as their nodetexts and the grouping factor I want to use is the file extension, so, to get the groupText it extracts the substring after the last dot&#xd;&#xa;// for other grouping conditions this method must be changed&#xd;&#xa;def groupText(n,gcond = &apos;Ext&apos;){&#xd;&#xa;    def response&#xd;&#xa;    switch (gcond.toLowerCase()){&#xd;&#xa;        case &apos;ext&apos;:&#xd;&#xa;            def i=n.text.lastIndexOf(&apos;.&apos;)&#xd;&#xa;            response = i&gt;=1?n.text.substring(i+1):null&#xd;&#xa;            break&#xd;&#xa;        case &apos;creation yearmonth&apos;:&#xd;&#xa;            response = n[&apos;creationTime&apos;]?.getDate()?.toYearMonth()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        case &apos;creation year&apos;:&#xd;&#xa;            response = n[&apos;creationTime&apos;]?.getDate()?.toYear()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        case &apos;lastaccess yearmonth&apos;:&#xd;&#xa;            response = n[&apos;lastAccessTime&apos;]?.getDate()?.toYearMonth()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        case &apos;lastaccess year&apos;:&#xd;&#xa;            response = n[&apos;lastAccessTime&apos;]?.getDate()?.toYear()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        case &apos;lastmodified yearmonth&apos;:&#xd;&#xa;            response = n[&apos;lastModifiedTime&apos;]?.getDate()?.toYearMonth()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        case &apos;lastmodified year&apos;:&#xd;&#xa;            response = n[&apos;lastModifiedTime&apos;]?.getDate()?.toYear()?.toString()?:null&#xd;&#xa;            break&#xd;&#xa;        default:&#xd;&#xa;            response = null&#xd;&#xa;            break&#xd;&#xa;    }&#xd;&#xa;    return response?:&quot;.noGroup&quot;&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;//returns a list of new nodes added as children to node &quot;n&quot;. For each string in &quot;groups&quot; it creates a new node.&#xd;&#xa;def createGroupNodes(n,groups, detailsTxt){&#xd;&#xa;    def nods =[]&#xd;&#xa;    groups.each{g -&gt;&#xd;&#xa;        def gn = n.createChild(g)&#xd;&#xa;        gn.details = detailsTxt&#xd;&#xa;        gn[&apos;group&apos;] = true&#xd;&#xa;        nods &lt;&lt; gn&#xd;&#xa;    }&#xd;&#xa;    return nods&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def firstWord(s){&#xd;&#xa;    def i=s.indexOf(&apos; &apos;)&#xd;&#xa;    return i&gt;=0?s.substring(0,i):s&#xd;&#xa;}"/>
<attribute NAME="group by" VALUE="lastAccess Year"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //println &quot;------------------------ grouping nodes ------------------------------&quot;
    </p>
    <p>
      
    </p>
    <p>
      nodo = node
    </p>
    <p>
      if (nodo['group by'] &amp;&amp; nodo['group by'] != ''){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def groupingCase = nodo['group by']
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nodos =&nbsp;&nbsp;nodo.children
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def grupos = addGrupos(nodos,[], groupingCase).sort() //creates list of strings with groupTexts. Starts with an empty list
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def groupNodes = createGroupNodes(nodo, grupos, firstWord(groupingCase)) //creates a node for each groupText and adds it to this list
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//moves each node to its corresponding groupNode
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groupNodes.each{gn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def cond = gn.text
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def matchingNodes = nodos.findAll{groupText(it,groupingCase)==cond}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;matchingNodes.each{mn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mn.moveTo(gn)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodo['group by'] = ''
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ui.informationMessage (&quot;please select grouping option in node's attribute 'group by'&quot;)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //----------Methods-----------------------
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //creates list of strings with groupTexts
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaNodos: node list to evaluate
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaGrupos: list of strings where the new groupTexts must be added
    </p>
    <p>
      def addGrupos(listaNodos, listaGrupos,gCase){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;listaNodos.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def grupo = groupText(n,gCase)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(grupo &amp;&amp; grupo !in listaGrupos){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;listaGrupos += grupo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return listaGrupos
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //gets group text from a node depending on the defined extracting condition
    </p>
    <p>
      // in this case the nodes in my map have filenames as their nodetexts and the grouping factor I want to use is the file extension, so, to get the groupText it extracts the substring after the last dot
    </p>
    <p>
      // for other grouping conditions this method must be changed
    </p>
    <p>
      def groupText(n,gcond = 'Ext'){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def response
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (gcond.toLowerCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'ext':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def i=n.text.lastIndexOf('.')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = i&gt;=1?n.text.substring(i+1):null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'creation yearmonth':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['creationTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'creation year':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['creationTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'lastaccess yearmonth':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastAccessTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'lastaccess year':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastAccessTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'lastmodified yearmonth':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastModifiedTime']?.getDate()?.toYearMonth()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'lastmodified year':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = n['lastModifiedTime']?.getDate()?.toYear()?.toString()?:null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return response?:&quot;.noGroup&quot;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //returns a list of new nodes added as children to node &quot;n&quot;. For each string in &quot;groups&quot; it creates a new node.
    </p>
    <p>
      def createGroupNodes(n,groups, detailsTxt){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nods =[]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groups.each{g -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def gn = n.createChild(g)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gn.details = detailsTxt
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gn['group'] = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nods &lt;&lt; gn
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return nods
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def firstWord(s){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i=s.indexOf(' ')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return i&gt;=0?s.substring(0,i):s
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node TEXT=".noGroup" FOLDED="true" ID="ID_1882662409" CREATED="1616167740446" MODIFIED="1616167740446"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="raton" ID="ID_1616366583" CREATED="1616167740447" MODIFIED="1616167740447"/>
<node TEXT="last lines from log.0 file" ID="ID_1788431533" CREATED="1616167740447" MODIFIED="1616167740447"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      STDOUT: Sep 11, 2020 5:19:22 PM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: error executing script C:\PortableApps\FreeplanePortable\Data\Freeplane\1.8.x\scripts\myTempFile.groovy - giving up
    </p>
    <p>
      
    </p>
    <p>
      groovy.lang.MissingPropertyException: No such property: lowercase for class: java.lang.String
    </p>
    <p>
      
    </p>
    <p>
      STDOUT: Sep 11, 2020 5:19:22 PM org.freeplane.core.util.LogUtils warn
    </p>
    <p>
      
    </p>
    <p>
      WARNING: Error executing the script:
    </p>
    <p>
      
    </p>
    <p>
      No such property: lowercase for class: java.lang.String at line -1
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      11-09-2020&nbsp;&nbsp;5:19:22 PM
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="2019" OBJECT="java.lang.Integer|2019" ID="ID_1776710884" CREATED="1616167740447" MODIFIED="1616167740447"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Las Últimas Noticias.pdf" STYLE_REF="missing" ID="ID_1299490057" CREATED="1616167740447" MODIFIED="1673969986987" LINK="file:/C:/Users/Edo/Downloads/Las%20Últimas%20Noticias.pdf">
<attribute NAME="lastModifiedTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="fileSize" VALUE="458.958" OBJECT="org.freeplane.features.format.FormattedNumber|458958|#,##0"/>
</node>
<node TEXT="MAKE_DEVBOARDS_flattened.jpg" STYLE_REF="missing" ID="ID_1332855386" CREATED="1616167740447" MODIFIED="1673969986987" LINK="file:/C:/Users/Edo/Downloads/MAKE_DEVBOARDS_flattened.jpg">
<attribute NAME="lastModifiedTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="20-04-21 10:53" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-20T10:53-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="fileSize" VALUE="2.483.449" OBJECT="org.freeplane.features.format.FormattedNumber|2483449|#,##0"/>
</node>
<node TEXT="Mind Disrupted report.pdf" STYLE_REF="missing" ID="ID_305621483" CREATED="1616167740448" MODIFIED="1673969986988" LINK="file:/C:/Users/Edo/Downloads/Mind%20Disrupted%20report.pdf">
<attribute NAME="lastModifiedTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="creationTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.101.502" OBJECT="org.freeplane.features.format.FormattedNumber|2101502|#,##0"/>
</node>
<node TEXT="New_Manual_freeplane.pdf" STYLE_REF="missing" ID="ID_986674656" CREATED="1616167740448" MODIFIED="1673969986988" LINK="file:/C:/Users/Edo/Downloads/New_Manual_freeplane.pdf">
<attribute NAME="lastModifiedTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="creationTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.832.711" OBJECT="org.freeplane.features.format.FormattedNumber|4832711|#,##0"/>
</node>
<node TEXT="OneTab3.json" STYLE_REF="missing" ID="ID_904505434" CREATED="1616167740448" MODIFIED="1673969986989" LINK="file:/C:/Users/Edo/Downloads/OneTab3.json">
<attribute NAME="lastModifiedTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="creationTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="fileSize" VALUE="491.406" OBJECT="org.freeplane.features.format.FormattedNumber|491406|#,##0"/>
</node>
<node TEXT="OneTab_2019-10-16.json" STYLE_REF="missing" ID="ID_272857404" CREATED="1616167740449" MODIFIED="1673969986989" LINK="file:/C:/Users/Edo/Downloads/OneTab_2019-10-16.json">
<attribute NAME="lastModifiedTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="creationTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="fileSize" VALUE="507.794" OBJECT="org.freeplane.features.format.FormattedNumber|507794|#,##0"/>
</node>
</node>
<node TEXT="2020" OBJECT="java.lang.Integer|2020" ID="ID_1845277109" CREATED="1616167740449" MODIFIED="1616167740449"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="LBS - The Science &amp; Economics of a Pandemic - Complete Presentation.pdf" STYLE_REF="missing" ID="ID_1054437454" CREATED="1616167740449" MODIFIED="1673969986990" LINK="file:/C:/Users/Edo/Downloads/LBS%20-%20The%20Science%20&amp;%20Economics%20of%20a%20Pandemic%20-%20Complete%20Presentation.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.759.072" OBJECT="org.freeplane.features.format.FormattedNumber|5759072|#,##0"/>
</node>
<node TEXT="LeyCovid19.pdf" STYLE_REF="missing" ID="ID_760601110" CREATED="1616167740450" MODIFIED="1673969986990" LINK="file:/C:/Users/Edo/Downloads/LeyCovid19.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="fileSize" VALUE="3.543.567" OBJECT="org.freeplane.features.format.FormattedNumber|3543567|#,##0"/>
</node>
<node TEXT="Matemática trabajo Practico.pdf" STYLE_REF="missing" ID="ID_1403435725" CREATED="1616167740450" MODIFIED="1673969986991" LINK="file:/C:/Users/Edo/Downloads/Matemática%20trabajo%20Practico.pdf">
<attribute NAME="lastModifiedTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="creationTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="fileSize" VALUE="240.715" OBJECT="org.freeplane.features.format.FormattedNumber|240715|#,##0"/>
</node>
<node TEXT="MicMute_0.1.8.4_Beta_Setup.exe" STYLE_REF="missing" ID="ID_1936973665" CREATED="1616167740451" MODIFIED="1673969986991" LINK="file:/C:/Users/Edo/Downloads/MicMute_0.1.8.4_Beta_Setup.exe">
<attribute NAME="lastModifiedTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:41" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:41-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="fileSize" VALUE="561.677" OBJECT="org.freeplane.features.format.FormattedNumber|561677|#,##0"/>
</node>
<node TEXT="Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf" STYLE_REF="missing" ID="ID_818087950" CREATED="1616167740451" MODIFIED="1673969986992" LINK="file:/C:/Users/Edo/Downloads/Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf">
<attribute NAME="lastModifiedTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="creationTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.517.072" OBJECT="org.freeplane.features.format.FormattedNumber|1517072|#,##0"/>
</node>
<node TEXT="Minuta N° 19_2020  SGAR.pdf.pdf" STYLE_REF="missing" ID="ID_481428822" CREATED="1616167740452" MODIFIED="1673969986992" LINK="file:/C:/Users/Edo/Downloads/Minuta%20N°%2019_2020%20%20SGAR.pdf.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="fileSize" VALUE="273.544" OBJECT="org.freeplane.features.format.FormattedNumber|273544|#,##0"/>
</node>
<node TEXT="Modelo Edo .xlsx" STYLE_REF="missing" ID="ID_908283496" CREATED="1616167740452" MODIFIED="1673969986993" LINK="file:/C:/Users/Edo/Downloads/Modelo%20Edo%20.xlsx">
<attribute NAME="lastModifiedTime" VALUE="28-03-20 09:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-28T09:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="15-08-21 13:44" OBJECT="org.freeplane.features.format.FormattedDate|2021-08-15T13:44-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="27-03-20 16:22" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-27T16:22-0300|datetime"/>
<attribute NAME="fileSize" VALUE="17.556" OBJECT="org.freeplane.features.format.FormattedNumber|17556|#,##0"/>
</node>
<node TEXT="Nube 2020.pdf" STYLE_REF="missing" ID="ID_455567143" CREATED="1616167740453" MODIFIED="1673969986994" LINK="file:/C:/Users/Edo/Downloads/Nube%202020.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="fileSize" VALUE="184.007" OBJECT="org.freeplane.features.format.FormattedNumber|184007|#,##0"/>
</node>
<node TEXT="OPSCEL.pdf" STYLE_REF="missing" ID="ID_1327694573" CREATED="1616167740453" MODIFIED="1673969986994" LINK="file:/C:/Users/Edo/Downloads/OPSCEL.pdf">
<attribute NAME="lastModifiedTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="creationTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="fileSize" VALUE="173.052" OBJECT="org.freeplane.features.format.FormattedNumber|173052|#,##0"/>
</node>
</node>
</node>
<node TEXT="quitar agrupaciones.groovy" ID="ID_668461181" CREATED="1616167740454" MODIFIED="1616167740454">
<attribute NAME="group by" VALUE="Ext"/>
<attribute NAME="script2" VALUE="nodo = node&#xd;&#xa;&#xd;&#xa;def groupNodes =  nodo.children.findAll{n -&gt; n[&apos;group&apos;]}&#xd;&#xa;&#xd;&#xa;groupNodes.each{gN -&gt;&#xd;&#xa;    gN.children.each{n -&gt;&#xd;&#xa;        n.moveTo(nodo)&#xd;&#xa;    }&#xd;&#xa;    gN.delete()&#xd;&#xa;}&#xd;&#xa;"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      nodo = node
    </p>
    <p>
      
    </p>
    <p>
      def groupNodes =&nbsp;&nbsp;nodo.children.findAll{n -&gt; n['group']}
    </p>
    <p>
      
    </p>
    <p>
      groupNodes.each{gN -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gN.children.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.moveTo(nodo)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gN.delete()
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node TEXT=".noGroup" ID="ID_1012456006" CREATED="1616167740454" MODIFIED="1616167740454"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="nodo no grupo" FOLDED="true" ID="ID_562700676" CREATED="1616167740454" MODIFIED="1616167740454">
<node TEXT="nn" ID="ID_1979430859" CREATED="1616167740454" MODIFIED="1616167740454"/>
<node TEXT="mm" ID="ID_1867938400" CREATED="1616167740454" MODIFIED="1616167740454"/>
<node TEXT="bb" ID="ID_339556141" CREATED="1616167740454" MODIFIED="1616167740454"/>
</node>
<node TEXT="raton" ID="ID_574935301" CREATED="1616167740454" MODIFIED="1616167740454"/>
</node>
<node TEXT="2019-01" ID="ID_1116115068" CREATED="1616167740454" MODIFIED="1616167740454"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Las Últimas Noticias.pdf" STYLE_REF="missing" ID="ID_600861098" CREATED="1616167740454" MODIFIED="1673969986995" LINK="file:/C:/Users/Edo/Downloads/Las%20Últimas%20Noticias.pdf">
<attribute NAME="lastModifiedTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="fileSize" VALUE="458.958" OBJECT="org.freeplane.features.format.FormattedNumber|458958|#,##0"/>
</node>
<node TEXT="New_Manual_freeplane.pdf" STYLE_REF="missing" ID="ID_1226774919" CREATED="1616167740454" MODIFIED="1673969986995" LINK="file:/C:/Users/Edo/Downloads/New_Manual_freeplane.pdf">
<attribute NAME="lastModifiedTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="creationTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.832.711" OBJECT="org.freeplane.features.format.FormattedNumber|4832711|#,##0"/>
</node>
</node>
<node TEXT="2019-04" ID="ID_1701682784" CREATED="1616167740455" MODIFIED="1616167740455"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="MAKE_DEVBOARDS_flattened.jpg" STYLE_REF="missing" ID="ID_731859208" CREATED="1616167740455" MODIFIED="1673969986996" LINK="file:/C:/Users/Edo/Downloads/MAKE_DEVBOARDS_flattened.jpg">
<attribute NAME="lastModifiedTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="20-04-21 10:53" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-20T10:53-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="fileSize" VALUE="2.483.449" OBJECT="org.freeplane.features.format.FormattedNumber|2483449|#,##0"/>
</node>
</node>
<node TEXT="2019-06" ID="ID_1796555789" CREATED="1616167740455" MODIFIED="1616167740455"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Mind Disrupted report.pdf" STYLE_REF="missing" ID="ID_321466902" CREATED="1616167740455" MODIFIED="1673969986996" LINK="file:/C:/Users/Edo/Downloads/Mind%20Disrupted%20report.pdf">
<attribute NAME="lastModifiedTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="creationTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.101.502" OBJECT="org.freeplane.features.format.FormattedNumber|2101502|#,##0"/>
</node>
</node>
<node TEXT="2019-09" ID="ID_1645899890" CREATED="1616167740455" MODIFIED="1616167740455"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="OneTab3.json" STYLE_REF="missing" ID="ID_1512265035" CREATED="1616167740455" MODIFIED="1673969986997" LINK="file:/C:/Users/Edo/Downloads/OneTab3.json">
<attribute NAME="lastModifiedTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="creationTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="fileSize" VALUE="491.406" OBJECT="org.freeplane.features.format.FormattedNumber|491406|#,##0"/>
</node>
</node>
<node TEXT="2019-10" ID="ID_1177726030" CREATED="1616167740456" MODIFIED="1616167740456"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="OneTab_2019-10-16.json" STYLE_REF="missing" ID="ID_342536239" CREATED="1616167740456" MODIFIED="1673969986998" LINK="file:/C:/Users/Edo/Downloads/OneTab_2019-10-16.json">
<attribute NAME="lastModifiedTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="creationTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="fileSize" VALUE="507.794" OBJECT="org.freeplane.features.format.FormattedNumber|507794|#,##0"/>
</node>
</node>
<node TEXT="2020-03" ID="ID_1373993735" CREATED="1616167740456" MODIFIED="1616167740456"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Matemática trabajo Practico.pdf" STYLE_REF="missing" ID="ID_1007165215" CREATED="1616167740456" MODIFIED="1673969986998" LINK="file:/C:/Users/Edo/Downloads/Matemática%20trabajo%20Practico.pdf">
<attribute NAME="lastModifiedTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="creationTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="fileSize" VALUE="240.715" OBJECT="org.freeplane.features.format.FormattedNumber|240715|#,##0"/>
</node>
<node TEXT="Nube 2020.pdf" STYLE_REF="missing" ID="ID_1955798557" CREATED="1616167740456" MODIFIED="1673969986999" LINK="file:/C:/Users/Edo/Downloads/Nube%202020.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="fileSize" VALUE="184.007" OBJECT="org.freeplane.features.format.FormattedNumber|184007|#,##0"/>
</node>
<node TEXT="OPSCEL.pdf" STYLE_REF="missing" ID="ID_1421459123" CREATED="1616167740457" MODIFIED="1673969986999" LINK="file:/C:/Users/Edo/Downloads/OPSCEL.pdf">
<attribute NAME="lastModifiedTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="creationTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="fileSize" VALUE="173.052" OBJECT="org.freeplane.features.format.FormattedNumber|173052|#,##0"/>
</node>
<node TEXT="Modelo Edo .xlsx" STYLE_REF="missing" ID="ID_641112347" CREATED="1616167740457" MODIFIED="1673969987000" LINK="file:/C:/Users/Edo/Downloads/Modelo%20Edo%20.xlsx">
<attribute NAME="lastModifiedTime" VALUE="28-03-20 09:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-28T09:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="15-08-21 13:44" OBJECT="org.freeplane.features.format.FormattedDate|2021-08-15T13:44-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="27-03-20 16:22" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-27T16:22-0300|datetime"/>
<attribute NAME="fileSize" VALUE="17.556" OBJECT="org.freeplane.features.format.FormattedNumber|17556|#,##0"/>
</node>
</node>
<node TEXT="2020-04" ID="ID_757748789" CREATED="1616167740457" MODIFIED="1616167740457"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="LBS - The Science &amp; Economics of a Pandemic - Complete Presentation.pdf" STYLE_REF="missing" ID="ID_1791612294" CREATED="1616167740457" MODIFIED="1673969987000" LINK="file:/C:/Users/Edo/Downloads/LBS%20-%20The%20Science%20&amp;%20Economics%20of%20a%20Pandemic%20-%20Complete%20Presentation.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.759.072" OBJECT="org.freeplane.features.format.FormattedNumber|5759072|#,##0"/>
</node>
<node TEXT="LeyCovid19.pdf" STYLE_REF="missing" ID="ID_720288103" CREATED="1616167740458" MODIFIED="1673969987001" LINK="file:/C:/Users/Edo/Downloads/LeyCovid19.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="fileSize" VALUE="3.543.567" OBJECT="org.freeplane.features.format.FormattedNumber|3543567|#,##0"/>
</node>
<node TEXT="Minuta N° 19_2020  SGAR.pdf.pdf" STYLE_REF="missing" ID="ID_1849718885" CREATED="1616167740458" MODIFIED="1673969987001" LINK="file:/C:/Users/Edo/Downloads/Minuta%20N°%2019_2020%20%20SGAR.pdf.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="fileSize" VALUE="273.544" OBJECT="org.freeplane.features.format.FormattedNumber|273544|#,##0"/>
</node>
</node>
<node TEXT="2020-06" ID="ID_1317448414" CREATED="1616167740458" MODIFIED="1616167740458"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf" STYLE_REF="missing" ID="ID_923040444" CREATED="1616167740458" MODIFIED="1673969987002" LINK="file:/C:/Users/Edo/Downloads/Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf">
<attribute NAME="lastModifiedTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="creationTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.517.072" OBJECT="org.freeplane.features.format.FormattedNumber|1517072|#,##0"/>
</node>
</node>
<node TEXT="2020-07" ID="ID_1865246053" CREATED="1616167740459" MODIFIED="1616167740459"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastAccess
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="MicMute_0.1.8.4_Beta_Setup.exe" STYLE_REF="missing" ID="ID_1965622989" CREATED="1616167740459" MODIFIED="1673969987002" LINK="file:/C:/Users/Edo/Downloads/MicMute_0.1.8.4_Beta_Setup.exe">
<attribute NAME="lastModifiedTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:41" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:41-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="fileSize" VALUE="561.677" OBJECT="org.freeplane.features.format.FormattedNumber|561677|#,##0"/>
</node>
</node>
</node>
<node TEXT="time.groovy" FOLDED="true" ID="ID_594953375" CREATED="1616167740459" MODIFIED="1616167740459"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      //println &quot;------------------------ grouping nodes ------------------------------&quot;
    </p>
    <p>
      
    </p>
    <p>
      nodo = node
    </p>
    <p>
      
    </p>
    <p>
      def nodos =&nbsp;&nbsp;nodo.children
    </p>
    <p>
      
    </p>
    <p>
      def grupos = addGrupos(nodos,[]).sort() //creates list of strings with groupTexts. Starts with an empty list
    </p>
    <p>
      
    </p>
    <p>
      def groupNodes = createGroupNodes(nodo, grupos) //creates a node for each groupText and adds it to this list
    </p>
    <p>
      
    </p>
    <p>
      //moves each node to its corresponding groupNode
    </p>
    <p>
      groupNodes.each{gn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def cond = gn.text
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def matchingNodes = nodos.findAll{groupText(it)==cond}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;matchingNodes.each{mn -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mn.moveTo(gn)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //----------Methods-----------------------
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //creates list of strings with groupTexts
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaNodos: node list to evaluate
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//listaGrupos: list of strings where the new groupTexts must be added
    </p>
    <p>
      def addGrupos(listaNodos, listaGrupos){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;listaNodos.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def grupo = groupText(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(grupo &amp;&amp; grupo !in listaGrupos){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;listaGrupos += grupo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return listaGrupos
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //gets group text from a node depending on the defined extracting condition
    </p>
    <p>
      // in this case the nodes in my map have filenames as their nodetexts and the grouping factor I want to use is the file extension, so, to get the groupText it extracts the substring after the last dot
    </p>
    <p>
      // for other grouping conditions this method must be changed
    </p>
    <p>
      def groupText(n,gcond = 'Ext'){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def response
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (gcond.toLowerCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'ext':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def i=n.text.lastIndexOf('.')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = i&gt;=1?n.text.substring(i+1):&quot;.noGroup&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'creation yymm':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = null
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return response
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //returns a list of new nodes added as children to node &quot;n&quot;. For each string in &quot;groups&quot; it creates a new node.
    </p>
    <p>
      def createGroupNodes(n,groups){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nods =[]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;groups.each{g -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nods &lt;&lt; n.createChild(g)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return nods
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node TEXT="MAKE_DEVBOARDS_flattened.jpg" STYLE_REF="missing" ID="ID_326743102" CREATED="1616167740459" MODIFIED="1673969987003" LINK="file:/C:/Users/Edo/Downloads/MAKE_DEVBOARDS_flattened.jpg">
<attribute NAME="lastModifiedTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="20-04-21 10:53" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-20T10:53-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="script1" VALUE="nodo = node&#xd;&#xa;&#xd;&#xa;def fecha = nodo[&apos;creationTime&apos;].getDate().toYearMonth().toString()&#xd;&#xa;//fecha.getClass()&#xd;&#xa;//def b = fecha.getDate()&#xd;&#xa;//b.getClass()&#xd;&#xa;//def c = fecha.toYearMonth()&#xd;&#xa;//c.getClass()&#xd;&#xa;//c.toString()&#xd;&#xa;//def fecha2 = new Date(fecha)&#xd;&#xa;//def fecha3 = fecha2.YearMonth()&#xd;&#xa;"/>
<attribute NAME="fileSize" VALUE="2.483.449" OBJECT="org.freeplane.features.format.FormattedNumber|2483449|#,##0"/>
</node>
</node>
<node TEXT="obtener groupingCase .groovy" ID="ID_1266839567" CREATED="1616167740460" MODIFIED="1616167740460">
<attribute NAME="script1" VALUE="gCases = &apos;Ext,creation YearMonth,creation Year,lastAccess YearMonth,lastAccess Year,lastModified YearMonth,lastModified Year&apos;.split(&apos;,&apos;)&#xd;&#xa;&#xd;&#xa;def texto = new StringBuilder()&#xd;&#xa;texto &lt;&lt; &quot;Grouping file Nodes: \n\n Select grouping criteria: \n&quot;&#xd;&#xa;gCases.eachWithIndex{gC, i -&gt;&#xd;&#xa;    texto &lt;&lt;  i &lt;&lt; &quot; - &quot; &lt;&lt; gC &lt;&lt; &apos;\n&apos;&#xd;&#xa;}&#xd;&#xa;texto &lt;&lt; &apos;\n\n&apos;&#xd;&#xa;&#xd;&#xa;def cancel = false&#xd;&#xa;def respOK = false&#xd;&#xa;def response&#xd;&#xa;while (!cancel &amp;&amp; !respOK){&#xd;&#xa;    response = ui.showInputDialog(node.delegate, texto.toString(),&apos;0&apos;)&#xd;&#xa;    cancel = !response?true:false&#xd;&#xa;    respOK = !cancel?response.isNumber() &amp;&amp; response.toDouble()&gt;=0 &amp;&amp; response.toDouble()&lt; gCases.size()?true:false:false&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;response?gCases[response.toDouble().toInteger()]:null&#xd;&#xa;&#xd;&#xa;"/>
</node>
<node TEXT="definir parametro agrupación" STYLE_REF="completedTask" ID="ID_743392305" CREATED="1616167740460" MODIFIED="1623451295759"/>
<node TEXT="obtener grupo de nodo" STYLE_REF="completedTask" ID="ID_848100773" CREATED="1616167740460" MODIFIED="1623451295862"/>
<node TEXT="listado de nodos" STYLE_REF="completedTask" ID="ID_786626915" CREATED="1616167740460" MODIFIED="1623451295959"/>
<node TEXT="armar listado de grupos desde lista de nodos" STYLE_REF="completedTask" ID="ID_407915349" CREATED="1616167740460" MODIFIED="1623451296047"/>
<node TEXT="crear nodos grupo" STYLE_REF="completedTask" ID="ID_687583462" CREATED="1616167740460" MODIFIED="1623451296145"/>
<node TEXT="mover nodos a grupos" STYLE_REF="completedTask" ID="ID_136921619" CREATED="1616167740460" MODIFIED="1623451296235"/>
<node TEXT="prueba extension" ID="ID_711574156" CREATED="1616167740460" MODIFIED="1616167740460">
<attribute NAME="group by" VALUE="Ext"/>
<attribute NAME="script1" VALUE="node.children.each{n -&gt;&#xd;&#xa;    println n.text&#xd;&#xa;    println &quot; -  &quot; + n.link.file?.name&#xd;&#xa;&#xd;&#xa;}&#xd;&#xa;"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      que tomara extensión sólo de nodos con link a file
    </p>
  </body>
</html></richcontent>
<node TEXT=".noGroup" FOLDED="true" ID="ID_1009174160" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT=".noGroup" FOLDED="true" ID="ID_811373997" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="hola como. estas tú?" STYLE_REF="completedTask" ID="ID_57637974" CREATED="1616167740460" MODIFIED="1623451296329"/>
<node TEXT="nodo no grupo" FOLDED="true" ID="ID_479199469" CREATED="1616167740460" MODIFIED="1616167740460">
<node TEXT="nn" ID="ID_1690623424" CREATED="1616167740460" MODIFIED="1616167740460"/>
<node TEXT="mm" ID="ID_656971581" CREATED="1616167740460" MODIFIED="1616167740460"/>
<node TEXT="bb" ID="ID_203563671" CREATED="1616167740460" MODIFIED="1616167740460"/>
</node>
<node TEXT="raton" ID="ID_829031297" CREATED="1616167740460" MODIFIED="1616167740460"/>
</node>
</node>
<node TEXT="exe" FOLDED="true" ID="ID_1830857264" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="2020-07" FOLDED="true" ID="ID_1686129990" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="MicMute_0.1.8.4_Beta_Setup.exe" STYLE_REF="missing" ID="ID_914559951" CREATED="1616167740460" MODIFIED="1673969987003" LINK="file:/C:/Users/Edo/Downloads/MicMute_0.1.8.4_Beta_Setup.exe">
<attribute NAME="lastModifiedTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-22 11:41" OBJECT="org.freeplane.features.format.FormattedDate|2022-01-17T11:41-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="06-07-20 21:29" OBJECT="org.freeplane.features.format.FormattedDate|2020-07-06T21:29-0400|datetime"/>
<attribute NAME="fileSize" VALUE="561.677" OBJECT="org.freeplane.features.format.FormattedNumber|561677|#,##0"/>
</node>
</node>
</node>
<node TEXT="jpg" FOLDED="true" ID="ID_134041959" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="2019-04" FOLDED="true" ID="ID_1799225226" CREATED="1616167740460" MODIFIED="1616167740460"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="MAKE_DEVBOARDS_flattened.jpg" STYLE_REF="missing" ID="ID_731467133" CREATED="1616167740460" MODIFIED="1673969987004" LINK="file:/C:/Users/Edo/Downloads/MAKE_DEVBOARDS_flattened.jpg">
<attribute NAME="lastModifiedTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="20-04-21 10:53" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-20T10:53-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="02-04-19 15:30" OBJECT="org.freeplane.features.format.FormattedDate|2019-04-02T15:30-0300|datetime"/>
<attribute NAME="fileSize" VALUE="2.483.449" OBJECT="org.freeplane.features.format.FormattedNumber|2483449|#,##0"/>
</node>
</node>
</node>
<node TEXT="json" ID="ID_1128499972" CREATED="1616167740461" MODIFIED="1616167740461"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="2019-09" ID="ID_169311221" CREATED="1616167740461" MODIFIED="1616167740461"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="OneTab3.json" STYLE_REF="missing" ID="ID_1835868017" CREATED="1616167740461" MODIFIED="1673969987005" LINK="file:/C:/Users/Edo/Downloads/OneTab3.json">
<attribute NAME="lastModifiedTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="creationTime" VALUE="25-09-19 11:47" OBJECT="org.freeplane.features.format.FormattedDate|2019-09-25T11:47-0300|datetime"/>
<attribute NAME="fileSize" VALUE="491.406" OBJECT="org.freeplane.features.format.FormattedNumber|491406|#,##0"/>
</node>
</node>
<node TEXT="2019-10" ID="ID_1904564037" CREATED="1616167740461" MODIFIED="1616167740461"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="OneTab_2019-10-16.json" STYLE_REF="missing" ID="ID_486031002" CREATED="1616167740461" MODIFIED="1673969987005" LINK="file:/C:/Users/Edo/Downloads/OneTab_2019-10-16.json">
<attribute NAME="lastModifiedTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="creationTime" VALUE="16-10-19 08:42" OBJECT="org.freeplane.features.format.FormattedDate|2019-10-16T08:42-0300|datetime"/>
<attribute NAME="fileSize" VALUE="507.794" OBJECT="org.freeplane.features.format.FormattedNumber|507794|#,##0"/>
</node>
</node>
</node>
<node TEXT="pdf" ID="ID_365680273" CREATED="1616167740461" MODIFIED="1616167740461"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="2019-01" ID="ID_725763302" CREATED="1616167740461" MODIFIED="1616167740461"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Las Últimas Noticias.pdf" STYLE_REF="missing" ID="ID_500514260" CREATED="1616167740461" MODIFIED="1673969987006" LINK="file:/C:/Users/Edo/Downloads/Las%20Últimas%20Noticias.pdf">
<attribute NAME="lastModifiedTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="17-01-19 22:20" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-17T22:20-0300|datetime"/>
<attribute NAME="fileSize" VALUE="458.958" OBJECT="org.freeplane.features.format.FormattedNumber|458958|#,##0"/>
</node>
<node TEXT="New_Manual_freeplane.pdf" STYLE_REF="missing" ID="ID_1669114879" CREATED="1616167740462" MODIFIED="1673969987006" LINK="file:/C:/Users/Edo/Downloads/New_Manual_freeplane.pdf">
<attribute NAME="lastModifiedTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="creationTime" VALUE="28-01-19 16:28" OBJECT="org.freeplane.features.format.FormattedDate|2019-01-28T16:28-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.832.711" OBJECT="org.freeplane.features.format.FormattedNumber|4832711|#,##0"/>
</node>
</node>
<node TEXT="2019-06" ID="ID_418452731" CREATED="1616167740462" MODIFIED="1616167740462"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Mind Disrupted report.pdf" STYLE_REF="missing" ID="ID_1229442720" CREATED="1616167740462" MODIFIED="1673969987007" LINK="file:/C:/Users/Edo/Downloads/Mind%20Disrupted%20report.pdf">
<attribute NAME="lastModifiedTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="creationTime" VALUE="24-06-19 20:43" OBJECT="org.freeplane.features.format.FormattedDate|2019-06-24T20:43-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.101.502" OBJECT="org.freeplane.features.format.FormattedNumber|2101502|#,##0"/>
</node>
</node>
<node TEXT="2020-03" ID="ID_1103858352" CREATED="1616167740462" MODIFIED="1616167740462"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Matemática trabajo Practico.pdf" STYLE_REF="missing" ID="ID_403784332" CREATED="1616167740463" MODIFIED="1673969987007" LINK="file:/C:/Users/Edo/Downloads/Matemática%20trabajo%20Practico.pdf">
<attribute NAME="lastModifiedTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="creationTime" VALUE="26-03-20 12:57" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-26T12:57-0300|datetime"/>
<attribute NAME="fileSize" VALUE="240.715" OBJECT="org.freeplane.features.format.FormattedNumber|240715|#,##0"/>
</node>
<node TEXT="Nube 2020.pdf" STYLE_REF="missing" ID="ID_1739156897" CREATED="1616167740463" MODIFIED="1673969987008" LINK="file:/C:/Users/Edo/Downloads/Nube%202020.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-03-20 16:23" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-03T16:23-0300|datetime"/>
<attribute NAME="fileSize" VALUE="184.007" OBJECT="org.freeplane.features.format.FormattedNumber|184007|#,##0"/>
</node>
<node TEXT="OPSCEL.pdf" STYLE_REF="missing" ID="ID_754814705" CREATED="1616167740463" MODIFIED="1673969987009" LINK="file:/C:/Users/Edo/Downloads/OPSCEL.pdf">
<attribute NAME="lastModifiedTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="creationTime" VALUE="11-03-20 09:43" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-11T09:43-0300|datetime"/>
<attribute NAME="fileSize" VALUE="173.052" OBJECT="org.freeplane.features.format.FormattedNumber|173052|#,##0"/>
</node>
</node>
<node TEXT="2020-04" ID="ID_330195959" CREATED="1616167740463" MODIFIED="1616167740463"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="LBS - The Science &amp; Economics of a Pandemic - Complete Presentation.pdf" STYLE_REF="missing" ID="ID_366569592" CREATED="1616167740463" MODIFIED="1673969987009" LINK="file:/C:/Users/Edo/Downloads/LBS%20-%20The%20Science%20&amp;%20Economics%20of%20a%20Pandemic%20-%20Complete%20Presentation.pdf">
<attribute NAME="lastModifiedTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-04-20 12:13" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-03T12:13-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.759.072" OBJECT="org.freeplane.features.format.FormattedNumber|5759072|#,##0"/>
</node>
<node TEXT="LeyCovid19.pdf" STYLE_REF="missing" ID="ID_1293558537" CREATED="1616167740464" MODIFIED="1673969987010" LINK="file:/C:/Users/Edo/Downloads/LeyCovid19.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:18-0300|datetime"/>
<attribute NAME="fileSize" VALUE="3.543.567" OBJECT="org.freeplane.features.format.FormattedNumber|3543567|#,##0"/>
</node>
<node TEXT="Minuta N° 19_2020  SGAR.pdf.pdf" STYLE_REF="missing" ID="ID_546458466" CREATED="1616167740464" MODIFIED="1673969987010" LINK="file:/C:/Users/Edo/Downloads/Minuta%20N°%2019_2020%20%20SGAR.pdf.pdf">
<attribute NAME="lastModifiedTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="creationTime" VALUE="02-04-20 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2020-04-02T19:16-0300|datetime"/>
<attribute NAME="fileSize" VALUE="273.544" OBJECT="org.freeplane.features.format.FormattedNumber|273544|#,##0"/>
</node>
</node>
<node TEXT="2020-06" ID="ID_165015736" CREATED="1616167740464" MODIFIED="1616167740464"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf" STYLE_REF="missing" ID="ID_1919649072" CREATED="1616167740464" MODIFIED="1673969987011" LINK="file:/C:/Users/Edo/Downloads/Microsoft_SQL_Server_2017_and_Azure_SQL_Database_permissions_infographic.pdf">
<attribute NAME="lastModifiedTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="creationTime" VALUE="19-06-20 17:32" OBJECT="org.freeplane.features.format.FormattedDate|2020-06-19T17:32-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.517.072" OBJECT="org.freeplane.features.format.FormattedNumber|1517072|#,##0"/>
</node>
</node>
</node>
<node TEXT="xlsx" ID="ID_1456140676" CREATED="1616167740465" MODIFIED="1616167740465"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ext
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="2020-03" ID="ID_1061006491" CREATED="1616167740465" MODIFIED="1616167740465"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      lastModified
    </p>
  </body>
</html></richcontent>
<attribute NAME="group" VALUE="true"/>
<node TEXT="Modelo Edo .xlsx" STYLE_REF="missing" ID="ID_1087200325" CREATED="1616167740465" MODIFIED="1673969987011" LINK="file:/C:/Users/Edo/Downloads/Modelo%20Edo%20.xlsx">
<attribute NAME="lastModifiedTime" VALUE="28-03-20 09:53" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-28T09:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="15-08-21 13:44" OBJECT="org.freeplane.features.format.FormattedDate|2021-08-15T13:44-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="27-03-20 16:22" OBJECT="org.freeplane.features.format.FormattedDate|2020-03-27T16:22-0300|datetime"/>
<attribute NAME="fileSize" VALUE="17.556" OBJECT="org.freeplane.features.format.FormattedNumber|17556|#,##0"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=MDI.class" ID="ID_1171020170" CREATED="1673978302765" MODIFIED="1673979884152"/>
</node>
</node>
</map>
