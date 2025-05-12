---
title: Changer les modes d'édition
description: Modes d'édition pour les régions dans Ardour
date: 2025-02-25T00:41:04+03:00
weight: 7
cascade:
  type: docs
---

Nous avons déjà appris quelques notions sur le mode _Grab_ (sélectionner/déplacer des objets) et le mode _Range_.
Dans ce chapitre, nous allons avoir une vue d'ensemble de tous les _modes d'édition_ et _modes de curseur_ disponibles dans cette partie de la fenêtre de l'_Éditeur_.

![Modes d'édition Ardour](en/ardour8-edit-modes.png?width=30vw)

## Modes d'édition

Ces commandes définissent le comportement du canevas principal et les différentes fonctions du curseur.

Le menu déroulant du mode d'édition contient trois options :

**Mode diapositive** (slide)
: Il s'agit du mode standard. Il vous permet de faire glisser librement des régions
horizontalement (au sein d'une même piste) et verticalement (entre les pistes).

**Mode ondulation**
: Déplace automatiquement les régions lorsque vous coupez ou déplacez l'une d'entre elles. Par exemple, si
si vous coupez une partie d'une interview audio qui n'est pas intéressante, Ardour décalera toutes les régions de toutes les pistes vers la gauche afin qu'il n'y ait pas de silence à l'endroit où se trouvait le contenu.

**Mode de verrouillage**
: Même si vous éditez une région avec ce mode, le contenu de la région sera toujours là où il est. Vous pouvez uniquement déplacer la région vers le haut ou vers le bas entre les pistes, mais pas vers la gauche ou la droite.

Nous n'utiliserons que le mode d'édition _Slide_ dans ce tutoriel.

## Point d'édition

Le point d'édition définit l'endroit où se déroulent les différentes opérations d'édition.
Pour couper/découper par exemple...

**Tête de lecture**
: Les régions seront divisées à la position de la tête de lecture.

**Marker**
: Les régions seront divisées au niveau du dernier marqueur situé dans la plage
de la région sélectionnée.

**Souris**
: La région sélectionnée sera divisée exactement sous le pointeur de la souris.

## Modes de curseur

### Mode de saisie

![G](en/ardour8-grab-edit-mode.png?width=20vw)

Ce mode de curseur (raccourci **G**) vous permet de sélectionner ou de déplacer des objets tels que des régions et des points d'arrêt (dans une courbe d'automatisation). Lorsque ce mode de curseur est sélectionné, le pointeur du curseur ressemble à une petite main.

## Mode plage

![R](en/ardour8-range-edit-mode.png?width=20vw)

Ce mode de curseur (raccourci **R**) vous permet de cliquer et de faire glisser pour définir ou
redimensionner des plages de temps.  Lorsque ce mode de curseur est sélectionné, le pointeur de votre curseur ressemble à une ligne verticale. Les plages de temps peuvent être sélectionnées sur une ou plusieurs pistes, en fonction de la sélection de vos pistes.

## Mode intelligent

![3](en/ardour8-smart-mode.png?width=20vw)

Lorsque ce mode est activé, en fonction de l'endroit exact au-dessus de la région où se trouve le pointeur de la souris, Ardour fournira soit des fonctions de saisie (par exemple, saisir
et relocaliser une région), soit des fonctions de plage (sélectionner une plage).

### Mode coupe

![C](en/ardour8-cut-edit-mode.png?width=20vw)

Utilisez ce mode de curseur (raccourci **C**) pour diviser des régions en régions plus petites. Le curseur prend la forme de ciseaux. Cela vous permet de pointer et de cliquer sur une région pour la diviser au niveau du curseur.

{{< callout type="info" >}}
Vous pouvez également couper des régions directement à partir du mode _Grab_ (cette méthode est parfois plus pratique). Sans quitter le mode _Grab_, placez simplement la souris à
l'endroit souhaité sur la région à couper, et appuyez sur le raccourci **S** (pour
"split"). Important : votre point d'édition (à gauche de la barre d'outils _Modes_) doit
être réglé sur _Souris_.
{{< /callout >}}

### Étirer/réduire la région

![T](en/ardour8-stretch-shrink-edit-mode.png?width=20vw)

Ce mode de curseur (raccourci **T**) vous permet de faire glisser et de redimensionner la durée d'une région entière sans modifier la hauteur. On parle parfois d'"étirement du temps", d'où le raccourci **T**. Voir le chapitre sur _Étirer et réduire les régions_ pour plus de détails. Lorsque ce mode de curseur est sélectionné, le pointeur du curseur ressemble à une flèche diagonale.

### Mode dessin

{{< figure alt="D" src="en/ardour8-draw-edit-mode.png" >}}

Ce mode (raccourci **D**) a 4 cas d'utilisation :

1. Dessiner de nouveaux points d'automatisation (l'automatisation sera discutée en détail dans la section [Utiliser l'automatisation](../../mixing-sessions/using-automation/)).
2. Dessiner de nouvelles régions MIDI.
3. Dessiner de nouvelles notes MIDI dans les régions MIDI.
4. Modification des notes MIDI et des points d'automatisation existants lorsqu'une région est suffisamment zoomée.

Si vous n'avez pas suffisamment zoomé, il est facile de créer une nouvelle note MIDI ou un nouveau point d'automatisation dont vous n' n'aviez pas besoin. Si cela devient un problème, vous devriez utiliser le mode suivant qui ne permet que d'éditer les points et notes existants, et non d'en créer de nouveaux.

Pour dessiner des notes MIDI, la barre d'outils dispose également de contrôles pour la longueur de la note par défaut, le canal MIDI et la vélocité.

### Mode d'édition interne

![E](en/ardour8-internal-edit-mode.png?width=20vw)

Utilisez ce mode (raccourci **E**) pour éditer les points d'automation existants ou les notes MIDI.

Pour les points d'automation, le curseur ressemble à une main et se transforme en une petite croix lorsque vous êtes au-dessus d'un point existant. Cliquez, maintenez et faites glisser pour déplacer les points.

Pour les notes MIDI, le curseur ressemble à une main surmontée d'une noire lorsque vous survolez le milieu de la note.
Cela permet de sélectionner une note et de la déplacer. Si vous survolez le bord gauche ou droit d'une note, le curseur change et permet d'ajuster la position de début/fin (et donc la durée) d'une note.

Pour les points d'automation et les notes MIDI, vous pouvez appuyer sur **Ctrl** et cliquer sur plusieurs éléments pour les ajouter à la sélection, puis déplacer plusieurs notes ou points.

{{< figure src="en/ardour7-internal-edit-mode-multiple-points.png" alt="Déplacer plusieurs points d'automation" >}}

Pour les notes MIDI en particulier, vous pouvez également utiliser la sélection élastique : placez le curseur n'importe où à l'extérieur des notes existantes (le curseur perdra le symbole de la noire), puis appuyez sur le bouton gauche de la souris et commencez à faire glisser le curseur. Un cadre de sélection apparaît. Toutes les notes qu'il touche seront sélectionnées.

{{< figure src="en/ardour7-internal-edit-mode-rubberband-selection.png" alt="Rubberband selection of notes" >}}

## Poursuivre

Dans le chapitre suivant, nous verrons comment prendre les régions que nous avons éditées et comment créer des sections bouclées à partir de celles-ci.

Suivant : [CREER DES SECTIONS EN BOUCLE](creating-looped-sections/)
