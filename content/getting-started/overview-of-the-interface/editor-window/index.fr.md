---
title: Fenêtre éditeur
description: Bases de la fenêtre éditeur d'Ardour
weight: 1
cascade:
  type: docs
---

Lorsque vous créez une nouvelle session, Ardour ouvre une nouvelle fenêtre vide appelée fenêtre _Editor_. La fenêtre _Editor_ est la fenêtre la plus importante dans Ardour, car c'est là que vous arrangez les pistes, importez et éditez les médias sur la ligne de temps, et contrôlez l'automation des greffons pour les effets créatifs et le mixage.

Voyons les principales parties de la fenêtre _Editor_ :

{{< figure src="en/ardour7-editor-window-sections.png" alt="Editor window sections" >}}

Les voici :

1. Barre d'outils spécifique à l'éditeur
2. Ligne de temps
3. Pistes et bus
4. Aperçu du projet
5. Bande de mixage de l'éditeur
6. Régions, Pistes/Bus, Instantanés, Groupes, Gammes, Marques

Passons rapidement en revue ces éléments.

## Barre d'outils spécifique à l'éditeur

### Modes d'édition et modes de curseur

![Modes d'édition](en/ardour7-edit-modes-cursor-modes.png?width=30vw)

Les contrôles _Modes d'édition_ et _Modes de curseur_ définissent le comportement du canevas principal et les différentes fonctions que peut avoir le curseur. Il existe trois modes d'édition dans le menu déroulant : _Slide_, _Ripple_ et _Lock_. Nous les aborderons dans le chapitre [Sessions d'édition](../../../editing-sessions/).

A droite du bouton **Smart** se trouvent les _Modes Curseur_ :

- Mode _Smart_ (raccourci **Y**)
- Mode _Grab_ (raccourci **G**)
- Mode _Range_ (**R** raccourci)
- Mode _Cut_ (**C** raccourci)
- Mode _Audition_
- Mode _Stretch_ (**T** raccourci)
- Mode _Grid_ (**Y** raccourci)
- Mode _Draw_ (**D** raccourci)
- Mode _Internal edit_ (raccourci **E**)

La plupart d'entre eux sont abordés dans la section [Working With Régions](../../../editing-sessions/working-with-regions/). Les deux dernières sont abordés dans le chapitre **Utilisation de l'automatisation**.

Le mode _Smart_ est en fait une combinaison du mode _Grab_ et du mode _Range_. Lorsque activé, la souris se comporte comme si elle était en mode _Range_ dans la moitié supérieure d'une région, et en mode _Grab_ dans la moitié inférieure.

### Options d'accrochage

La barre d'outils _Options d'accrochage_ permet de sélectionner des unités de grille visibles qui affectent l'accrochage lors de l'édition des régions et, dans le cas des régions MIDI, de leur contenu.

![Accrochages](en/ardour7-snap-options-and-nudge-controls.png?width=25vw)

Voici une comparaison entre une grille 1 mesure, une grille 1/8 note et une grille 1/32 note :

{{< figure alt="1-bar grid, 1/8 note and 1/32 note grid" src="en/ardour7-snapping-1-bar-to-1-32-note.png" >}}

Voir [Configurer la signature temporelle](../../../editing-sessions/setting-up-time-signature/), [Utilisation des gammes](../../../editing-sessions/using-ranges/) et [Travailler avec des régions](../../../editing-sessions/working-with-regions/) pour plus de détails.

### Options de vue de la piste et de zoom

La partie la plus à droite de la barre d'outils comporte des options de visualisation des pistes et de zoom.

![Opions de zoom](en/ardour7-view-and-zoom-options.png?width=20vw)

Les options d'affichage des pistes permettent de sélectionner le nombre de pistes à afficher en même temps, et vous pouvez également réduire ou étendre le zoom vertical des pistes et des bus sélectionnés.

Les options de zoom permettent d'effectuer un zoom avant et arrière incrémentiel, ainsi qu'un zoom arrière pour pour afficher l'ensemble du projet à l'horizontale.

{{< callout type-"info" >}}
Utilisez les raccourcis **=** (la touche égal de votre clavier) pour zoomer, et **-** (la touche moins de votre clavier) pour dézoomer.
{{< /callout >}}

Le menu déroulant contrôle la _focalisation du zoom_. Il définit le point de focalisation des opérations de zoom. Essayez d'effectuer des zooms avant et arrière avec un point focal  différent à chaque fois. Par exemple, si vous choisissez _Playhead_, le zoom se comportera en fonction de la position de l'écran. la position de la _Playhead_. _Souris_ prendra la position actuelle de la souris comme référence, comme référence, et ainsi de suite.

## Ligne de temps

Cliquez avec le bouton droit de la souris sur les noms des règles et vous verrez apparaître un menu avec toutes les règles possibles à votre disposition. Vous pouvez décocher les règles dont vous n'avez pas besoin pour économiser de l'espace sur l'écran. Vous trouverez plus d'informations sur ces opérations dans les chapitres [Configuration de la ligne de temps](../../setting-up-the-timeline/) et [Configuration de la signature temporelle](../../../editing-sessions/setting-up-time-signature/).

![Vue d'ensemble des règles Ardour](en/ardour7-overview-rulers.png?width=40vw)

## Pistes et bus

Juste en dessous des règles se trouve l'affichage des voies et des bus. Dans l'exemple ci-dessous, vous pouvez voir un bus appelé _Master_ et une piste appelée _MyTrack_. La piste _MyTrack_ contient également une région qui représente un fichier audio avec un dessin de sa forme d'onde. Vous trouverez de plus amples informations sur les pistes et les bus dans le chapitre [Creation d'une piste ou d'un bus](../../creating-tracks-and-busses/).

![Pistes Ardour](en/Ardour6_Track.png?width=30vw)

## Vue d'ensemble du projet

Voici une vue d'ensemble de la session.

{{< figure src="en/ardour7-overview-panel.png" alt="Project overview" >}}

Il y a deux cas d'utilisation majeurs ici :

1. Naviguer dans le projet. Il suffit de saisir le rectangle et de le faire glisser autour pour parcourir l'ensemble du projet.

2. Ajuster le zoom et la position de la partie visible du projet. Saisissez le côté gauche ou le côté droit de la bordure du rectangle visible et faites-le glisser vers l'intérieur ou vers l'extérieur pour effectuer un zoom avant ou arrière respectivement.

## Mixeur de l'éditeur

Le mixeur de l'éditeur est situé à gauche de la fenêtre _Editor_. Il affiche la  bande de mixage de la piste ou du bus actuellement sélectionné. Il est principalement utilisé pour contrôler le volume, les greffons et le routage de la piste ou du bus auquel il correspond.

![Mixeur de l'éditeur](en/Ardour6_Editor_Mixer.png?height=40vw)

Vous pouvez basculer pour afficher ou cacher l'_Editor Mixer_ en cliquant sur le menu `View > Show Editor Mixer` (raccourci **Shift + E**). Ce mixeur est traité dans chapitre [Utilisation de la bande de mixage](../mixing-sessions/the-mixer-strip/).

## Liste des éditeurs

L'espace à droite de la fenêtre _Editor_ d'Ardour peut avoir 8 fonctions différentes fonctions différentes, en fonction de l'onglet sélectionné : _Pistes et bus_, _Sources_, _Regions_, _Clips_, _Arrangement_,  _Snapshots_, _Groupes de Pistes et de Bus_, et _Ranges and Marks_.

![Liste des sources](en/ardour7-sources-list.png?height=60vh)

- _Tracks & Busses_ fournit une vue d'ensemble de toutes les pistes et bus du projet, y compris ceux qui sont invisibles. Cet onglet est traité dans la section [Arrangement des pistes](../../../editing-sessions/arranging-tracks/).
- _Sources_ liste tous les fichiers du disque importés dans la session.
- _Regions_ est une liste de toutes les prises de la session. Vous pouvez réutiliser à la fois les sources et les régions en les faisant glisser sur le canevas. Vous trouverez de plus amples informations sur les régions dans la section [Travailler avec des régions](../../../editing-sessions/working-with-regions/).
- _Clips_ répertorie les clips audio et MIDI réutilisables qui peuvent être glissés et déposés sur la ligne de temps ou sur la grille de clips de la page _Cue_.
- L'option _Arrangement_ répertorie toutes les sections d'arrangement définies par l'utilisateur (comme le couplet, le refrain, le pont, etc) et permet de les copier-coller rapidement.
- Les instantanés sont des versions de la même session enregistrées à des moments particuliers, elles sont abordées dans le chapitre [Enregistrer un instantané](../../../saving-sessions/saving-a-snapshot/).
- _Ranges and marks_ est une vue d'ensemble de tous les marqueurs du projet, avec une interface facile à utiliser pour les éditer.

## Poursuivre

La fenêtre _Mixer_ vous permet de faire ressortir les instruments dans un morceau.

Suivant : [FENÊTRE MIXER](../mixer-window)
