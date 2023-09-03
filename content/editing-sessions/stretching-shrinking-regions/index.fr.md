+++
title = "Etirer et réduire les régions"
description = "Etirer et réduire les régions dans Ardour"
chapter = false
weight = 9
+++

Les régions peuvent être allongées ou rétrécies sans que leur hauteur ne soit modifiée en utilisant l'outil _Etirer/Rétrécir les régions_ (raccourci **T**, pour "Time-stretch").

![Stretch/Shrink Regions tool](en/ardour7-stretch-shrink-edit-mode.png?width=20vw)

Un petit ajustement de la longueur d'une région peut ne pas causer d'artefacts sonores perceptibles. Cependant, plus la modification de la longueur est importante, plus l'effet du traitement sur le son est évident.

Pour utiliser la fonction _Stretch/Shrink Regions_, placez votre curseur au-dessus de la région, puis cliquez-glissez vers la gauche ou vers la droite. Pendant le déplacement, vous verrez une zone en surbrillance qui représente la nouvelle durée à laquelle la région sera réduite ou étirée lorsque vous relâcherez la souris à la position actuelle. Ardour affichera également la nouvelle durée de la région à côté de la zone en surbrillance en unités de l'horloge primaire.

{{< figure src="en/ardour7-stretch-shrink-highlight.png" alt="Stretching highlight" >}}

## Extension temporelle d'une région pour l'adapter à la boucle

Dans l'image ci-dessous, nous avons ajouté un autre échantillon sonore - cette fois-ci, un [synthétiseur de freesound.org](https://freesound.org/people/walkerbelm/sounds/1168/) au passage rythmique que nous avons composé dans le chapitre _Création de sections bouclées_.

Après avoir importé cette ligne de synthétiseur, vous constaterez que la longueur de la nouvelle région ne correspond pas au rythme existant que nous avons déjà créé. Elle est trop longue pour être une mesure et trop courte pour être deux mesures. Plus important encore, bien que la première note corresponde le début du son de la grosse caisse ci-dessus, la seconde note est clairement décalée à contretemps.

{{< figure src="en/ardour7-stretch-shrink-1.png" alt="Non-matching regions" >}}

Nous pouvons corriger ce problème en utilisant l'outil _Stretch/Shrink_. Sélectionnez la région que vous souhaitez étirer, passez à l'outil, cliquez sur le côté droit de la région, puis faites glisser le curseur jusqu'à ce que la zone de surbrillance nouvellement créée corresponde à la nouvelle longueur, c'est-à-dire jusqu'à la deuxième mesure (toujours avec l'aide des paramètres de la _Grille_).

{{< figure src="en/ardour7-stretch-shrink-action.png" alt="Stretching" >}}

Lorsque vous relâchez le bouton de la souris, la boîte de dialogue _Time Stretch Audio_ apparaît. Vous pouvez expérimenter différents paramètres pour l'opération _Time Stretch_. Chacun d'entre eux affectera le son d'une manière différente. C'est une bonne idée d'essayer différents paramètres d'étirement pour trouver celui qui vous donne le résultat le plus satisfaisant.

![Boîte de dialogue Time Stretch Audio](en/ardour7-stretch-shrink-2.png?width=30vw)

Cliquez sur **Stretch/Shrink** dans la boîte de dialogue _Time Stretch Audio_ pour lancer l'opération.

Lorsque l'opération est terminée, la région de la ligne de synthétiseur a maintenant une longueur de deux mesures exactement deux mesures et devrait s'adapter au rythme que nous avons déjà créé avec les avec les échantillons de batterie.

{{< figure src="en/ardour7-stretch-shrink-3.png" alt="Stretched audio region" >}}

## Poursuivre

Parlons maintenant de l'édition des régions MIDI.

Suivant : [EDITION DES RÉGIONS MIDI](../editing-midi-regions/)