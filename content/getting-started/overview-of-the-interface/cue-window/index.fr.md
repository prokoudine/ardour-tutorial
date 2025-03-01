---
title: Fenêtre Cue
description: Bases de la fenêtre cue d'Ardour
weight: 4
cascade:
  type: docs
---

La fenêtre _Cue_ fournit des outils pour mettre en place une performance en direct en utilisant Ardour. Nous n'allons pas utiliser _Cue_ dans ce tutoriel, il s'agit donc d'un rapide aperçu pour vous donner une idée de base de ce dont il s'agit.

## Éléments de l'interface utilisateur

L'interface utilisateur suit l'approche générale attendue par les utilisateurs d'autres d'autres applications ayant ce type de fonctionnalités.

{{< figure src="en/ardour7-cue-window-sections.png" alt="" >}}

Voici les principales parties de l'interface utilisateur :

1. Une grille de lanceurs de clips
2. Un navigateur pour les clips réutilisables
3. Les paramètres des clips

De gauche à droite, vous obtenez les pistes qui contiennent des clips (non visibles sur la timeline lorsque vous passez à la fenêtre _Editor_). De haut en bas, vous avez 8 rangées appelées scènes, de _A_ à _H_.

Le navigateur sur la droite permet de déposer facilement des clips préenregistrés sur des emplacements de clips pour les lire. Vous pouvez utiliser des clips audio et MIDI. Déposer un clip sur l'espace vide créera une nouvelle piste et remplira automatiquement le premier slot (scène _A_) avec ce clip.

Les paramètres ci-dessous permettent de personnaliser la façon dont un clip est lu, qu'il soit étiré pour correspondre à une certaine valeur de bpm, s'il déclenche la lecture d'un autre clip, etc.

## Flux de travail non linéaire

Le travail avec les lanceurs de clips est communément appelé flux de travail non linéaire, parce qu'il est basé sur la lecture en boucle de clips préenregistrés où il n'est pas nécessaire de passer directement de la scène A à la scène H.

Vous pouvez configurer vos lanceurs de clips de manière à ce qu'un clip dans la scène _B_ soit lu 4 fois, déclenche un clip dans la scène _A_ qui soit lu 2 fois, sauter ensuite sur un clip _C_ et le lit 6 fois puis revenir au clip _B_ qui répétera le cycle entier encore et encore jusqu'à ce que vous l'arrêtiez. Et tout cela sans sans jamais appuyer sur le bouton **Play** du transport pour lire un morceau du début à la fin.

## Combiner les flux de travail linéaires et non linéaires

Alors que vous pouvez jouer un morceau entier en direct sans jamais sortir de la fenêtre _Cue_ - surtout lorsque vous disposez d'un contrôleur de grille matériel et de tous les clips préenregistrés dont vous pourriez avoir besoin - vous pouvez intégrer des lanceurs de clips dans un flux de travail linéaire régulier dans la fenêtre _Editor_. Pour ce faire, vous devez ajouter des marqueurs _Cue Markers_ dans la ligne de temps .

Voici un exemple simple :

{{< figure src="en/ardour7-linear-and-nonlinear.png" alt="Combining linear and non-linear workflow" >}}

Ardour joue deux mesures d'une piste MIDI régulière qui utilise un instrument échantillonné, puis lance la scène _A_ à la mesure 3, la scène _B_ à la mesure 4, et arrête toutes les scènes à la mesure 5. Vous pouvez déclencher et arrêter des scènes à n'importe quel moment de votre projet, par ailleurs linéaire, autant de fois que vous le souhaitez.

**Poursuivre**

Maintenant que vous êtes familiarisé avec les fenêtres principales d'Ardour, passons à la section suivante où nous créons une nouvelle piste et importons un fichier audio.