---
title: 如何贡献
description: 如何为本教程贡献
weight: 12
sidebar:
  exclude: true
---

## 我们接受的贡献类型

我们有意将本教程的范围限制在非常基础的技术，足以让用户开始使用 Ardour 进行录音、混音和导出。因此，我们非常欢迎不显著改变范围的补丁：错误修复、更好的解释、更好的插图等。我们也鼓励翻译 Ardour 教程。

## 本地运行教程 CMS

1. 请为您的操作系统安装 Hugo。

2. fork [Git 仓库](https://github.com/prokoudine/ardour-tutorial)。

3. 克隆fork的仓库：
  git clone git@github.com:USERNAME/ardour-tutorial.git

4. 在终端中进入克隆的仓库：
  cd ardour-tutorial

5. 运行 Hugo：
  hugo server -D --disableFastRender

6. 在浏览器中打开本地运行的 CMS。Hugo 默认地址为 `localhost:1313/`。

## 使用 Markdown 语法和扩展功能

所有文本文件使用 Markdown 语法及少量扩展功能。我们使用了可用选项中的有限子集。

主页使用卡片短代码导航到章节和外部用户支持链接。示例如下：

{{< cards >}}
  {{< card link="/recording/" title="录音" subtitle="如何使用 Ardour 录制音频和 MIDI" icon="microphone" >}}
  {{< card link="/zh/editing-sessions/" title="编辑会话" subtitle="如何使用 Ardour 编辑会话" icon="scissors" >}}
{{< /cards >}}

另一个可用功能是通知框短代码，如下所示：

> [!TIP]
> 一些文本

其代码如下：

```
> [!TIP]
> 一些文本
```

我们通常使用两种通知框：“TIP” 和 “WARNING”。

其余部分非常简单：

- 单下划线如 `_名称_` 表示斜体，用于 UI 元素如窗口标题。
- 双星号如 `**确定**` 表示粗体，保留给按钮标题。
- 反引号包围的文本通常用于菜单路径和文件名。

## 提交更改

本教程的仓库位于 GitHub 上。一般流程是分叉仓库，在分支中更改，然后创建拉取请求。完整指南请[参见此处](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)。

## 创建并提交翻译

整个教程可以翻译成其他语言。一旦您创建了 Git 分支以分隔工作，以下是后续步骤。

### 翻译菜单

顶部和侧边栏菜单存储在 `hugo.yaml` 的 `menu` 部分中。以下是本页的代码片段：

```yaml
       - identifier: contribute
        name: Contribute
        pageRef: /how-to-contribute
        weight: 2
```

所有标识符列在单独的文件中翻译，例如 `i18n/fr.yaml`：

```yaml
conventions:  Conventions
contribute: Contribuer
license: Licence
credits: Crédits
search: Recherche
more: Plus d'informations
```

如果您想将教程翻译为西班牙语，需创建 `i18n/es.yaml` 并翻译标识符。

### 将语言添加到下拉列表

1. 打开 `hugo.yaml` 配置文件。可用翻译列在 `languages:` 子部分：

```yaml
  languages:
    en:
      languageName: English
      weight: 1
    fr:
      languageName:  Français
      weight: 2
```

> [!note] 注意：关于新字段 label 和旧字段 languageName 的说明
> 当前网站实际部署环境使用的 Hugo 版本较旧，尚未完全支持新引入的 `label` 字段。仅使用 `label`，会导致线上语言切换器中不显示中文,即语言切换器显示异常。为了**向后兼容**旧版本，并**面向未来**新版标准，建议在配置新语言时，同时保留 `languageName` 和 `label` 两个字段。待未来网站成功升级 Hugo 版本后，即可只保留 `label` 字段即可。

2. 添加新语言子部分：使用双字母语言代码并用母语书写名称。例如，西班牙语为 `es` 和 `Español`：

```yaml
    es:
      languageName: Español
      weight: 2
```

按语言代码字母顺序排列新子部分，并调整权重：

```yaml
  languages:
    en:
      languageName: English
      weight: 1
    es:
      languageName: Español
      weight: 2
    fr:
      languageName:  Français
      weight: 3
```

> [!IMPORTANT]重点说明
> 您至少需要翻译一个页面才能在切换到新语言时看到内容。

### 翻译教程页面

所有内容位于 `content` 文件夹中，子文件夹为章节名称，如 _录音_ (`recording`)、_混音会话_ (`mixing-sessions`) 等。以下是基本结构：

~~~
/content # 所有内容的根文件夹
/content/_index.en.md # 点击主页时看到的起始页
/content/chapter-folder/ # 整个章节的文件夹，如“录音”
/content/chapter-folder/_index.en.md # 章节目录
/content/chapter-folder/page/ # 章节中页面的文件夹，如“理解路由”
/content/chapter-folder/page/index.md # 该页面的英文原文
/content/chapter-folder/page/en/ # 使用英文界面的截图
~~~

所有文本文件的文件名中包含语言代码：

- 常规页面名为 `index.XX.md`
- 章节名为 `_index.XX.md`

其中 XX 是双字母语言代码，如德语为 'de'，法语为 'fr'。也可以使用四字母代码，如 'pt_BR' 或 'es_AR'。

假设您想将 _入门_ 章节翻译为法语，步骤如下：

1. 复制 `getting-started/_index.md` 并命名为 `_index.fr.md`。现在同一文件夹中应有 `_index.md` 和 `_index.fr.md`。
2. 翻译 `_index.fr.md`。如果已翻译主菜单，您可以打开英文原页，切换到“Français”并看到翻译后的页面。
3. 进入 `starting-ardour` 子文件夹，复制 `index.en.md` 并命名为 `index.fr.md`，然后翻译。
4. 对所有子文件夹重复步骤 3。这将完成整个 Ardour 入门章节的翻译。

### 翻译用户界面元素和截图

如果 Ardour 的用户界面支持您翻译的语言，是否引用本地化界面由您决定。

我们知道用户对本地化和非本地化界面都非常热衷，因此您可以创建本地化截图，引用本地化界面，并在括号中注明英文对应词。以下是德语翻译示例：

> 导入下载的样本包中的一些声音（底鼓、军鼓、踩镲、拍手）后，我们的会话如下所示（本例中使用了选项 _将文件添加为新轨道_（EN: _Add files as new tracks_）并在会话开始时插入）。

如果您打算创建本地化用户界面的截图，请创建一个以语言代码命名的子文件夹（双字母或四字母均可），并将截图放在其中。完成后，请更新文本中对截图的引用。例如：
```
  ![保存模板] (en/ardour7-save-template.png)
```

改为：
```
  [!模板保存] (de/ardour7-schablone-speichern.png)
```

### 提交翻译

流程与常规补丁相同：提交pr（拉取请求）。完整指南请参见上文链接。