---
title: Créer des scections en boucles
description: Créer et combiner des régions dupliquées dans Ardour
weight: 8
cascade:
  type: docs
---

Vous pouvez facilement répéter des sections audio dans votre session Ardour.

Ici, nous prenons le court passage rythmique que nous avons créé dans _Working with Regions_ et nous le dupliquons pour en faire une boucle.

Avant de dupliquer le passage, il est conseillé de combiner les régions individuelles de la même piste en une seule. Il est plus facile de les déplacer de cette façon et cela vous évite de déplacer accidentellement un seul hihat hors de sa place, par exemple.
Il y a deux façons de procéder : _Combiner les régions_ (permet de les "décombiner" plus tard) et _Consolidate Range_ ("inscrit dans la pierre", ne permet pas de les séparer ultérieurement).

Si vous prévoyez toujours d'apporter des modifications au rythme (ajout, suppression ou déplacement des régions individuelles), il peut être préférable d'utiliser l'option _Combine_ regions pour combiner les régions. Si vous aimez la séquence telle qu'elle est et que vous ne voulez pas ou ne vous souciez pas d'avoir la possibilité de les séparer plus tard, utilisez l'option _Consolidate Range_ (consolider les régions).

## Combiner les régions

Sélectionnez simplement toutes les régions que vous souhaitez combiner :

{{< figure alt="combine" src="en/ardour7-combine-regions-1.png" >}}

Ensuite, allez dans le menu `Région > Editer > Combiner` (ou faites un clic droit sur les régions sélectionnées et trouver la même option dans le menu contextuel, comme indiqué ci-dessous) :

{{< figure alt="combine2" src="en/ardour7-combine-regions-2.png" >}} 

Les régions combinées ressembleront à ceci (notez le mot "compound" ajouté à nom) :

{{< figure alt="combine4" src="en/ardour7-combine-regions-3.png" >}} 

Si vous avez besoin de les séparer à nouveau à l'avenir, il vous suffit de sélectionner la région composée et d'aller dans le même menu et de choisir l'option _Uncombine_. 

## Consolidation de la plage

Une alternative plus permanente à la fonction _Combine_ consiste à utiliser la fonction _Consolidate_.
Lorsque vous avez organisé vos régions en un seul "cycle de boucle" et que vous êtes satisfait du son, créez une _gamme_ avec toutes les régions qui constitueront la boucle.

Tout d'abord, assurez-vous que toutes les pistes utilisées dans la boucle sont sélectionnées. Les pistes non sélectionnées sont grises et les pistes sélectionnées sont colorées (en fonction du thème de l'interface utilisateur). Si l'une des pistes utilisées ne sont pas sélectionnées, maintenez la touche **Maj** enfoncée pour les ajouter au groupe sélectionné. Enfin, utilisez l'outil Plage pour sélectionner l'ensemble de la boucle. 

Une fois de plus, le paramètre _Grid_ vous aidera à définir la plage précisément aux points de départ et d'arrivée de votre boucle métrique. Une fois la boucle entière sélectionnée, cliquez avec le bouton droit de la souris sur la plage et sélectionnez _Consolider la plage_. Si vous souhaitez inclure les effets d'automatisation ou de plugin que vous avez ajoutés à la boucle, sélectionnez _Consolider la plage avec traitement_.

{{< figure alt="consolidate" src="en/ardour7-consolidate-range-1.png" >}} 

Lorsque la plage est consolidée, de nouvelles régions apparaissent dans chaque piste, chacune d'entre elles contenant toutes les répétitions des échantillons que vous avez mis en place dans les étapes précédentes. N'oubliez pas qu'une fois la plage consolidée, il n'est pas possible d'annuler cette opération. Dans tous les cas, si vous avez besoin de modifier le rythme d'une manière ou d'une autre, vous pouvez toujours récupérer les échantillons de la plage dans la liste des régions et reconstruire le motif avec eux.

{{< figure alt="consolidate2" src="en/ardour7-consolidate-range-2.png" >}}

## Duplication de la plage

Après avoir fusionné les régions individuelles qui forment votre motif (en utilisant soit _Combine_ soit _Consolidate)_), il est temps de dupliquer le motif pour le faire tourner en boucle sur plusieurs mesures.

La fonction _Multi-Duplicate_ (vue dans la section [travail-avec-les-regions](../working-with-regions/)) est un bon moyen d'y parvenir.
Revenez en mode _Grab_ (**G**), sélectionnez toutes les régions, et appuyez sur **Maj+D**. Choisissez le nombre de fois que vous souhaitez dupliquer le motif (par exemple, 16). Après la duplication, notre session ressemble à ceci :

{{< figure alt="multi-dup" src="en/ardour7-multi-duplicate.png" >}} 

Pour rappel, les autres options que vous auriez pu utiliser pour la duplication sont les suivantes :

- La commande _Fill Track_ du menu `Région > Duplicate > Fill Track`. Cette commande remplirait la piste entière avec des copies des régions sélectionnées, jusqu'au marqueur de fin. 

- La commande _Duplicate_ du même menu (**Alt+D**). Cette commande
permet de faire une seule copie à la fois. 

- L'action unique de duplication avec **Ctrl+Clic** sur la région + _Glisser une copie_.

## Poursuivre

Dans le prochain tutoriel, nous apprendrons à étirer/réduire les régions qui sont plus longues ou plus courtes qu'une mesure afin de s'adapter au rythme de notre passage.

Suivant : [ETIRER ET REDUIRE LES REGIONS](../stretching-shrinking-regions)