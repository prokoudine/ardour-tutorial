+++
title = "Comment contribuer"
description = "Comment contribuer à ce tutoriel"
chapter = false
weight = 5
+++

## Quel type de contributions acceptons nous

Nous limitons intentionnellement la portée de ce tutoriel à des techniques très basiques qui sont suffisantes pour permettre aux utilisateurs de commencer à enregistrer, mixer et exporter avec Ardour. Nous accepterons donc avec gratitude les correctifs qui ne modifient pas le champ d'application de manière majeure : corrections de bogues, meilleures explications, etc.
Nous encourageons également les traductions de ardour-tutorial.

## Utilisation de la syntaxe Markdown et des extras

Tous les fichiers texte utilisent la syntaxe Markdown avec quelques extras. Nous utilisons un sous-ensemble limité d'options disponibles et un "shortcode" spécifique à HTML5, l'élément `<figure>` ([voir ici](https://gohugo.io/content-management/shortcodes/#figure) pour plus d'informations).
Une autre fonctionnalité supplémentaire disponible dans le modèle choisi est un code court appelé pour les boîtes de notification qui ressemblent à ceci :

{{% notice tip %}}
Le texte
{{% /notice %}}

Nous nous en tenons généralement à deux types de boîtes d'avis : "conseil" et "avertissement".

Le reste est très simple :

- un simple trait de soulignement comme `_Nom_` met en italique et est utilisé pour les éléments de l'interface utilisateur comme les
les légendes de fenêtres,
- le double astérisque comme `**OK**` met en gras et est réservé aux légendes des boutons,
- les "Backticks" autour d'un texte sont généralement réservées aux chemins d'accès aux menus et aux noms de fichiers.

## Comment soumettre des modifications

Le dépôt contenant ce tutoriel est disponible sur GitHub. L'idée générale est "forker" le dépôt, d'effectuer des modifications dans une branche, puis de créer un "pull request". Veuillez [voir
ici](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) pour un guide complet.

## Comment créer et soumettre une traduction

L'ensemble du tutoriel peut être traduit dans une autre langue. Une fois que vous avez créé une branche git pour séparer votre travail, voici ce qu'il faut faire ensuite.

### Traduction de menu

Le menu est stocké dans `config.toml`, dans la section `[Languages]`.
Pour chaque langue, cette section a deux parties :

1. la partie principale où se trouvent les noms des chapitres et des pages,
2. le menu "raccourcis" avec des liens vers la page d'accueil d'Ardour, le forum, etc.

Pour traduire l'en-tête de la partie principale, copiez et collez tout le bloc qui qui commence par `[Languages.en]` et ensuite :

1. changez le code de la langue dans `[Languages.en]`,
2. traduisez le titre,
3. soumettez le nom de la langue qui apparaîtra dans la liste déroulante des traductions disponibles. Nous vous encourageons à utiliser la langue ou la langue locale, dans votre alphabet, selon ce qui vous convient le mieux,
4. modifiez le code de langue à deux lettres dans la ligne qui commence par `landingPageURL`,
5. traduisez la légende de la page d'accueil du tutoriel dans la ligne qui commence par `landingPageName`.

Ainsi

~~~
[Languages.en]
title = "Ardour tutorial"
weight = 1
languageName = "English"
landingPageURL = "/ardour-tutorial/en/"
#landingPageURL = "/"
landingPageName = "<i class='fas fa-home'></i> Home"
~~~

Se traduit par exemple :

~~~
[Languages.ru]
title = "Введение в Ardour"
weight = 1
languageName = "Russian"
landingPageURL = "/ardour-tutorial/ru/"
#landingPageURL = "/"
landingPageName = "<i class='fas fa-home'></i> Начало"
~~~

Cette partie principale du menu commencera à accumuler automatiquement des liens vers les pages traduites au fur et à mesure que vous ajouterez des pages avec des traductions.

Utilisez la même approche pour traduire le menu des raccourcis. Par exemple, le lien vers le d'Ardour.

~~~
[[Languages.en.menu.shortcuts]]
name = "<i class='fas fa-fw fa-home'></i> Ardour's homepage"
url = "https://ardour.org/"
weight = 11
~~~

Devient

~~~
#[[Languages.ru.menu.shortcuts]]
#name = "<i class='fas fa-fw fa-home'></i> Сайт Ardour"
#url = "https://ardour.org/"
#weight = 11
~~~

Veuillez conserver toutes les traductions du menu dans un seul bloc plus grand.

### Traduire les chapitres et les pages

Tout le contenu se trouve dans le dossier `content` où les sous-dossiers sont des noms de chapitres comme _Recording_ (`recording`), _Mixing sessions_ (`mixing-sessions`) etc. Voici la structure générale :

~~~
/content # Le dossier racine pour tout le contenu
/content/_index.en.md # Page de départ que vous voyez quand vous cliquez sur Accueil
/content/chapter-folder/ # Dossier pour un chapitre entier comme " Enregistrer"
/content/chapter-folder/_index.en.md # Chapitre
/content/chapter-folder/page/ # Dossier pour une page dans un chapitre, par exemple "Comprendre le routage"
/content/chapter-folder/page/index.md # Texte original de cette page en anglais
/content/chapter-folder/page/en/ # Captures d'écran créées avec l'interface utilisateur en anglais
~~~

Tous les fichiers texte ont un code de langue directement dans le nom du fichier :

- les pages ordinaires sont nommées `index.XX.md`,
- les chapitres sont nommés `_index.XX.md`,

où XX est un code de langue à deux lettres, comme "de" pour l'allemand ou "fr" pour le français. Vous devriez également pouvoir utiliser des codes à quatre lettres, par exemple 'pt_BR' ou 'es_AR'.

Supposons que vous souhaitiez traduire le chapitre "Pour commencer" en français. Voici comment procéder.

1. Créez une copie de `getting-started/_index.en.md` et nommez-la `_index.fr.md`.
Maintenant vous devriez avoir `_index.en.md` et `_index.fr.md` dans le même dossier.

2. Traduisez `_index.fr.md`. Si vous avez déjà traduit le menu principal, vous devriez être en mesure d'ouvrir la page originale en anglais, de changer la langue en 'Français' et de voir votre page traduite.

3. Allez dans le sous-dossier `starting-ardour`, créez une copie de `index.en.md` et nommez-la `index.fr.md` et traduisez-la.

4. Répétez l'étape 3 pour tous les sous-dossiers. Cela devrait vous donner la traduction d'un chapitre entier sur l'utilisation d'Ardour.

### Traduire les éléments de l'interface utilisateur et les captures d'écran

Si l'interface utilisateur d'Ardour est disponible dans la langue dans laquelle vous traduisez ce tutoriel, il vous appartient généralement de décider si vous faites référence à l'interface utilisateur localisée ou non.

Nous savons que les utilisateurs sont très passionnés par les interfaces utilisateur localisées et non localisées.
Une approche possible consiste donc à créer des captures d'écran localisées, à faire référence à l'interface utilisateur localisée et de mentionner les équivalents anglais entre parenthèses.
Voici un exemple de traduction en allemand :

> Nach dem Import einiger Sounds aus dem heruntergeladenen Sample-Pack
(Bassdrum, Snare, Hi-Hat, Clap) sieht unsere Session so aus (in diesem Fall
haben wir die Option _Dateien als neue Spuren hinzufügen_ (EN: _Add files as new
tracks_) verwendet und beim Start der Session eingefügt.

Si vous avez l'intention de créer des captures d'écran de l'interface utilisateur localisée, veuillez créer un sous-dossier nommé d'après le code de la langue (deux lettres ou quatre lettres, selon le cas) et y placer les captures d'écran. Cela fait, veuillez mettre à jour les références aux captures d'écran dans le document, veuillez mettre à jour les références aux captures d'écran dans le texte. Par exemple :

~~~
src="en/ardour7-save-template.png"
~~~

devient

~~~
src="de/ardour7-schablone-speichern.png"
~~~

### Soumettre une traduction

Le processus est le même que pour les correctifs généraux : soumettre une "pull request". Voir ci-dessus pour un lien vers un guide étape par étape.