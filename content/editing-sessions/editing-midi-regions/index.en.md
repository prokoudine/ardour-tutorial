+++
title = "Editer des régions MIDI"
chapter = false
weight = 10
+++

La quasi-totalité de l'édition MIDI se fait dans le mode _Internal Edit_ (**E**).
La grande majorité du travail consiste à modifier la position et la durée des notes, à ajuster la vélocité et à éditer l'automatisation. Ardour fournit des outils pour éditer ces paramètres à la fois de manière interactive et numérique.

Passons donc en revue les outils disponibles, puis faisons un exercice rapide.

La plupart de l'édition suppose d'avoir au moins une note sélectionnée dans une région MIDI.
Nous commencerons par la sélection des notes.

## Sélectionner des notes

Il y a plusieurs façons de sélectionner des notes dans le mode _Internal Edit_, cela dépend vraiment de ce que vous voulez faire.

Pour sélectionner une note, il suffit de cliquer dessus. Pour ajouter une autre note à la sélection, appuyez sur **Ctrl** et maintenez-le enfoncé, puis cliquez sur cette note. Pour supprimer une note de la sélection, maintenez la touche **Ctrl** enfoncée, puis cliquez sur la note.

Si vous devez étendre une sélection existante à une autre note et inclure toutes les notes situées entre les deux, appuyez et maintenez la touche **Ctrl** enfoncée, puis cliquez sur la note à laquelle vous voulez étendre la sélection.

Pour sélectionner plusieurs notes adjacentes, vous pouvez effectuer une sélection élastique classique. Déplacez le pointeur de la souris sur une partie vierge du canevas qui est proche de ces notes, appuyez sur le bouton gauche de la souris et maintenez-le enfoncé, puis faites glisser la souris pour "dessiner" une zone rectangulaire. Toutes les notes situées à l'intérieur de cette zone seront sélectionnées. Relâchez le bouton pour terminer la sélection.

{{< figure src="en/rubberband-selection.png" alt="Rubberband selection" >}}

Enfin, si vous souhaitez sélectionner toutes les notes, appuyez simplement sur **Ctrl+A**.

Une fois que vous avez sélectionné plusieurs notes, vous pouvez les éditer en masse de différentes manières.

## Modifier le début et la fin des notes

Pour modifier le début ou la fin d'une note, survolez un bord de la note jusqu'à ce que vous voyiez le pointeur de la souris changer d'icône. Appuyez ensuite sur le bouton gauche de la souris et maintenez-le enfoncé. Faites glisser la souris vers la gauche ou la droite pour modifier, relâchez le bouton de la souris pour confirmer la modification.

Les options d'accrochage s'appliquent ici, lorsque l'accrochage est activé. De plus, si plusieurs notes sont sélectionnées, elles seront toutes réduites ou étendues.

{{< figure src="en/drag-note-ends.png" alt="Drag note ends" >}}

La quantification consiste à ajuster les temps de début et de fin des notes de manière à les faire correspondre à une grille de notes de manière à ce qu'elles s'alignent sur une grille de votre choix. C'est quelque chose que vous utiliserez probablement après l'enregistrement en temps réel. Ardour offre une certaine flexibilité lors de l'application de la quantification. Vous pouvez fixer à la grille uniquement les débuts, uniquement les fins, ou les deux.

Une autre commande qui ajuste efficacement la durée des notes est _Legatize_.
Lorsque vous avez deux notes qui commencent à des positions différentes sur la ligne de temps, la fin de la note qui commence plus tôt de façon à ce qu'elle se termine exactement à l'endroit où la seconde note commence. Cela peut se traduire par une extension ou une réduction de la durée de la note antérieure :

{{< figure src="en/legatize.png" alt="legatize" >}}

Comme vous pouvez le voir, la première note est élargie pour rejoindre la deuxième, et la deuxième est réduite pour rejoindre la troisième et la troisième est développée pour rejoindre la quatrième.

## Décalage et transposition des notes

Vous pouvez décaler et/ou transposer les notes sélectionnées en appuyant simplement sur les touches fléchées de votre clavier.
Vous pouvez également placer le curseur au milieu de l'un des nœuds sélectionnés, appuyer sur le bouton gauche de la souris, le maintenir enfoncé et faire glisser la sélection vers la gauche/droite ou le haut/bas (ou les deux).

Vous pouvez également transposer d'un nombre donné d'octaves et de demi-tons en une seule fois.
Cliquez avec le bouton gauche de la souris sur la région où certaines notes sont sélectionnées, choisissez _Transposer..._. Spécifiez ensuite la quantité d'octaves et de demi-tons à transposer.

{{< figure src="en/transpose.png" alt="Transposer les notes MIDI" >}}

## Édition de la vélocité

Ardour utilise deux façons de représenter la vélocité d'une note : par un code couleur et par un graphique 2D.

{{< figure src="en/velocities.png" alt="Velocities" >}}

Plus la note est pâle et plus la ligne sombre à l'intérieur de la note est courte, plus la vitesse est faible. Une note rouge foncé et la ligne sombre qui la traverse entièrement signifient que la vélocité est à sa valeur maximale (ou presque).

Pour modifier rapidement la vélocité d'une note, survolez son milieu sur le canevas, puis commencez à faire défiler la molette de la souris vers le haut et vers le bas pour modifier la valeur de la vélocité. Lorsque plusieurs sont sélectionnées, chacune recevra la même quantité d'ajustement. Ainsi vous pouvez sélectionner, disons, 3 notes à 25, 50 et 100 valeurs de vélocité respectivement, incrémenter chacune d'entre elles de 20, et obtenir des notes dont la vélocité est de 45, 70, et 120 pour la vélocité.

{{< figure src="en/velocity-tooltip.png" alt="Velocity tooltip" >}}

Un moyen simple de modifier numériquement la vélocité (ainsi que le canal MIDI, la hauteur et la position) est d'utiliser les paramètres la boîte de dialogue des propriétés de la note. Cliquez avec le bouton droit de la souris sur une ou plusieurs notes, puis sélectionnez _Editer_.

![Édition des propriétés de la note](en/note-properties.png?width=45vw)

Si plusieurs notes ont été sélectionnées, vous pouvez les modifier en masse pour leur donner la même valeur. Pour cela, activez l'option _Set selected notes to this velocity_ avant d'appliquer les changements.

## Exemple d'édition du début à la fin

Jetons un coup d'œil à cette capture rapide de performance en temps réel.

{{< figure src="en/example-original.png" alt="" >}}

Même sans l'écouter, quelques éléments ressortent :

- des heures de départ erronées ;
- durées erronées ;
- une vélocité qui n'a pas lieu d'être.

Corrigeons tout cela et commençons par les positions et les durées.

1. Appuyez sur **E** pour passer en mode _Édition interne_.
Sélectionnez toutes les notes visibles à l'aide d'un élastique.

{{< figure src="en/example-select-all.png" alt="" >}}

2. Cliquez avec le bouton droit de la souris et sélectionnez _Quantize_ (ou appuyez simplement sur **Q**). Utilisez _1/8 Note_
ou _Main Grid_ pour le début et la fin des notes, car dans ce cas, c'est la même chose.
même chose.

{{< figure src="en/example-quantize-dialog.png" alt="" >}}

C'est déjà beaucoup mieux :

{{< figure src="en/example-quantize-result.png" alt="" >}}

Mais il y a quelques notes qui se chevauchent.

3. Cliquez avec le bouton droit de la souris et sélectionnez _Legatize_.

{{< figure src="en/example-legatize.png" alt="" >}}

4. Appuyez une seule fois sur la touche **Flèche gauche** pour décaler toutes les notes sélectionnées d'une unité de grille (c'est _1/8 Note_) pour qu'elles commencent au début de la mesure :

{{< figure src="en/example-shift-left.png" alt="" >}}

Les positions sont toutes correctes maintenant. Mais ce n'est pas tout.

5. Il est temps de nettoyer la vélocité. Sélectionnez toutes les notes sauf la première dans chacune des deux mesures. Vous pouvez le faire en appuyant sur **Ctrl+A**, puis en maintenant **Ctrl** enfoncé et en cliquant sur la première note de chaque mesure pour les désélectionner. Vous pouvez également sélectionner la première partie (sans la première note), puis appuyer et maintenir la touche **Maj** et ajouter la deuxième partie (sans la première note de cette mesure également).

{{< figure src="en/example-select-all-but-firsts.png" alt="" >}}

6. Cliquez avec le bouton droit de la souris et sélectionnez _Transformer_. Nous devons régler ceci à plus ou moins la même vélocité, disons 60. Nous définissons donc la vélocité, nous la fixons à une valeur exacte, et nous utilisons 60 :

{{< figure src="en/example-transform-all-60.png" alt="" >}}

Là encore, c'est beaucoup mieux :

{{< figure src="en/example-transform-all-60.png" alt="" >}}

Mais cela va sonner un peu trop robotique si nous continuons ainsi.

7. Appelons à nouveau la boîte de dialogue _Transform_ et ajoutons un tout petit peu de variation aléatoire :

{{< figure src="en/example-transform-variation-56-to-64.png" alt="" >}}

Étant donné la faible amplitude de la variation, la différence ne sera pas très visible. Mais si vous survolez des notes individuelles, vous verrez que les vélocité des notes se situent maintenant quelque part entre 56 et 64.

8. Enfin, cliquez sur la première note de la première mesure et utilisez le défilement de la molette de la souris pour régler sa vélocité sur 82, puis répétez l'opération pour la première note de la deuxième mesure. Vous avez maintenant un modèle de vélocité régulier où la première note de chaque mesure sonne plus forte que le reste des notes de chaque mesure.

{{< figure src="en/example-regular-velocity-pattern.png" alt="" >}}

## Suite

C'était le dernier chapitre de la section _Édition de régions_. Le prochain chapitre sera consacré à _Mixage_.

Suivant : [SESSIONS DE MIXAGE](../../mixing-sessions/the-mixer-strip/)