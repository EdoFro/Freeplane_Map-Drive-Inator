<map version="freeplane 1.11.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry>
    <attribute_name VISIBLE="true" NAME="addonsMenu"/>
    <attribute_name VISIBLE="true" NAME="author"/>
    <attribute_name VISIBLE="true" NAME="changelogUrl"/>
    <attribute_name VISIBLE="true" NAME="delete"/>
    <attribute_name VISIBLE="true" NAME="downloadUrl"/>
    <attribute_name VISIBLE="true" NAME="freeplaneVersionFrom"/>
    <attribute_name VISIBLE="true" NAME="freeplaneVersionTo"/>
    <attribute_name VISIBLE="true" NAME="menuLocation"/>
    <attribute_name VISIBLE="true" NAME="name"/>
    <attribute_name VISIBLE="true" NAME="updateUrl"/>
    <attribute_name VISIBLE="true" NAME="version"/>
</attribute_registry>
<node TEXT="MapDriveInator" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_696401721" LINK="https://github.com/EdoFro/Freeplane_Map-Drive-Inator">
<attribute_layout NAME_WIDTH="99.75 pt" VALUE_WIDTH="228.74999 pt"/>
<attribute NAME="name" VALUE="mapDriveInator"/>
<attribute NAME="version" VALUE="v0.0.9"/>
<attribute NAME="author" VALUE="EdoFro"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.9.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE="${homepage}/releases/latest/download/version.properties"/>
<attribute NAME="addonsMenu" VALUE="/menu_bar/edoTools"/>
<attribute NAME="downloadUrl" VALUE="${homepage}/releases/download/${version}/"/>
<attribute NAME="changelogUrl" VALUE="${homepage}/releases/latest/download/history.md"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        <b>name</b>: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        <b>author</b>: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        <b>version</b>: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        <b>freeplane-version-from</b>: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        <b>freeplane-version-to</b>: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        <b>updateUrl</b>: URL of the file containing information (version, download url) on the latest version of this add-on.<br/>By default: &quot;${homepage}/version.properties&quot;<br/>Examples:

        <ul>
          <li>
            <b>For GitHub releases</b>: &quot;${homepage}/releases/latest/download/version.properties&quot;
          </li>
          <li>
            <b>For Github in a folder named like the add-on&nbsp;(in the main repository branch)</b>: &quot;${homepage}/raw/main/${name}/version.properties
          </li>
          <li>
            <b>For Github in a folder named like the add-on&nbsp;(in a repository branch named as the add-on version)</b>: &quot;${homepage}/raw/${version}/${name}/version.properties&quot;
          </li>
        </ul>
      </li>
      <li>
        <b>addonsMenu</b>: Defines the addon's main menu location, defaults menu 'main_menu_scripting'.<br/>Use developer tool menuItemInfo to inspect menu location keys.<br/>This attribute is mandatory.<br/>Example: '/menu_bar/myAddons'
      </li>
      <li>
        <b>downloadUrl</b>: URL from the place where the AddOn file will be available for downloading.<br/>By default is the same as the homepage.<br/>You can define a different place or a subfolder of the homepage.<br/>Examples:

        <ul>
          <li>
            <b>homepage subfolder 'files'</b>: &quot;${homepage}/files/&quot;
          </li>
          <li>
            <b>For GitHub releases (release named as the add-on version)</b>: ${homepage}/releases/download/${version}/
          </li>
        </ul>
      </li>
      <li>
        <b>changelogUrl</b>: URL from the place where the history file will be available for downloading.<br/>By default is &quot;${homepage}/history.md&quot;<br/>You can define a different place or a subfolder of the homepage and a different file name and extension if wanted.<br/>Examples:

        <ul>
          <li>
            <b>txt file</b>: &quot;${homepage}/history.md&quot;
          </li>
          <li>
            <b>For GitHub releases as Markdown file</b>: &quot;${homepage}/releases/latest/download/history.md&quot;
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html>
</richcontent>
<hook NAME="MapStyle" background="#f9f9f8" zoom="0.9">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" mapUsesOwnSaveOptions="true" save_modification_times="false" save_last_visited_node="default" associatedTemplateLocation="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm" show_note_icons="true" save_folding="default" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 pt" SHAPE_VERTICAL_MARGIN="3 pt" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" MAX_WIDTH="15 cm">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;0 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="11" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt" UNIFORM_SHAPE="true" TEXT_ALIGN="CENTER">
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
<node TEXT="description" FOLDED="true" POSITION="top_or_left" ID="ID_256586764">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&nbsp;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="AddOn to coordinate the disk&apos;s folder structure with the nodes structure in the mind map (back and forth)" ID="ID_659221198"/>
</node>
<node TEXT="changes" POSITION="top_or_left" ID="ID_1078107435">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="v0.0.3" FOLDED="true" ID="ID_1486725916">
<node TEXT="old script version packed as an Add-on" ID="ID_1092003668"/>
</node>
<node TEXT="v0.0.4" FOLDED="true" ID="ID_1109048795">
<node TEXT="Added Template map" ID="ID_93006869"/>
<node TEXT="changed obtainBaseFolder logic" ID="ID_934053051"/>
<node TEXT="corrected similarity issue" ID="ID_1643559503"/>
<node TEXT="change folder_node recognition logic" ID="ID_345068445"/>
</node>
<node TEXT="v0.0.5" FOLDED="true" ID="ID_1412479122">
<node TEXT="corrected createFilesFromNotes" ID="ID_20091226"/>
<node TEXT="Added &apos;Import MDI styles&apos;&#xa;(without library: only works for users that installed other add-ons that have the `edofro.pseudofreeplaneapi.UserStyles` library.)" ID="ID_1530367506"/>
<node TEXT="Added exception handling when the mindmap doesn&apos;t have MDI styles" ID="ID_1330881655"/>
</node>
<node TEXT="v0.0.6" FOLDED="true" ID="ID_463111565">
<node TEXT="MapDriveInator: nodes with style file_folder, loose this style after the folder is created in drive and they get the link to it" ID="ID_1694158485"/>
<node TEXT="Bug: [&quot;Allow nodes to have links&quot;](https://github.com/EdoFro/Freeplane_Map-Drive-Inator/issues/15) solved" ID="ID_1645231008"/>
</node>
<node TEXT="v0.0.7" FOLDED="true" ID="ID_555626120">
<node TEXT="Test version allowing the use of RELATIVE and ABSOLUTE links" ID="ID_48657215"/>
</node>
<node TEXT="v0.0.8" FOLDED="true" ID="ID_1608879225">
<node TEXT="&quot;normalization&quot; command for absolute/relative links" ID="ID_936451022"/>
<node TEXT="now default &quot;link type value&quot; is taken form freeplane configuration properties" ID="ID_126482642"/>
</node>
<node TEXT="v0.0.9" ID="ID_937830933">
<node TEXT="Now it recognizes when link of baseFolder node points to an unexisting file/folder" ID="ID_1117543068"/>
<node TEXT="some refactoring" ID="ID_1502606479"/>
<node TEXT="central statusInfo method for MDI" ID="ID_1295916751"/>
<node TEXT="&quot;create base folder node&quot; can now be used to update baseFolderNode parameters" ID="ID_909845566"/>
<node TEXT="changed baseFolderNode note to markdown format" ID="ID_243745728"/>
</node>
</node>
<node TEXT="license" FOLDED="true" POSITION="top_or_left" ID="ID_1028448710">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&nbsp;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="MIT License&#xa;&#xa;Copyright (c) 2021 Eduardo Frohlich.&#xa;&#xa;Permission is hereby granted, free of charge, to any person obtaining a copy&#xa;of this software and associated documentation files (the &quot;Software&quot;), to deal&#xa;in the Software without restriction, including without limitation the rights&#xa;to use, copy, modify, merge, publish, distribute, sublicense, and/or sell&#xa;copies of the Software, and to permit persons to whom the Software is&#xa;furnished to do so, subject to the following conditions:&#xa;&#xa;The above copyright notice and this permission notice shall be included in all&#xa;copies or substantial portions of the Software.&#xa;&#xa;THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR&#xa;IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,&#xa;FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE&#xa;AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER&#xa;LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,&#xa;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE&#xa;SOFTWARE." ID="ID_1379820487" VSHIFT_QUANTITY="-0.75 pt"/>
</node>
<node TEXT="preferences.xml" POSITION="top_or_left" ID="ID_720156944">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">&nbsp;</font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&nbsp;node. </font>
    </p>
    <p>
      
    </p>
    <p>
      <b>Automatic way (new since v0.9.30): </b>
    </p>
    <p>
      you can add the preferences parameters as attributes to this node and then, by checking AddOn it will:
    </p>
    <ul>
      <li>
        create the child node containing <font color="#000000" face="SansSerif, sans-serif">the add-on configuration as an extension to mindmapmodemenu.xml</font>
      </li>
      <li>
        add the properties to the <font color="#000000" face="SansSerif, sans-serif"><i>default.properties</i>&nbsp;node</font>
      </li>
      <li>
        add the properties to the <i>translations</i><font color="#000000" face="SansSerif, sans-serif">&nbsp;node</font>
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      <b>How? </b>
    </p>
    <ul>
      <li>
        Add an attribute for each preference.
      </li>
      <li>
        the attribute name should be the preference name.
      </li>
      <li>
        as attribute value you should specify if it is a <b>boolean</b>, <b>string</b>&nbsp;or <b>number</b>&nbsp;preference
      </li>
      <li>
        if it is a <b>number</b>&nbsp;preference. you should add the min and max value for it (separed by comma)
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      <b>Example: </b>
    </p>
    <p>
      
    </p>
    <p>
      Attributes:
    </p>
    <table border="0" style="width: 80%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 0; border-right-width: 0; border-bottom-width: 0; border-left-width: 0">
      <tr>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            isStudent
          </p>
        </td>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            boolean
          </p>
        </td>
      </tr>
      <tr>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            userName
          </p>
        </td>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            string
          </p>
        </td>
      </tr>
      <tr>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            birthMonth
          </p>
        </td>
        <td valign="top" style="width: 50%; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-width: 1; border-right-width: 1; border-bottom-width: 1; border-left-width: 1">
          <p style="margin-top: 1; margin-right: 1; margin-bottom: 1; margin-left: 1">
            number,1,12
          </p>
        </td>
      </tr>
    </table>
  </body>
</html>
</richcontent>
</node>
<node TEXT="default.properties" POSITION="top_or_left" ID="ID_536060528">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="80.25 pt" VALUE_WIDTH="122.25 pt"/>
</node>
<node TEXT="translations" POSITION="top_or_left" ID="ID_137723580">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
      <li>
        'OptionPanel.separator.${name}' for the add-on's name in the preferences panel
      </li>
      <li>
        'OptionPanel.&lt;property&gt;' for the label of the property in the preferences panel
      </li>
      <li>
        'OptionPanel.&lt;property&gt;.tooltip' for the tooltip message for the property in the preferences panel (whwn hovering on it with the mouse)
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_1122736476">
<attribute_layout NAME_WIDTH="196.49999 pt" VALUE_WIDTH="140.25 pt"/>
<attribute NAME="addons.${name}" VALUE="MapDriveInator"/>
<attribute NAME="addons.${name}.checkMissingFileNodes" VALUE="Check missing file nodes"/>
<attribute NAME="addons.${name}.ClearFileTimestampsInNodes" VALUE="Clear file timestamps in nodes"/>
<attribute NAME="addons.${name}.CreateBaseFolderNode" VALUE="Create/update base folder node"/>
<attribute NAME="addons.${name}.createFilesFromNotes" VALUE="Create files from notes"/>
<attribute NAME="addons.${name}.DistributeNewNodes" VALUE="Distribute new nodes"/>
<attribute NAME="addons.${name}.GetFileTimestamps" VALUE="Get file timestamps"/>
<attribute NAME="addons.${name}.groupChildnodesBy" VALUE="Group childnodes by"/>
<attribute NAME="addons.${name}.ImportJustFolders" VALUE="Import just folders"/>
<attribute NAME="addons.${name}.MapDriveInator" VALUE="Map drive inator"/>
<attribute NAME="addons.${name}.SortByTimestamp" VALUE="Sort by timestamp"/>
<attribute NAME="addons.${name}.ungroupChildnodes" VALUE="Ungroup childnodes"/>
<attribute NAME="addons.${name}.unmarkModifiedFiles" VALUE="Unmark modified files"/>
<attribute NAME="addons.${name}.unmarkMovedOrRenamedNodes" VALUE="Unmark moved or renamed nodes"/>
<attribute NAME="addons.${name}.unmarkNewNodes" VALUE="Unmark new nodes"/>
<attribute NAME="addons.${name}.importMDIStyles" VALUE="Import MDI styles"/>
<attribute NAME="addons.${name}.normalizeLinkTypes" VALUE="Normalize link types"/>
</node>
</node>
<node TEXT="deinstall" POSITION="top_or_left" ID="ID_982526317">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="40.5 pt" VALUE_WIDTH="287.24999 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/checkMissingFileNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ClearFileTimestampsInNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/CreateBaseFolderNode.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/createFilesFromNotes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/DistributeNewNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/GetFileTimestamps.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/groupChildnodesBy.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ImportJustFolders.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/MapDriveInator.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/SortByTimestamp.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ungroupChildnodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/unmarkModifiedFiles.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/unmarkMovedOrRenamedNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/unmarkNewNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/MapDriveInator.jar"/>
<attribute NAME="delete" VALUE="${installationbase}/templates/MapDriveInator/MDI styles template.mm"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/importMDIStyles.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/normalizeLinkTypes.groovy"/>
</node>
<node TEXT="scripts" FOLDED="true" POSITION="bottom_or_right" ID="ID_428424239">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-&nbsp;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&nbsp;variable is set to the selected node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&nbsp;that the script(s) require, each either false or true:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_asking
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &nbsp;&nbsp;Notes:
    </p>
    <p>
      &nbsp;&nbsp;- The set of permissions is fixed.
    </p>
    <p>
      &nbsp;&nbsp;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &nbsp;&nbsp;- Set the values either to true or to false
    </p>
    <p>
      &nbsp;&nbsp;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="checkMissingFileNodes.groovy" ID="ID_953928223">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="164.25 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.checkMissingFileNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="CreateBaseFolderNode.groovy" ID="ID_1264392067">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="164.25 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.CreateBaseFolderNode"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="createFilesFromNotes.groovy" ID="ID_460854426">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="159 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.createFilesFromNotes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="DistributeNewNodes.groovy" ID="ID_592356678">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="154.5 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.DistributeNewNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="ImportJustFolders.groovy" ID="ID_1614884004">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="144 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.ImportJustFolders"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="MapDriveInator.groovy" ID="ID_38815239">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="137.25 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.MapDriveInator"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="unmarkNewNodes.groovy" ID="ID_1872514193">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="187.49999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.unmarkNewNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/ClearFormats"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="unmarkMovedOrRenamedNodes.groovy" ID="ID_422554039">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="196.49999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.unmarkMovedOrRenamedNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/ClearFormats"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="unmarkModifiedFiles.groovy" ID="ID_850936584">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="187.49999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.unmarkModifiedFiles"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/ClearFormats"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="ClearFileTimestampsInNodes.groovy" ID="ID_1823916199">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="182.99999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.ClearFileTimestampsInNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/TimeStamps"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="GetFileTimestamps.groovy" ID="ID_1344221737">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="182.99999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.GetFileTimestamps"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/TimeStamps"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="SortByTimestamp.groovy" ID="ID_372104228">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="182.99999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.SortByTimestamp"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/TimeStamps"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="groupChildnodesBy.groovy" ID="ID_525599912">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="162 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.groupChildnodesBy"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/Group"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="ungroupChildnodes.groovy" ID="ID_1762451783">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="162 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.ungroupChildnodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}/Group"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="importMDIStyles.groovy" ID="ID_1490422211">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="137.25 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.importMDIStyles"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="normalizeLinkTypes.groovy" ID="ID_998611987">
<attribute_layout NAME_WIDTH="183.74999 pt" VALUE_WIDTH="151.5 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.normalizeLinkTypes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
</node>
<node TEXT="lib" POSITION="bottom_or_right" ID="ID_444808778">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="MapDriveInator.jar" ID="ID_1212321759"/>
</node>
<node TEXT="zips" POSITION="bottom_or_right" ID="ID_26433714">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="doc" ID="ID_1305821302"/>
<node TEXT="icons" ID="ID_615436065"/>
<node TEXT="templates" ID="ID_903379418"/>
</node>
<node TEXT="images" POSITION="bottom_or_right" ID="ID_1104880555">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&nbsp;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&nbsp;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="actions" POSITION="bottom_or_right" ID="ID_1052924007"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    Direct links to menu commands
  </body>
</html>
</richcontent>
<node TEXT="Build add-on" ID="ID_14185460" LINK="menuitem:_addons.devtools.checkAddOn_on_single_node"/>
<node TEXT="Package add-on for publication" ID="ID_1767675080" LINK="menuitem:_addons.devtools.releaseAddOn_on_single_node"/>
<node TEXT="Export Translations" ID="ID_1894374378" LINK="menuitem:_addons.devtools.exportTranslations_on_single_node"/>
<node TEXT="Import Translations" ID="ID_229312748" LINK="menuitem:_addons.devtools.importTranslations_on_single_node"/>
</node>
</node>
</map>
