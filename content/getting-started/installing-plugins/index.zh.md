---
title: 安装插件
description: 如何为 Ardour 安装插件
weight: 7
cascade:
  type: docs
---

虽然 Ardour 已经自带了一些插件，但你可能需要更多各种各样的插件：比如更高级的压缩器或混响、能够播放高质量管弦乐音色库的采样器、复音合成器等等。

Ardour 支持多种插件 API：

- **Linux**: LADSPA, LV2, VST2.x, VST3
- **Windows**: LADSPA, LV2, VST2.x, VST3
- **macOS**: LADSPA, LV2, VST2.x, VST3, AU

你可以在[混音章节](../../mixing-sessions/plugins/)中找到推荐的免费/开源插件列表。

## 安装插件

### LADSPA 和 LV2

这些插件大多没有适用于 Windows 和 macOS 的二进制编译版本，因此在这些系统上，你通常需要处理的是 VST2、VST3 或 AU。

在 Linux 上，LV2 是非常受欢迎的选择。如果你只从发行版的软件仓库安装插件，那么无需进行任何额外操作。Ardour 能够轻松识别新插件。但如果你是从源代码编译插件，构建脚本通常会尝试将 `plugin-name.lv2` 文件夹复制到 `/usr/local/lib/lv2` 或 `~/.lv2`。

### VST2.x

VST2 插件没有官方推荐的安装位置，因此你可以这样做：

1. 将所有 VST2.x 插件解压到同一个文件夹中。（在 Linux 上，通常建议使用 `~/.vst`。）

2. 在 Ardour 中，依次进入 _编辑 > 首选项 > 插件 > VST_，在 VST2.x（虚拟工作室）部分，点击**编辑**按钮以添加新的 VST2.x 插件路径。

3. 添加你在步骤 1 中创建的文件夹路径。Ardour 会询问是否要重新扫描插件。选择“是”。

这种方法适用于所有支持的操作系统。

### VST3

VST3 规范硬编码了用于存储插件的系统路径。在 Windows 和 macOS 上，大多数情况下，插件都会安装到正确的文件夹中，因此你只需重新扫描插件文件夹即可。

在 Linux 上，很多时候你会得到一个 ZIP 压缩包，里面包含一个 `plugin-name.vst3` 文件夹。该文件夹需要放到 `~/.vst3`，或者，如果你希望该计算机上的所有用户都能访问，则放到 `/usr/local/lib/vst3`。

### AU

这些 macOS 特有的插件会通过 DMG 安装到正确的文件夹中。你只需要重新扫描这些文件夹即可。

## 重新扫描文件夹以查找已安装的插件

安装完成后，建议重新扫描可用插件。这通常通过 _插件管理  _ (_窗口 > 插件管理_) 来完成。

{{< figure src="en/plugin-manager.png" alt="Plugin manager" >}}

如果你只安装了新插件，仅扫描查找这些新插件即可。在_插件管理_的左侧边栏中，点击**Discover New/Updated** （发现新的/更新的），然后等待扫描完成。

如果你移除了一些之前安装的插件，最好进行一次完整重新扫描。点击**Re-scan All** （全部重新扫描），然后等待扫描完成。

## 下一步

现在你已经了解了如何安装效果器插件或软件合成器，接下来让我们学习如何将音频和 MIDI 录制到 Ardour 中。

下一篇：[录制音频](../../recording/recording-audio/)