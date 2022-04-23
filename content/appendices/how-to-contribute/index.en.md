+++
title = "How to contribute"
chapter = false
weight = 5
+++

## What Kind Of Contributions We Accept

We intentionally limit the scope of this tutorial to very basic techniques that
are sufficient to get users started with recording, mixing, and exporting with
Ardour. So we'll gratefully accept patches that do not change the scope in any
major way: bug fixes, better explanations, better illustrations etc. We also
encourage translations of the tutorial.

## How to Submit Changes

The repository with this tutorial is available on GitHub. The general idea is
that you fork the repository, make changes in a branch, then create a pull
request. Please [see
here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
for a complete guide.

## How To Create And Submit A Translation

The entire tutorial can be translated into a different language. Once you create
a git branch to separate your work, here is what you do next.

### Translating Menu

The menu is stored in `config.toml`, inside the `[Languages]` section. For each
language, that section has two parts:

1. The main part where names of chapters and pages chow up.
2. The 'shortcuts' menu with links to Ardour's homepage, forum etc.

To translate the header of the main part, copy and paste the entire block that
starts with `[Languages.en]` and then:

1. Change the language code in `[Languages.en]`.
2. Translate the title.
3. Submit the name of the language that will show up in the drop-down list of
available translations. We encourage you to use language
or the local one, in your alphabet — whichever works for you.
4. Change the two-letter language code in the line that starts with
`landingPageURL`.
5. Translate the caption of the homepage of the tutorial in the line that starts
with `landingPageName`.

Thus

~~~
[Languages.en]
title = "Ardour tutorial"
weight = 1
languageName = "English"
landingPageURL = "/ardour-tutorial/en/"
#landingPageURL = "/"
landingPageName = "<i class='fas fa-home'></i> Home"
~~~

translates to e.g.:

~~~
[Languages.ru]
title = "Введение в Ardour"
weight = 1
languageName = "Russian"
landingPageURL = "/ardour-tutorial/ru/"
#landingPageURL = "/"
landingPageName = "<i class='fas fa-home'></i> Начало"
~~~

This main part of the menu will start automatically accumulating links to
translated pages as you start adding pages with translations.

Use the same approach to translate the shortcuts menu. E.g. the link to Ardour's
website

~~~
[[Languages.en.menu.shortcuts]]
name = "<i class='fas fa-fw fa-home'></i> Ardour's homepage"
url = "https://ardour.org/"
weight = 11
~~~

becomes

~~~
#[[Languages.ru.menu.shortcuts]]
#name = "<i class='fas fa-fw fa-home'></i> Сайт Ardour"
#url = "https://ardour.org/"
#weight = 11
~~~

Please keep all translations of the menu in a single larger block.

### Translating Chapters And Pages

All content lives inside the `content` folder where subfolders are names of
chapters like _Recording_ (`recording`), _Mixing sessions_ (`mixing-sessions`)
etc. Here is the general structure:

~~~
/content # The root folder for all content
/content/_index.en.md # The start page you see when you click Home
/content/chapter-folder/ # The folder for an entire chapter like "Recording"
/content/chapter-folder/_index.en.md # Chapter
/content/chapter-folder/page/ # Folder for a page in a chapter, e.g. "Understanding Routing"
/content/chapter-folder/page/index.md # Original text of that page in English
/content/chapter-folder/page/en/ # Screenshots created with English user interface
~~~

All text files have a language code right in the file name:

- regular pages are named `index.XX.md`,
- chapters are named `_index.XX.md`,

where XX is a two-letter language code like 'de' for German or 'fr' for French. You should be able to use four-letter codes as well, e.g. 'pt_BR' or 'es_AR'.

Supposing you want to translate the _Getting Started_ chapter into French. Here
is how you do it.

1. Create a copy of `getting-started/_index.en.md` and name it `_index.fr.md`.
Now you should have `_index.en.md` and `_index.fr.md` in the same folder.

2. Translate `_index.fr.md`. If you already translated the main menu, you should
be able to open the original page in English, switch the language to 'Français'
and see your translated page.

3. Go to the `starting-ardour` subfolder, create a copy of `index.en.md` and
name it `index.fr.md` and then translate it.

4. Repeat step 3 for all subfolders. This should give you the translation of an
entire chapter on getting started with Ardour.

All text files use Markdown syntax with a few extras. We use a limited subset of
available options and one shortcode specific to HTML5, a `<figure>` element
([see here](https://gohugo.io/content-management/shortcodes/#figure) for more
info). The rest is really straightforward:

- Single underscore like `_Name_` makes italics and is used for UI elements like
window captions.
- Double asterisk like `**OK**` makes bolds and is reserved for button captions.
- Backticks around some text are typically reserved for menu paths and filenames.

### Translating User Interface Elements and Screenshots

If Ardour's user interface is available in the language you are translating this
tutorial into, it is generally up to you to decide if you refer to localized
user interface or not.

We know that users are very passionate about both localized and non-localized
UIs, so one approach you could take is to create localized screenshots, refer to
localized user interface and then mention the English counterparts in
parenthesis. Here is an example of a translation into German:

> Nach dem Import einiger Sounds aus dem heruntergeladenen Sample-Pack
(Bassdrum, Snare, Hi-Hat, Clap) sieht unsere Session so aus (in diesem Fall
haben wir die Option _Dateien als neue Spuren hinzufügen_ (EN: _Add files as new
tracks_) verwendet und beim Start der Session eingefügt.

If you intend to create screenshots of localized user interface, please create a
subfolder that's named after a language code (two-letter of four-letter,
whichever is applicable) and place your screenshots there. Having done so,
please update references to screenshots in the text. E.g.

~~~
src="en/ardour7-save-template.png"
~~~

becomes

~~~
src="de/ardour7-schablone-speichern.png"
~~~

### Submitting Translation

The process is the same as for general patches: submit a pull request. See above
for a link to a step-by-step guide.