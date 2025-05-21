---
title: Utilisation des plages
description: Comment créer et éditer des sélections de plage dans Ardour
date: 2025-02-25T00:41:04+03:00
weight: 4
cascade:
  type: docs
---

Une _plage_ est une sélection de la ligne de temps qui peut inclure une ou plusieurs pistes. Elle a de nombreuses utilisations, comme la sélection d'une portion de données audio/MIDI pour la couper.

{{< figure src="en/ardour7-range-example.png" alt="Exemple de plage" >}}

## Créer des plages

Il existe deux méthodes communement utilisées pour créer des plages :

1. Vous pouvez le faire avec l'outil _Grab_ (raccourci **G**) lorsque le mode _Smart_ est activé. Dans ce cas, vous devez positionner le pointeur de la souris autour du milieu d'une piste verticalement pour commencer à sélectionner des données, plutôt que de choisir et de déplacer une région. Le pointeur de la souris ressemblant à une ligne verticale signifie que vous pouvez commencer la sélection.

2. Vous pouvez également utiliser l'outil dédié _Range_ (raccourci **R**). Dans ce cas, il suffit de cliquer et de glisser n'importe où sur le canevas pour commencer à sélectionner.

Vous pouvez sélectionner les données de plusieurs pistes à la fois, comme le montre la capture d'écran ci-dessus. Pour ce faire, il suffit de faire glisser le pointeur de la souris vers le haut ou vers le bas en traversant la frontière entre les pistes.

Lorsque le dock _Editor List_ est disponible, vous pouvez voir les propriétés de la plage en haut de celui-ci : les heures de début et de fin de la plaege ainsi que sa durée. Lorsqu'une plage est créé, l'onglet _Pistes & Bus_ sélectionnera également les pistes traversées par la plage.

![Propriétés des plages](en/ardour7-range-properties.png?height=60vh)

Il peut être utile de créer des plages qui s'alignent sur les bords des régions de votre ligne de temps. Pour ce faire, activez l'option _Snap_ dans la barre d'outils et sélectionnez _No Grille_ dans la liste déroulante située à côté.

![Accrochage aux limites de la région](en/ardour7-snap-to-region-boundaries.png?width=10vw)

## Edition des plages

Une fois que vous avez créé une plage, vous pouvez facilement modifier ses positions de départ et d'arrivée en survolant les limites de la plage avec le pointeur de la souris, en les saisissant et en les faisant glisser vers la gauche ou vers la droite.

{{< figure src="en/ardour7-editing-ranges.gif" alt="Editer des plages" >}}

Si vous avez oublié d'inclure une piste dans une plage, vous n'avez pas besoin de refaire la sélection de la plage. Il suffit de maintenir la touche **Ctrl** enfoncée et de cliquer sur l'en-tête de la piste dans le canevas.
Alternativement, maintenez **Ctrl** et cliquez sur le nom de la piste dans l'onglet _Tracks & Busses_ du dock _Editor List_.

{{< figure src="en/ardour7-adding-track-to-range.gif" alt="Ajouter une piste à un plage" >}}

## Lecture de plages en boucle

Pour revenir à notre exemple de passage rythmique, nous voudrons entendre le passage que nous composons, peut-être en boucle, pendant que nous déplaçons les échantillons.
Pour ce faire, nous devons créer une plage à écouter dans notre session, afin de pouvoir revenir à ce point précis de la session encore et encore.

{{< figure src="en/ardour7-loop-range-menu-command.png" alt="Lire en boucle l'plage dans le menu clic droit" >}}

Effectuez un zoom arrière si nécessaire (**-**) pour voir les barres complètes sur la ligne de temps. Utilisez l'outil _Range_ pour sélectionner une barre entière, puis cliquez avec le bouton droit de la souris à l'intérieur d'un plage et choisissez l'une des deux commandes suivantes : Loop Range (Boucle d'plage) dans le menu contextuel.
l'une des deux commandes :

1. La commande _Loop Range_ (sur la capture d'écran ci-dessus) permet de créer une boucle et de commencer à la jouer immédiatement.

2. _Set loop from selection_ pour ne créer que des marqueurs de boucle sans lecture
immédiate.

{{< figure src="en/ardour7-looped-range-playback.png" alt="Lecture d'plages en boucle" >}}

Tant que les marqueurs de boucle sont présents, vous pouvez commencer à lire en boucle cette partie de la ligne de temps à tout moment (sur la capture d'écran ci-dessus).
Pour ce faire, cliquez sur le bouton **Lecture en boucle** dans la barre d'outils _Transport_ ou appuyez sur le raccourci **L**.

![Bouton de boucle d'plage dans Transport](en/ardour7-play-loop-range-button.png?width=35vw)

Vous pouvez également modifier la position des marqueurs de boucle tout en jouant l'plage dans une boucle. Il suffit de saisir un marqueur et de le faire glisser vers la gauche ou vers la droite.

## Plus d'options d'édition pour les plages

Il existe d'autres opérations que vous pouvez effectuer sur les plages, toutes disponibles dans le menu du clic droit de la souris :

- _Separate_ (Séparer) coupe les régions originales aux limites de la plage.
- _Duplicate_ crée une copie de la plage et la place à partir du bord droit de la plage. Toutes les données existantes seront superposées, de sorte que vous pourrez toujours y accéder.
- L'option _Crop Region To Range_ (Découper la région en fonction de la plage) permet de découper les régions affectées en fonction de l'étendue de la plage.

Vous pouvez également inspecter les caractéristiques sonores et spectrales des données d'une plage ou exporter uniquement les données d'une plage plutôt que la session entière (Voir [Ce chapitre](../../exporting-sessions/exporting-a-range/) pour plus d'information sur l'export de plage).

## Poursuivre

Dans l'étape suivante, nous allons apprendre à travailler avec des régions pour composer un rythme avec ces échantillons.

Suivant : [TRAVAILLER AVEC LES REGIONS](../working-with-regions)
