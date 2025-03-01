---
title: Exporter une session
description: Comment exporter une session dans Ardour
weight: 1
cascade:
  type: docs
---

_Exporting_ est le processus d'enregistrement d'une région, d'une piste ou d'une session entière dans un fichier sur votre ordinateur que vous pouvez écouter, graver sur un CD-R ou convertir en MP3 pour le partager sur un site web.

## Exporter la session entière

Lorsque vous avez terminé votre composition, l'opération d'exportation la plus courante consiste à exporter l'ensemble de la session vers un fichier audio.

### Vue d'ensemble de la session

À ce stade, il est conseillé de faire un zoom arrière et d'examiner l'ensemble de la session avant d'exporter.

* Selectionnez "All" depuis le menu "Number of visible tracks" :

{{< figure alt="hauteur des pistes" src="en/ardour7-track-height.png" >}}

* Cliquez sur le bouton **Zoom to Session** (le troisième bouton des options de zoom):

{{< figure src="en/ardour7-session-zoom-all.png" alt="options de zoom" >}}

* Vous devriez maintenant avoir une belle vue d'ensemble de la session entière, comme ceci :

{{< figure alt="vue d'ensemble" src="en/ardour7-birds-eye-view.png" >}}

Écoutez votre pièce une dernière fois pour être sûr vous entendez tout de la manière dont vous voulez que ce soit entendu (tous les **Solo** ou boutons **Mute** que vous avez oublié de désactiver ? Tous les ajustements de volumes qui restent à faire ? etc.)

#### Marquers Début et Fin

Pour finir, assurez vous que les marqueurs de la ligne de marqueurs de la ligne de temps _start_ et _end_ sont placés au bon endroit.

Tout ce qui est présent entre les marqueurs _start_ et _end_ seront exportés, vos devez donc régler les marqueurs en premier s'il ne sont pas correctments palcés. Dans l'image ci-dessous, le marqueurs de _end_ est trop loin sur la droite de la ligne temporelle. Il en resultera un très long silence après la fin de votre pièce (qui se trouve entre la dernière région et le marqueur de _end_).

{{< figure src="en/ardour7-end-marker-too-far.png" alt="Le marqueur de fin est trop loin !" >}}

Si votre marqueur de _end_ est trop loin après la fin de votre pièce, cliquez et glissez le vers la gauche jusqu'à ce qu'il soit très proche de la toute dernière région de votre composition.

## Exportez la !

Pour exporter une session, utilisez le menu principal :
`Session > Export > Export to Audio File(s)...`. Cela ouvrira une boîte de dialogue avec un certain nombre d'options.

{{< figure alt="Boîte de dialogue Exporter une session" src="en/ardour7-exporting-settings.png" >}}

**Preset** :
Ce n'est *PAS* là que vous renseignez le nom du fichier. Ne vous préoccupez pas de ce champ pour l'instant.

**Format** :
Cela vous permet de choisir le format de fichier (WAV, MP3, OGG, FLAC, etc.). Le format par défaut est le CD (Red Book), ce qui vous donnera un fichier WAV 16 bits avec un taux d'échantillonnage de 44,1 kHz.

**Add another format** :
Si vous souhaitez exporter dans plusieurs formats à la fois, cliquez sur cet onglet.

**Location** :
C'est l'endroit où vous trouverez le fichier après l'avoir enregistré. Par défaut, il se trouve dans le dossier `export` qui se trouve dans le dossier principal de la session. Vous pouvez également cliquer sur **Browse** et sélectionner le Bureau, par exemple.

**Label** :
C'est ici que vous pouvez créer un nom unique pour le fichier. Ardour ajoutera automatiquement le nom de la session au fichier exporté.
Si vous n'écrivez rien ici, le nom peut devenir quelque chose de générique comme `ma-session.wav`. Utilisez ce champ pour donner un nom unique à votre fichier.

Après avoir choisi vos options, cliquez sur **Export**. Une fois l'opération terminée, vous pouvez retrouver le fichier à l'aide de votre navigateur de fichiers.

> [!NOTE]
> L'exportation est gérée par le bus Master, de sorte que le fichier final comprendra tous les sons des pistes et des bus qui ont été routés vers lui. Cela comprendra tous les éléments de normalisation, fondu, panoramique et automatisation que vous avez créés, ainsi que les modifications individuelles apportées aux régions. Si l'une des pistes possède l'option **Mute** ou **Solo**, cela affectera également les pistes qui seront entendues dans le fichier exporté.

## Normalisation

Il arrive que le son rendu soit trop fort ou trop faible pour répondre aux exigences des services de diffusion en continu comme YouTube ou Spotify. Ardour fournit un outil appelé _Loudness Assistant_ pour aider à cela.

En termes simples, il analyse tout ce qui passe par le bus _Master_, estime le niveau sonore du signal, puis suggère de le corriger vers le haut ou vers le bas de manière à ce que le niveau sonore global soit à peu près correct pour tel ou tel service de streaming populaire.

Bien que vous puissiez appliquer la correction de l'intensité sonore (gain) directement à la sortie du bus _Master_ et bénéficiez d'un contrôle plus manuel sur le résultat, la méthode la plus pratique consiste à appliquer la normalisation au niveau du bus _Master_ à l'étape de l'exportation.
Vous pouvez le faire en appliquant une correction d'intensité (gain) directement à la sortie du bus de deux façons :

1. Cliquez simplement  sur un des service populaire de la liste déroulante sous _Formats_. Ardour a des préréglages pour Apple Music, Deezer, Spotify, YouTube etc.

2. Si le service n'est pas listé dans les préréglages, cliquez sur le bouton **Edit** pour ouvrir la boîte de dialogue avec les paramètres avancés d'exportation, cochés _Normalize_, choisissez _Loudness_ au lieu de _Peak_, et enfin réglez la valeur LUFS désirée.

{{< figure src="en/ardour7-edit-exporting-format.png" alt="Editer le format d'exportation" >}}

**Poursuivre**

A la fin de ce chapitre, vous disposez d'un mixage stéréo exporté représentant l'ensemble de votre session.
Vous voudrez peut-être aussi savoir comment exporter des régions individuelles ou des plages sélectionnées de votre session.
Ceci sera brièvement abordé dans les deux chapitres suivants.