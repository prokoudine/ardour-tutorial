---
title: Creation de pistes et de bus
description: Lancement d'Ardour sur Ubuntu Linux, premiers pas
weight: 3
cascade:
  type: docs
---

## Que sont les pistes ?

Une piste représente généralement une partie jouée par un instrument ou chantée par une voix. Cette partie peut commencer au tout début et se terminer à la toute fin de la chanson, ou il peut y avoir plusieurs occurrences de cet instrument/cette voix dans un morceau, auquel cas il y aura probablement plusieurs _régions_, ou _clips_ à l'intérieur d'une piste.

Une région est simplement une portion de données audio ou MIDI. Par exemple, une piste 'Lead guitar' peut avoir plusieurs régions, une pour chaque solo. En revanche, une piste "Drums" (batterie) pourrait n'être qu'une énorme région MIDI couvrant l'ensemble du morceau.

Une piste _audio_ est généralement autonome car elle contient toutes les données nécessaires à la lecture de la musique. Une piste _MIDI_, en revanche, est constituée d'instructions qui doivent être interprétées et exécutées pour fournir un son réel à écouter.

Une région représente un clip audio, c'est-à-dire l'un de vos fichiers audio ou juste une partie d'un fichier audio. Dans l'image ci-dessous, les zones de bande horizontale marquées "*MyTrack*" et "*short-drone-mono*" sont des pistes. Les rectangles contenant des informations audio sont appelés régions (par exemple, la région "*wheels-mono.1*" est contenue dans *MyTrack*).

{{< figure src="en/Ardour6_Tracks.png" alt="Pistes" >}}

## Que sont les bus ?

Un _bus_ est similaire à une piste, sauf qu'il ne contient pas ses propres régions.
Vous ne pouvez pas enregistrer directement dans un bus ni y faire glisser des régions. Cependant, vous pouvez ajouter des greffons à un bus, puis alimenter la sortie de plusieurs pistes dans ce bus (voir ci-dessous).

Un bus MIDI est similaire à un bus audio : pas de régions, juste le traitement du flux de données entrant et la sortie des données traitées.

La zone marquée _Master_ dans votre session est un exemple de bus. En général, chaque session possède un bus _Master_. Tous les fichiers audio à exporter de votre session sera envoyé vers le bus Master.

## Comment sont utilisés les pistes et les bus ?

Les _greffons_ de traitement audio et l'_automation_ peuvent être appliqués aux pistes et aux bus.

Les pistes audio peuvent être acheminées vers des bus. En fait, plusieurs pistes peuvent être acheminées simultanément vers un seul bus. Les bus sont traditionnellement utilisés comme un moyen pratique d'appliquer tout type de traitement de signal à plusieurs pistes à la fois. Par exemple, il peut être utile de diriger toutes les pistes contenant des sons de batterie vers un seul bus que vous appellerez "*bus de batterie*". Ensuite, si vous décidez que toutes vos pistes de batterie sont trop fortes, vous pouvez rapidement ajuster le niveau du "*bus de batterie*" plutôt que de plutôt que d'ajuster chaque piste séparée qui l'alimente.

Une autre utilisation d'un bus serait d'avoir un plugin de réverbération commun, de sorte que toute piste audio nécessitant l'effet de réverbération puisse être acheminée vers un seul bus.

## Ajouter des pistes et des bus

**Faites un clic droit** dans la zone vide située sous les pistes et les bus existants.
Alternativement, cliquez sur le menu `Piste > Ajouter une piste, un Bus, ou un VCA...` (raccourci **Ctrl+Shift+N** ). La fenêtre suivante apparaîtra:

{{< figure src="en/Ardour7_Add_Track_or_Bus.png" alt="Ajouter une piste" >}}

Ardour propose différents types de pistes en fonction du type de données qu'elles contiennent. Ce tutoriel ne traitera que des pistes et bus audio. (voir le [Manuel d'Ardour](http://manual.ardour.org/working-with-tracks/track-types/) pour plus de détails sur tous les types de pistes ou leur brève explication dans une section ci-dessous).

Choisissez _Pistes audio_ ou _Bus audio_ pour spécifier si vous souhaitez créer des pistes ou des bus audio.

La zone de saisie numérique _Add_ vous permet de spécifier le nombre de pistes (ou de bus) que vous souhaitez créer.

Vous pouvez éventuellement donner un _Nom_ à la piste ou au bus à créer. Le menu déroulant _configuration_ vous permet de spécifier le nombre de canaux audio que vous souhaitez pour la nouvelle piste ou le nouveau bus. Par exemple, si vous allez enregistrer votre voix sur cette piste à l'aide d'un seul microphone, choisissez _Mono_. Si vous prévoyez d'importer un clip d'un morceau existant et de le placer sur cette piste, choisissez _Stereo_. Le choix effectué ici affectera également les plugins que vous pouvez utiliser sur la piste (les pistes mono ne peuvent pas utiliser la stéréo).

> [!NOTE]
> Lorsque vous créez une nouvelle piste MIDI, le nom est automatiquement tiré de l'instrument virtuel que vous choisissez par défaut.

Le menu _Position_ vous permet de choisir où vous voulez placer la nouvelle piste ou le nouveau bus : en premier, en dernier, avant ou après l'instrument virtuel.

Vous pouvez ignorer les autres options pour l'instant. Pour en savoir plus sur chacune d'entre elles, consultez [cette page du manuel complet d'Ardour](http://manual.ardour.org/working-with-tracks/adding-tracks-and-busses/).

Cliquez sur le bouton **Add and Close** pour créer les pistes ou les bus que vous venez de configurer, et fermer automatiquement la fenêtre _Add Track_. Les pistes que vous venez de créer apparaîtront comme de nouvelles lignes dans le canevas principal. Si vous souhaitez ajouter plusieurs pistes avec une configuration différente, optez pour **Add selected items (et laisser la boîte de dialogue ouverte**) à la place.

## Autres types de voies et de bus

Lorsque vous ajoutez des pistes et des bus à votre projet, d'autres options sont disponibles.

**Les bus foldback** sont conçus pour les mixages de monitoring de scène où vous pourriez vouloir donner à chaque interprète un mixage personnalisé qui va directement dans son oreillette.

Par exemple, plus de section rythmique et moins de section de cuivre dans le mixage d'un guitariste solo. [Voir ici](https://manual.ardour.org/ardours-interface/foldback-strip/) pour plus de détails.

Les **VCA masters** sont une autre façon de regrouper les pistes. Ces bandes de mixage fournissent un seul fader pour plusieurs pistes. Veuillez vous référer au [manuel de l'utilisateur](https://manual.ardour.org/ardours-interface/control-masters/) pour plus d'informations.

**Poursuivre**

Une fois que vous avez ajouté une ou plusieurs pistes, vous souhaitez y placer du matériel audio pour travailler. Passez aux chapitres **Importer de l'audio** et **Enregistrer de l'audio** pour apprendre comment faire.
