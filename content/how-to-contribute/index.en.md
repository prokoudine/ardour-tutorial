---
title: How to contribute
slug: how-to-contribute
description: How to contribute to this tutorial
weight: 12
sidebar:
  exclude: true
---

## What kind of contributions we accept

We intentionally limit the scope of this tutorial to very basic techniques that
are sufficient to get users started with recording, mixing, and exporting with
Ardour. So we'll gratefully accept patches that do not change the scope in any
major way: bug fixes, better explanations, better illustrations etc. We also
encourage translations of the Ardour tutorial.

## Running the tutorial CMS locally

1. Please install Hugo for your operating system.

2. Fork the [Git repository](https://github.com/prokoudine/ardour-tutorial)

3. Clone the forked repository:

```bash
git clone git@github.com:USERNAME/ardour-tutorial.git
```

3. Go inside the cloned repository in the terminal:

```bash
cd ardour-tutorial
```

4. Run Hugo

```bash
hugo server -D --disableFastRender
```

5. Open the locally running CMS in your browser. Hugo defaults to `localhost:1313/`.

## Using Markdown syntax and extras

All text files use Markdown syntax with a few extras. We use a limited subset of
available options.

The front page uses cards shortcode for navigation to chapters and external user support links. Here is an example:

{{< cards >}}
  {{< card link="/recording/" title="Recording" subtitle="How to record audio and MIDI with Ardour" icon="microphone" >}}
  {{< card link="/editing-sessions" title="Editing sessions" subtitle="How to edit sessions with Ardour" icon="scissors" >}}
{{< /cards >}}

Another extra feature available in the template of choice is a so called
shortcode for notice boxes that look like this:

> [!TIP]
> Some text

Here is the code for that:

```
> [!TIP]
> Some text
```

We generally stick to two type of notice boxes: 'TIP' and 'WARNING'.

The rest is really straightforward:

- Single underscore like `_Name_` makes italics and is used for UI elements like
window captions.
- Double asterisk like `**OK**` makes bolds and is reserved for button captions.
- Backticks around some text are typically reserved for menu paths and filenames.

## Submitting changes

The repository with this tutorial is available on GitHub. The general idea is
that you fork the repository, make changes in a branch, then create a pull
request. Please [see
here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
for a complete guide.

## Creating and submitting a translation

The entire tutorial can be translated into a different language. Once you create
a git branch to separate your work, here is what you do next.

### Translating the menu

The top and the sidebar menus are stored in `hugo.yaml`, inside the `menu` section. Here is the snippet for this very page:

```yaml
    - identifier: contribute
      name: Contribute
      pageRef: /how-to-contribute
      weight: 2
```

All identifiers are listed for translation in a separate file, e.g. `i18n/fr.yaml`:

```yaml
conventions: Conventions
contribute: Contribuer
license: Licence
credits: Crédits
search: Recherche
more: Plus d'informations
```

If you want to translate the tutorial to e.g. Spanish, you need to create `i18n/es.yaml` and translate the identifiers.

### Adding your language to the drop-down list

1. Open the `hugo.yaml` configuration file. Available translations are listed in the `languages:` subsection:

```yaml
languages:
  en:
    languageName: English
    weight: 1
  fr:
    languageName: Français
    weight: 2
```

2. Add a new language subsection: use a two-letter language code and write its name in your native language. For example, for Spanish that would be `es` and `Español` accordingly:

```yaml
  es:
    languageName: Español
    weight: 2
```

Place the new subsection alphabetically by language code and change weights accordingly:

```yaml
languages:
  en:
    languageName: English
    weight: 1
  es:
    languageName: Español
    weight: 2
  fr:
    languageName: Français
    weight: 3
```

> [!IMPORTANT]
> You need at least one translated page to be able to see any content once you switch to the newly added language.

### Translating tutorial pages

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

1. Create a copy of `getting-started/_index.md` and name it `_index.fr.md`.
Now you should have `_index.md` and `_index.fr.md` in the same folder.

2. Translate `_index.fr.md`. If you already translated the main menu, you should
be able to open the original page in English, switch the language to 'Français'
and see your translated page.

3. Go to the `starting-ardour` subfolder, create a copy of `index.en.md` and
name it `index.fr.md` and then translate it.

4. Repeat step 3 for all subfolders. This should give you the translation of an
entire chapter on getting started with Ardour.

### Translating user interface elements and screenshots

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

```
![Save template](en/ardour7-save-template.png)
```

becomes

```
![Schablone speichern](de/ardour7-schablone-speichern.png)
```

### Submitting Translation

The process is the same as for general patches: submit a pull request. See above
for a link to a step-by-step guide.
