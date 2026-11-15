---
title: 调音台窗口
description: Ardour 调音台窗口的基础知识
weight: 2
cascade:
  type: docs
---

_调音台(Mixer)_ 窗口的主要功能是并排显示各种轨道和总线的所有调音台通道条，以便于参考和微调。该窗口主要用于 _混音_ (mixing) 过程，在这个过程中，您可以将乐器分布在虚拟空间中，并对其施加效果器处理，使它们在混音中凸显出来。它还提供了对插件和路由功能的访问。详情请参阅[理解路由](../../../recording/understanding-routing/)、[混音](../../../mixing-sessions/mixing-levels/)和[使用插件](../../../mixing-sessions/using-plugins/)等章节。

虚拟调音台的用户界面与实体硬件调音台非常相似，每个通道都配有增益控制和信号电平表。

{{< figure src="en/mixer-window-sections.png" alt="Mixer Window" >}}

_调音台_ 窗口包含 3 个较大的区域：

1. 左侧边栏：包含常用插件列表、调音台通道条的可见性控制，轨道/总线分组管理器。
2. 轨道与总线的通道条：包括最终信号通常会经过的主总线 (master bus)
3. 可选的 _监听部分_ (Monitor Section)：包含推子前/后监听 (Pre/After Fade Listen)、独占独奏 (Exclusive Solo) 等功能。

**继续**

在下一节中，我们将快速了解 _录音机_ 窗口，该窗口经过精简优化，专门用于同时启动和控制多个轨道的录音。