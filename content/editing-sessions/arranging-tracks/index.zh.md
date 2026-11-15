---
title: 排列轨道
description: 如何在 Ardour 的时间线上组织片段
date: 2025-02-25T00:41:04+03:00
weight: 2
cascade:
  type: docs
---

在接下来的章节中，我们将使用 Ardour 和几个鼓组采样来创建一段简短的节奏段落。

我们将在后续的教程（如 _使用片段_ 和 _创建循环片段_）中继续处理这段内容。我们假设你已经阅读了 _入门_ 部分的章节，并熟悉 _导入音频_、_轨道_ 和 _时间线_。

## 导入采样

第一步是添加一些声音，这在 _导入音频_ 章节中有详细讨论。这里，我们使用 _添加现有媒体_ 对话框（**Ctrl + I**）将一些鼓组采样作为片段导入。本教程中使用的采样来自 [freesound.org](http://www.freesound.org/) 网站的采样包（[Nord Drum Mini Kit](https://freesound.org/people/menegass/packs/10430/) 采样包）。

{{< figure alt="FS1" src="zh/ardour9-freesound-1.png" >}}

从下载的采样包中导入几个声音（底鼓、军鼓、踩镲、拍手）后，我们的会话看起来像这样（在这种情况下，我们使用了 _将文件添加为新轨道_ 选项，并插入到 _会话开始处_）。鼓组采样在 _编辑器_ 窗口中作为新的独立轨道出现，每个轨道都带有所用音频文件的名称。如果文件名太长或含义模糊，为了清晰起见，你可能需要重命名轨道。

{{< figure alt="FS2" src="en/ardour7-freesound-2.png" >}}

## 整理轨道

让我们重命名轨道，以便快速查看每种乐器的位置。为此，双击轨道名称进行编辑。

{{< figure alt="FS3" src="en/ardour7-freesound-3.png" >}}

你可能还希望重新排列编辑器窗口中轨道从上到下的顺序。点击 _编辑器_ 窗口最右侧的 _轨道与总线_ 标签页，然后按照你想要的顺序拖放轨道。

{{< figure alt="FS4" src="en/ardour7-freesound-4.png" >}}

另一种重新排列轨道的方法是选中一个轨道，使用 **Ctrl+方向键 上/下** 快捷键将其上移或下移。

{{< callout type="info" >}}
你还可以使用此标签页中的 V 复选框，在主画布中显示或隐藏轨道。
{{< /callout >}}

这里我们对鼓组进行了排序，使底鼓在底部，军鼓和踩镲在中间，拍手在顶部。

{{< figure alt="FS6" src="en/ardour7-freesound-5.png" >}}

## 继续

在下一步中，我们将学习如何设置拍号，以将这些采样组织成一段节奏。

下一步：[设置拍号](../setting-up-time-signature)