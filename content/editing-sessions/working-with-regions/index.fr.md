---
title: Travailler avec les régions
description: Sélectionner, diviser, déplacer des régions dans Ardour
date: 2025-02-25T00:41:04+03:00
weight: 5
cascade:
  type: docs
---

Dans Ardour, les sections d'audio sont appelées _régions_. Pour composer le court passage rythmique sur lequel nous avons travaillé, nous devrons savoir comment _sélectionner_, _déplacer_, _séparer_ et _découper_ ces régions, ainsi que comment créer un fondu entrant ou un fondu sortant et créer des _crossfades_.
Certaines de ces options peuvent se produire à des _points d'édition_ spécifiques de la composition, ou en fonction du _meter_ musical que nous pouvons définir avec la _timeline_ et la _grille_.

## Sélectionner des régions

Le mode _Grab_ (raccourci **G**) est l'outil de sélection et de déplacement des objets. Il est situé juste en dessous du menu transport dans la fenêtre _Editor_ (la petite icône "main"). Vous utiliserez beaucoup cet outil dans votre travail sur Ardour.

![Outils objet](en/ardour7-grab-mode.png?width=30vw)

Lorsqu'il est actif, le pointeur de votre souris ressemble à une petite icône de main.

Essayez toutes les opérations ci-dessous pour vous entraîner :

- Cliquez sur la forme d'onde de la région pour la sélectionner faites-la glisser pour la déplacer (vers la gauche et la droite au sein de la même piste, mais aussi vers le haut et le bas sur d'autres pistes).

- Utilisez **Ctrl+Clic** pour créer et faire glisser une _copie_ de la région.

- Vous pouvez sélectionner plusieurs régions en maintenant la touche **Maj** enfoncée tout en cliquant sur chaque région que vous souhaitez sélectionner.
    
- Vous pouvez également faire glisser une boîte de sélection sur plusieurs régions pour les sélectionner toutes.

![Sélection d'objet](en/ardour7-object-selection.png?width=50vw)

- Déplacer plusieurs régions en même temps après les avoir sélectionnées. 

- Vous pouvez sélectionner simultanément plusieurs régions séquentielles sur une piste en maintenant la touche **Maj** enfoncée tout en sélectionnant la première et la dernière région de la séquence (copiez quelques régions sur la même piste pour essayer).

- Lorsque vous sélectionnez une seule région, assurez-vous de cliquer sur la section de forme d'onde de son rectangle. La bande inférieure portant le nom de la région est utilisée pour une autre action (voir la section action différente (voir la section _Trimming Regions_ ci-dessous).
    
- La touche **Suppr** permet de supprimer les régions sélectionnées.

- Les opérations standard de copier (**Ctrl+C**), couper (**Ctrl+X**) et coller (**Ctrl+V**)
fonctionnent également avec les régions. 

## Déplacement de régions

Lors du déplacement d'une région, un _timecode_ apparaît à l'écran en chiffres jaunes. Ce timecode est le point de départ de la région sur la ligne de temps. L'unité de ce timecode est la même que l'unité de l'horloge primaire que vous pouvez changer en faisant un clic droit sur l'horloge et en choisissant une nouvelle unité (_Minutes:Secondes_, _Bar:Beats_, etc).

Vous pouvez déplacer les régions horizontalement (latéralement) vers un autre point dans le temps sur la même piste, ou vous pouvez déplacer la région sélectionnée verticalement (vers le haut ou vers le bas) sur une autre piste.

Lorsqu'un ensemble d'une ou plusieurs régions est sélectionné, vous pouvez déplacer l'ensemble en faisant glisser la souris.

{{< callout type="info" >}}
Veillez à sélectionner la région dans sa section de forme d'onde, car la sélection de la zone de la barre de titre du bas est utilisée pour une action différente (voir _Découpage_ des régions ci-dessous).
{{< /callout >}}

## Duplication de régions

En plus de **Ctrl+Clic+Glisser** et du copier/coller standard, Ardour offre d'autres moyens pratiques de dupliquer des régions. Utilisez le mode _Grab_ (sélectionner/déplacer des objets) pour sélectionner une ou plusieurs régions, puis utilisez la fonction _Duplicate_ pour en faire une ou plusieurs copies (menu `Régions > Dupliquer`). Trois options sont disponibles :

- _Duplicate_ (raccourci **Alt+D**) : fait une copie de la région sélectionnée sur la même piste, immédiatement après l'original.

- Multi-Duplicate_ (raccourci **Shift+D**) : fait plusieurs copies de la région sélectionnée en une seule fois (même piste, en séquence). Vous pouvez spécifier le nombre de nombre de duplications.

- Remplir la piste : fait autant de copies de la région sélectionnée qu'il est nécessaire pour la piste entière, jusqu'au marqueur _End_ sur la ligne de temps. 

Dans la capture d'écran suivante, les régions ont été dupliquées à l'aide des méthodes ci-dessus.

{{< figure alt="Duplication" src="en/Ardour4_Region_Duplicate.png" >}} 

## Utilisation des points d'édition

Lorsque vous utilisez les commandes standard copier/couper/coller, où les régions seront-elles collées ?
L'emplacement exact est déterminé dans le menu déroulant.

![Point d'édition](en/ardour7-edit-point-menu.png?width=25vw)

Si _Souris_ est sélectionné comme point d'édition, la région copiée sera collée à la position actuelle de la souris.

Si _Tête de lecture_ est sélectionné comme point d'édition, la région copiée sera collée à la ligne rouge de la tête de lecture sur la même piste que la région originale.

Enfin, si _Marqueur_ est sélectionné comme point d'édition, la région copiée sera collée immédiatement après le _marqueur de localisation_ actuellement sélectionné.

## Marqueurs

Il est très utile de pouvoir marquer différents endroits d'une session pour une utilisation ultérieure lors de l'édition et du mixage.
Ardour propose plusieurs façons de le faire.
La méthode la plus courante est l'utilisation de _marqueurs de localisation_, qui définissent des positions dans le temps. 
 
Les marqueurs d'emplacement peuvent être ajoutés à la ligne de temps en cliquant avec le bouton droit de la souris sur la bande et en sélectionnant _Ajouter un nouveau marqueur de position_. Si vous ne voyez pas la bande _Marqueurs de localisation_, cliquez avec le bouton droit de la souris sur la ligne pour la rendre visible. Les marqueurs d'emplacement peuvent également être sélectionnés à l'aide de la souris et déplacés vers de nouvelles positions. Un clic droit sur un marqueur d'emplacement vous permet de le renommer, entre autres options. 

{{< figure alt="Marqueur d'emplacement" src="en/Ardour4_Location_Marker.png" >}} 

{{< callout type="info" >}}
Lorsque vous créez une nouvelle session, deux marqueurs d'emplacement sont automatiquement ajoutés par défaut. Il s'agit des marqueurs _start_ et _end_ que vous voyez dans la capture d'écran ci-dessus. Si vous ne voyez pas le marqueur _end_, effectuez un zoom arrière suffisant et vous le trouverez.
{{< /callout >}}

## Diviser les régions

Diviser une région signifie simplement diviser une région en deux régions indépendantes.
Il y a deux façons d'y parvenir :

* Vous pouvez utiliser le mode _Coupe_ (raccourci **C**) pour pointer et cliquer à l'endroit où vous voulez diviser ; ou

* Vous pouvez rester en mode _Grab_ et utiliser le raccourci **S** (pour "Split").
Dans ce dernier cas, le point auquel une région sera divisée dépend du point d'édition actuellement sélectionné. Si _Souris_ est le point d'édition sélectionné comme point d'édition actuel, sélectionnez une région et placez le curseur sur le point que vous souhaitez _Split_, puis tapez **S**" (comme si vous alliez dans le menu `Editer > Diviser la région`).

{{< figure alt="Split" src="en/Ardour4_Split_Region.png" >}}

Après avoir été divisée, la région unique d'origine devient deux régions indépendantes, avec un nouveau nom pour chacune, comme dans l'image ci-dessus. Les deux nouvelles régions sont désormais entièrement indépendantes. Vous pouvez les déplacer et les modifier séparément.

{{< figure alt="Split" src="en/Ardour4_Split_Region_Moved.png" >}}

Les régions peuvent également être divisées en utilisant la tête de lecture ou un marqueur comme point d'édition. 

Les régions divisées recevront un nom dérivé du nom original de sa région mère et vous le verrez apparaître dans votre liste de régions. Par exemple, dans l'image ci-dessus, vous voyez deux régions appelées _pink.15_ et _pink.16_, ce qui signifie qu'elles ont été divisées à partir d'une région parente appelée "pink" (non montrée dans l'image).

{{< callout type="info" >}}
La division des plages suivra les paramètres de votre grille. Par exemple, si vous avez une grille définie pour les temps, les divisions se produiront aux limites des temps. Si vous choisissez _Pas de grille_, les divisions se produiront à l'endroit où se trouve le point d'édition, indépendamment de la grille.
{{< /callout >}}

## Découpage des régions

Si vous déplacez le curseur près du bord gauche ou droit d'une région, vous verrez que le pointeur devient une flèche.
Cliquez sur l'une des extrémités de la région et faites-la glisser vers l'intérieur. La région sera raccourcie en conséquence. C'est ce qu'on appelle "rogner" la région. Les régions peuvent être rognées à partir du début de la région (glisser de la gauche vers la droite sur le bord) ou de la fin (glisser de la droite vers la gauche).

Cette action est non destructive : aucun son n'est supprimé. C'est comme si comme si vous "cachiez" les parties de la région que vous ne voulez pas ou dont vous n'avez plus besoin. Plus tard, vous pourrez "découper" la région (c.-à-d. l'étendre à nouveau à sa taille d'origine), puis la "découper" à nouveau, même si elle a été déplacée ou copiée sur une nouvelle piste.

{{< figure alt="Trim" src="en/Ardour4_Trimming_Regions.gif" >}}

{{< callout type="info" >}}
Comme la division, l'élagage obéit aux paramètres de la grille. Si vous ne voulez pas que votre que votre rognage soit contraint à une grille, désactivez simplement la grille (_No Grid_).
{{< /callout >}}

## Régions supprimées

Ardour étant non destructif, les régions que vous avez supprimées des pistes ne sont pas complètement supprimées de la session.
Il est toujours possible d'y accéder à nouveau dans la liste des régions à l'extrême droite de la fenêtre de l'éditeur.
Les régions peuvent être glissées de la liste vers n'importe quelle piste.

## Création de fondus dans les régions

Un _fade_ est un changement dans le volume d'une région, soit au début, soit à la fin de la région.
Un fondu au début de la région est un _fade in_, et à la fin d'une région, c'est un _fade out_.
Chaque région est dotée de deux petites poignées qui peuvent être glissées vers l'intérieur à partir de l'un des bords pour créer un fondu entrant ou un fondu sortant. La capture d'écran ci-dessous montre un fondu entrant (indiqué par la zone ombrée). 

{{< figure alt="Fades1" src="en/Ardour4_Fades_1.png" >}} 

En fait, chaque région dispose d'un fondu entrant et d'un fondu sortant intégrés. Par défaut, le fondu de la, le fondu de la région est très court et sert à éviter les clics dans les transitions au début et à la fin de la région. En ajustant la longueur du fondu de la région comme indiqué ci-dessus, il est possible d'obtenir une transition plus progressive.

En cliquant avec le bouton droit de la souris sur l'un des fondus (la zone ombrée), la vitesse du fondu peut également être ajustée.

{{< figure alt="Options de fondu" src="en/Ardour4_Fade_Options.png" >}} 

## Fondu enchaîné entre deux régions

Lorsqu'une région disparaît en fondu tandis qu'une autre apparaît en fondu, on parle de fondu enchaîné.
Si les deux régions se trouvent sur des pistes différentes, vous pouvez utiliser la méthode décrite ci-dessus avec les poignées de fondu entrant et de fondu sortant. La capture d'écran suivante montre un exemple. 

{{< figure alt="Crossfade" src="en/Ardour4_Crossfade_1.png" >}} 

Cependant, si les deux régions se trouvent dans la même piste, vous devez les faire se chevaucher pour créer un fondu enchaîné.
Lorsque des régions se chevauchent sur la même piste, Ardour les traite comme des *couches*, c'est-à-dire que l'une des régions est considérée comme étant l'autre. La règle importante à comprendre est la suivante :

*Le fondu en entrée (ou en sortie) de la région la plus haute représente le fondu enchaîné entre les deux régions.*

Une fois ce principe compris, il est facile de créer et de contrôler des fondus enchaînés entre les régions. Voici un exemple. Les deux régions distinctes ci-dessous seront superposées afin de créer un fondu enchaîné.

{{< figure alt="Crossfade2" src="en/Ardour4_Crossfade_2.png" >}} 

Notez que nous n'avons pas ajouté de fondu sortant supplémentaire à la première région, mais nous avons ajouté un fondu entrant plus long à la deuxième région. Ensuite, nous faisons glisser la deuxième région en partie sur la première :

{{< figure alt="Crossfade3" src="en/Ardour4_Crossfade_3.png" >}} 

Le fondu enchaîné de la deuxième région fonctionne maintenant comme le fondu enchaîné entre les deux régions.
En d'autres termes, la première région s'efface en miroir au fur et à mesure que la seconde région s'affiche.

Pour que cela fonctionne, cependant, nous devons nous assurer que la région qui a le fondu désiré est *au sommet* dans le système de superposition d'Ardour. Pour modifier la superposition des régions, sélectionnez une région et allez dans le menu `Région > Layering`. 

![Fondu enchainé 4](en/ardour7-crossfade-4.png?width=50vw)

La différence peut être difficile à entendre si vous faites cela avec les sons percussifs très courts que nous avons importés plus tôt.

Pour vraiment entendre l'effet, importez quelques échantillons plus longs pour l'essayer (par exemple, un échantillon de sons de pluie et un autre d'une voix humaine), Superposez plusieurs secondes de vos échantillons longs sur la même piste. Vous entendrez la différence lorsque vous déplacerez la deuxième région vers le bas (_Lower to Bottom), puis de nouveau vers le haut (_Raise to Top_).

Lorsqu'il est en haut, nous entendrons le fondu enchaîné souhaité. Lorsqu'il est en bas, n'entendrons pas de fondu enchaîné, mais un changement brusque de la première à la deuxième région (en supposant que votre première région n'ait pas de fondu sortant spécifié, comme dans les captures d'écran ci-dessus).

## Utiliser les paramètres de la grille

Expérimentez avec le paramètre _Grid Mode_, comme indiqué dans le chapitre _Setting Up the timeline_, pour obtenir différents types de quantification - autrement dit, pour contraindre les limites de chaque région à certains points de la grille.

Ici, la grille a été activée et réglée sur _Beats/16_, pour quantifier les régions en doubles croches à l'intérieur de chaque mesure.

Il se peut que vous souhaitiez découper les points finaux de certains échantillons, comme nous l'avons vu plus haut, pour qu'ils s'intègrent dans la structure métrique que vous avez mise en place.

{{< figure alt="Beat" src="en/ardour7-beat.png" >}} 

## Poursuivre

Dans le prochain chapitre, nous explorerons d'autres possibilités offertes par les régions.

Suivant : [AUTRES OPERATIONS SUR LES REGIONS](../further-region-operation
