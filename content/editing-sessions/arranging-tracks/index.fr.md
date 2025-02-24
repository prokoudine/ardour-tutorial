---
title: Routage des pistes
description: Comment organiser les regions sur la ligne de temps dans Ardour
weight: 2
cascade:
  type: docs
---

Dans les chapitres suivants, nous utiliserons Ardour pour créer un court passage rythmique en utilisant plusieurs échantillons de batterie.

Nous continuerons à travailler sur ce passage dans des tutoriels ultérieurs, tels que _Travail avec les régions_ et _Création de sections bouclées_. Nous supposons que vous avez lu les chapitres de la section "Prise en main" et que vous êtes familiarisé avec l'importation d'audio, les pistes et la ligne de temps.

## Importer des échantillons

La première étape consiste à ajouter des sons, ce qui est discuté en détail dans le chapitre _Importer des fichiers audio_.
Ici, nous utilisons la boîte de dialogue _Ajouter un média existant_ (**Ctrl + I**) pour importer des échantillons de batterie en tant que régions. Les échantillons utilisés dans ce tutoriel ont été obtenus à partir d'un pack d'échantillons du site [freesound.org](http://www.freesound.org/) (le kit de batterie de [Nord Drum Mini Kit](https://freesound.org/people/menegass/packs/10430/)).

{{< figure alt="FS1" src="en/ardour7-freesound-1.png" >}}

Après avoir importé quelques sons du pack d'échantillons téléchargé (grosse caisse, caisse claire, charleston, clap), notre session ressemble à ceci (dans ce cas, nous avons utilisé l'option _Add files as new tracks_, et les avons insérés _au début de la session_. Les échantillons de la batterie apparaissent comme de nouvelles pistes individuelles dans la fenêtre _Editor_, chacune portant le nom du fichier audio utilisé. Si les noms de fichiers sont trop longs ou obscurs, vous pouvez renommer vos pistes pour plus de clarté.

{{< figure alt="FS2" src="en/ardour7-freesound-2.png" >}}

## Organisation des pistes

Renommons les pistes afin de pouvoir visualiser rapidement l'emplacement de chaque instrument.
Pour ce faire, double-cliquez sur le nom de la piste pour l'éditer.

{{< figure alt="FS3" src="en/ardour7-freesound-3.png" >}}

Vous pouvez également réorganiser l'ordre des pistes de haut en bas dans la fenêtre de l'éditeur.
Pour ce faire, cliquez sur l'onglet _Tracks & Busses_ à l'extrême droite de la fenêtre de l'éditeur et en glissant-déposant les pistes dans l'ordre désiré.

{{< figure alt="FS4" src="en/ardour7-freesound-4.png" >}}

Une autre option pour réorganiser les pistes est de sélectionner une piste et d'utiliser les raccourcis **Ctrl+Flèche Haut/Bas** pour la déplacer vers le haut ou vers le bas.

{{< callout type="info" >}}
Vous pouvez également utiliser les cases à cocher V dans cet onglet pour afficher ou masquer les pistes dans le canevas principal.
{{< /callout >}}

Ici, nous avons ordonné la batterie de manière à ce que la grosse caisse soit en bas, la caisse claire et le charleston sont au milieu, et le clap est en haut.

{{< figure alt="FS6" src="en/ardour7-freesound-5.png" >}}

## Poursuivre

Dans l'étape suivante, nous apprendrons à configurer les mesures pour organiser ces échantillons en un rythme.

Suivant: [Configuration de la signature temporelle](../setting-up-time-signature)