+++
title = "编辑器窗口"
description = "Ardour 编辑器窗口的基础知识"
chapter = false
weight = 1
+++

当您创建一个新会话时，Ardour 会打开一个名为*编辑器* (Editor) 的空窗口。*编辑器*窗口是 Ardour 中最重要的窗口，因为您可以在这里排列轨道、在时间轴上导入和编辑媒体，以及控制用于创意效果和混音的插件自动化。

让我们来看看*编辑器*窗口的主要部分：

{{< figure src="en/ardour7-editor-window-sections.png" alt="Editor window sections" >}}

它们分别是：

1. 编辑器工具栏
2. 时间轴
3. 轨道和总线
4. 项目概览
5. 显示编辑器混音器
6. 轨道与总线、源文件、区域、片段等

让我们快速概览一下它们。

## 编辑器工具栏

### 编辑模式与光标模式

![Edit Modes](en/ardour7-edit-modes-cursor-modes.png?width=30vw)

*编辑模式* (Edit Modes) 和*光标模式* (Cursor Modes) 控件定义了主编辑区的行为以及光标可以执行的不同功能。下拉菜单中有三种编辑模式：*滑行*、*波纹* 和*锁定*。我们将在[编辑会话](../../../editing-sessions/)章节中讨论它们。

**智能 (Smart)** 按钮的右侧是*抓取模式*：

- *智能* 模式（快捷键 **3**）
- *抓取* 模式（快捷键 **G**）
- *范围* 模式（快捷键 **R**）
- *切割* 模式（快捷键 **C**）
- *试听* 模式 (Audition)
- *拉伸* 模式（快捷键 **T**）
- *网格* 模式（快捷键 **Y**）
- *描绘* 模式（快捷键 **D**）
- *内部编辑* 模式（快捷键 **E**）

其中大部分内容在[处理区域](../../../editing-sessions/working-with-regions/)部分中讨论。最后两个在**使用自动化**章节中讨论。

*智能*模式实际上是*抓取*模式和*范围*模式的结合，启用后，鼠标在区域的上半部分表现为*范围*模式，在下半部分表现为*抓取*模式。

### 吸附选项

*吸附选项* (Snap Options) 工具栏允许选择可见的网格单位，这些单位会影响编辑区域时的吸附效果，对于 MIDI 区域，还会影响其内容的吸附效果。

![Snap](en/ardour7-snap-options-and-nudge-controls.png?width=25vw)

以下是 1 小节网格、1/8 音符网格和 1/32 音符网格之间的对比：

{{< figure alt="1-bar grid, 1/8 note and 1/32 note grid" src="en/ardour7-snapping-1-bar-to-1-32-note.png" >}}

请参阅[设置拍号](../../../editing-sessions/setting-up-time-signature/)、[使用范围](../../../editing-sessions/using-ranges/)和[处理区域](../../../editing-sessions/working-with-regions/)章节以获取更多详细信息。

### 轨道视图与缩放选项

工具栏最右侧部分是轨道视图和缩放选项。

![Zoom Options](en/ardour7-view-and-zoom-options.png?width=20vw)

轨道视图选项允许选择同时显示多少个轨道，您还可以缩小或展开选定轨道和总线的垂直缩放。

缩放选项允许逐步放大和缩小，以及缩小以水平显示整个项目。

> [!TIP]提示
> 使用快捷键 **=**（主键盘上的等号键）进行放大，使用 **-**（主键盘上的减号键）进行缩小。

下拉菜单控制*缩放焦点* 。它定义了缩放操作的中心点。尝试每次使用不同的缩放焦点进行放大和缩小。例如，选择*播放头* (Playhead) 将使缩放以*播放头*的位置为参照。*鼠标* 将以您当前的鼠标位置为参照，依此类推。

## 时间轴

右键单击标尺的名称，您将看到一个菜单，其中包含所有可供您使用的标尺。您可以取消勾选不需要的标尺以节省屏幕空间。有关这些操作的更多信息，请参阅[设置时间轴](../../setting-up-the-timeline/)和[设置拍号](../../../editing-sessions/setting-up-time-signature/)章节。

![Ardour Overview Rulers](en/ardour7-overview-rulers.png?width=40vw)

## 轨道与总线

标尺正下方是显示轨道和总线的地方。在下面的示例中，您可以看到一个名为 *Master*（主控）的总线和一个名为 *Voiceover*（旁白）的轨道。*旁白*还包含一个区域，该区域代表一个音频文件及其波形图。您可以在[创建轨道或总线](../../creating-tracks-and-busses/)章节中找到有关轨道和总线的更多信息。

![Ardour Track](en/Ardour6_Track.png?width=30vw)

## 项目概览

这是整个会话的预览图

{{< figure src="en/ardour7-overview-panel.png" alt="Project overview" >}}

这里有两大主要用途：

1. 在项目中导航。只需抓住矩形并将其四处拖动，即可在整个项目中平移。
2. 调整项目可见部分的缩放和位置。抓住可见矩形边框的左侧或右侧，向内或向外拖动以分别进行放大或缩小。

## 显示编辑器混音器

显示编辑器混音器台位于*编辑器*窗口的左侧。它显示当前选定轨道或总线的调音台条。它主要用于控制其对应轨道或总线的音量、插件和路由。

{{< figure src="en/Ardour6_Editor_Mixer.png" height="100px" >}}

您可以通过点击菜单 `视图>显示编辑器混音器`（快捷键 **Shift + E**）来切换显示或隐藏*编辑器混音器*。此调音台在[使用调音台条](../../../mixing-sessions/the-mixer-strip/)章节中介绍。

## 编辑器列表
> [!NOTE] Ardour9.8版本更新差异
> 在 Ardour 9.8 版本中，编辑器右侧的选项卡已经更新为 **9 种** 功能
> 在原有列表的基础上，新增了 **MIDI Tools**（MIDI工具）。请根据你实际使用的软件版本进行参考

Ardour *编辑器*窗口右侧的空间可以有 9 种不同的功能，具体取决于当前选择的选项卡：*音轨&总线*、*来源*、*区域*、*片段（Clips）*、*编排（Arragement）*、*快照*、*音轨&总线组*，*范围&标记*，以及*MIDI Tools*（MIDI工具）。

![Sources List](en/ardour7-sources-list.png?height=60vh)

- *轨道与总线* 提供项目中所有轨道和总线的概览，包括不可见的。此选项卡在[排列轨道](../../../editing-sessions/arranging-tracks/)章节中介绍。
- *来源* 列出导入到会话中的磁盘上的所有文件。
- *区域* 是会话中所有录制条目 (takes) 的列表。您可以通过将源文件和区域拖放到画布上来重用它们。您可以在[处理区域](../../../editing-sessions/working-with-regions/)章节中找到有关区域的更多信息。
- *片段（Clips）* 列出可重复使用的音频和 MIDI 片段，可以将它们拖放到时间轴上，或者拖放到 *Cue* 页面的片段网格中。
- *编排（Arragement）* 列出所有可用的用户定义的编排部分（如主歌、副歌、桥段等），并允许快速复制粘贴它们。
- *快照* 是在特定时间点保存的同一会话的版本，它们在[保存快照](../../../saving-sessions/saving-a-snapshot/)章节中讨论。
- *范围与标记* 是项目中所有标记的概览，带有易于使用的用户界面来进行编辑。
- *MIDI Tools（MIDI工具）* 提供用于和弦生成、音符量化及区域属性调整的辅助编辑面板。

**继续**

接下来是*调音台* 窗口，在这里您可以专注于处理歌曲中各乐器的声音，让它们更有辨识度。