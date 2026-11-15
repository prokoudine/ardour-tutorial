---
title: 拉伸与收缩片段
description: 在 Ardour 中拉伸和收缩片段
date: 2025-02-25T00:41:04+03:00
weight: 9
cascade:
  type: docs
---

使用 _拉伸/收缩片段_ 工具（**T** 快捷键，代表“Time-stretch”时间拉伸），可以在不改变音高的情况下延长或缩短片段的长度。

![Stretch/Shrink Regions tool](en/ardour7-stretch-shrink-edit-mode.png?width=20vw)

对片段长度进行小幅调整可能不会产生明显的_声音伪影_。然而，长度变化越极端，处理对声音的影响就越明显。

要使用 _拉伸/收缩片段_，请将光标放在片段上方，然后向左或向右单击并拖动。拖动时，你会看到一个高亮区域，它表示当你在当前位置松开鼠标时，片段将被收缩或拉伸到的新时长。Ardour 还会在高亮区域旁边以主时钟为单位显示片段的新时长。

{{< figure src="en/ardour7-stretch-shrink-highlight.png" alt="Stretching highlight" >}}

## 时间拉伸片段以适配循环

在下图中，我们又添加了一个声音样本——这次是一段[来自 freesound.org 的合成器旋律线](https://freesound.org/people/walkerbelm/sounds/1168/)，加入到我们在 _创建循环段落_ 章节中创作的节奏段落里。

导入这段合成器旋律线后，你会看到新片段的长度与我们已创建的现有节奏不匹配。它太长，无法成为一个完整小节；又太短，无法成为两个小节。更重要的是，虽然第一个音符与上方底鼓声音的开头对齐，但第二个音符明显偏离了节拍。

{{< figure src="en/ardour7-stretch-shrink-1.png" alt="Non-matching regions" >}}

我们可以使用 _延伸模式_ 工具来纠正这一点。选中你想要拉伸的片段，切换到该工具，点击片段的右侧，然后拖动光标，直到新创建的高亮区域匹配新的长度，也就是一直延伸到第二小节（同样可以借助 _网格_ 设置来辅助）。

{{< figure src="en/ardour7-stretch-shrink-action.png" alt="Stretching" >}}

当你松开鼠标按钮时，会出现 _时间拉伸音频_ 对话框。你可以尝试 _时间拉伸_ 操作的不同设置。每种设置都会以不同方式影响声音。尝试不同的拉伸设置，找出最令你满意的结果，是个不错的主意。

![Time Stretch Audio dialog](en/ardour7-stretch-shrink-2.png?width=30vw)

在 _时间拉伸音频_ 对话框中点击 **收缩/拉伸** 以开始操作。

操作完成后，合成器旋律线的片段现在将正好是两个小节长，并且应该能与我们用鼓组样本创建的节奏完美契合。

{{< figure src="en/ardour7-stretch-shrink-3.png" alt="Stretched audio region" >}}

## 继续

现在让我们来谈谈编辑 MIDI 片段。

下一步：[编辑 MIDI 片段](../editing-midi-regions/)