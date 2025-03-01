---
title: Utilisation de l'automatisation
description: Comment créer et modifier de l'automatisation dans Ardour
weight: 8
cascade:
  type: docs
---

L'_automatisation_ est un moyen de modifier dynamiquement les paramètres de traitement audio dans le temps.

Jusqu'à présent, nous avons utilisé des valeurs fixes pour divers paramètres de nos pistes, par exemple, un atténuateur de piste réglé à -3,0 dB ou un panoramique mono réglé à 100% à gauche. Ces valeurs fixes s'appliquent à l'ensemble de la piste pendant toute la durée de la session.

Mais que se passe-t-il si vous souhaitez que ces valeurs changent au fil du temps d'une manière prédéterminée ?
Par exemple, vous pouvez souhaiter que le gain d'une piste diminue progressivement sur une période de vingt secondes. Ou bien vous voulez qu'un son se déplace de gauche à droite en deux secondes.

C'est ce que permet l'automatisation. L'atténuateur, le panoramique et tous les paramètres des greffons utilisés dans cette piste peuvent être automatisés. Un paramètre automatisé est affiché sous la piste parente dans sa propre _piste d'automatisation_. Les données d'automatisation sont représentées visuellement sous la forme d'une _ligne d'automatisation_, composée d'un certain nombre de _points d'automatisation_.
Voici à quoi ressemble une piste avec automatisation :

{{< figure alt="Ligne d'automatisation typique" src="en/Ardour4_Automation_Fader_1.png" >}}

Dans l'image ci-dessus, la voie d'automatisation appelée _Fader_ est associée à la piste parente appelée _Audio 1_. La ligne d'automatisation contrôle les changements de l'atténuateur (volume) dans le temps. 

## Création d'une ligne d'automatisation de l'atténuateur

Créons une simple automatisartion d'atténuateur. Cliquez sur le bouton **A** d'une piste choisie. Un menu apparaît, dans lequel vous pouvez sélectionner le paramètre que vous souhaitez automatiser. Choisissez _Atténuateur_ (Fader en anglais).

{{< figure alt="Choose Fader" src="en/Ardour4_Automation_Button.png" >}}

Une voie d'automatisation apparaît alors. Sélectionnez le mode _Draw_ (raccourci **D**) :

{{< figure alt="Draw mode" src="en/Ardour4_EditModes_D.png" >}}

Vous pouvez maintenant créer des points d'automatisation en cliquant n'importe où dans le couloir d'automatisation. Une ligne d'automatisation relie les points d'automatisation que vous ajoutez. Le chiffre jaune (-15,3dB dans l'image ci-dessous) indique le niveau de gain pour le point d'automatisation sélectionné.

{{< figure alt="Indication de la valeur du point d'automation" src="en/Ardour4_Automation_Fader_2.png" >}}

Vous pouvez également dessiner des lignes d'automatisation librement dans le mode Dessin. Cliquez simplement, maintenez enfoncé et dessinez une ligne d'automatisation libre :

{{< figure alt="Dessiner une automatisation librement, avant de relâcher le bouton de la souris" src="en/ardour8-draw-automation-freely-pre-release.png" >}}

Une fois que vous relâchez le bouton de la souris, vous voyez beaucoup de points de contrôle de l'automatisation, parce qu'Ardour essaie de préserver le mouvement exact que vous avez fait en dessinant la ligne.

{{< figure alt="Dessiner l'automatisation librement, après avoir relâché le bouton de la souris" src="en/ardour8-draw-automation-freely-post-release.png" >}}

Vous pouvez le voir en zoomant :

{{< figure alt="Dessiner l'automatisation librement, zoomé" src="en/ardour8-draw-automation-freely-zoomed.png" >}}

Vous pouvez également appuyer sur **Ctrl** et cliquer pour créer des lignes droites :

{{< figure alt="Drawing straight segments of automation lines, pre-release" src="en/ardour8-draw-automation-lines-pre-release.png" >}}

Cela créera cette ligne d'automatisation :

{{< figure alt="Drawing straight segments of automation lines, post-release" src="en/ardour8-draw-automation-lines-post-release.png" >}}

Il est également possible de combiner le dessin d'automatismes libres avec le dessin de lignes.
Appuyez simplement sur **Ctrl** lorsque vous avez besoin de dessiner un segment droit et relâchez le bouton lorsque le segment doit se terminer puis continuez à dessiner une ligne libre :

{{< figure alt="Une combinaison de segments libres et droits" src="en/ardour8-draw-automation-freely-with-lines-pre-release.png" >}}

### États d'automatisation

La courbe d'automatisation n'est pas jouée tant que l'état d'automatisaton n'est pas réglé sur _Play_.

{{< figure alt="automation state" src="en/Ardour4_Automation_Fader_3.png" >}}

**Manuel**
: Lorsqu'elle est réglée sur _Manual_, la piste ignore toutes les données d'automatisation. 
Elle jouera simplement avec le volume sur lequel l'atténuateur est réglé. Dans ce mode, vous pouvez déplacer l'atténuateur de la piste à la main pour définir un nouveau niveau fixe. C'est le comportement par défaut d'une piste lorsqu'elle est créée pour la première fois.

**Jouer**
: Lorsqu'elle est réglée sur _Play_, la piste modifie automatiquement les niveaux de gain en suivant la courbe d'automatisation dessinée dans la voie d'automatisation.
Vous ne pourrez plus déplacer l'atténuateur de la piste à la main. Pendant la lecture, vous le verrez se déplacer vers le haut et vers le bas en fonction de la courbe. 

**Écrire**
: Ce mode enregistre en continu les modifications apportées par l'utilisateur au paramètre automatisé pendant que le transport joue, créant ainsi une ligne d'automatisation.
Par exemple, vous pouvez commencer la lecture, puis modifier le gain en temps réel à l'aide de l'atténuateur de votre piste.
Toutes les modifications apportées seront écrites (enregistrées) sous forme de ligne d'automatisation que vous pourrez lire ultérieurement en repassant le mode d'automatisation sur _Play_.

**Touch**
: Ce mode est similaire au mode _Write_ mais il n'enregistre pas les données d'automatisation existantes à moins que le paramètre ne soit modifié.

Si ces concepts sont nouveaux pour vous, concentrez-vous maintenant sur les deux premiers modes
(_Manual_ et _Play_) et entraînez-vous à créer des automatismes en dessinant des courbes d'automatisation à la main.

## Création d'un greffon pour l'automatisation

Vous pouvez ajouter l'automatisation à n'importe quel greffon qui a déjà été ajouté à une piste. Dans l'exemple ci-dessous, nous avons le greffon _AM pitchshifter_ ajouté à une piste.

{{< figure alt="pluginautomation1" src="en/Ardour4_Automation_Plugin1.png" >}}

Afin de sélectionner un paramètre de greffon pour l'automatisation, cliquez sur le bouton de la piste marqué _a_. Le menu apparaît. Sous _Processor Automation_ vous trouverez une liste des greffons que vous avez ajoutés pour cette piste.

{{< figure alt="pluginautomation2" src="en/Ardour4_Automation_Plugin2.png" >}}

Dans chaque greffon répertorié, vous pouvez choisir le paramètre que vous souhaitez automatiser à partir d'une liste. Dans l'exemple, nous avons choisi le paramètre _Pitch shift_ du plugin _AM pitchshifter_. Une voie d'automatisation pour ce paramètre apparaît. Notez que si vous ouvrez plusieurs voies d'automatisation, elles apparaîtront l'une après l'autre sous la piste parente principale. 

Dessinez une courbe d'automatisation pour ce paramètre. N'oubliez pas de régler l'état d'automatisation à _Play_.

{{< figure alt="pluginautomation3" src="en/Ardour4_Automation_Plugin3.png" >}}

Dans l'image ci-dessus, le changement de hauteur du son évolue maintenant dans le temps, contrôlé par la courbe.

> [!NOTE]
> Vous pouvez masquer une piste d'automatisation en cliquant sur le "X" dans le coin supérieur gauche de la piste d'automatisation. Notez qu'une piste d'automatisation masquée continue à fonctionner même lorsqu'elle n'est pas visible.

## Améliorer la résolution visuelle de l'automatisation

Vous pouvez obtenir une plus grande précision verticale en augmentant la hauteur du couloir d'automatisation. Déplacez votre curseur près du bord inférieur de la piste d'automatisation.
Le pointeur se transforme en une double flèche verticale. Faites-le glisser vers le bas pour augmenter la hauteur de la piste d'automatisation. Notez que les hauteurs de la piste parente et de la piste d'automatisation sont indépendantes de sorte que lorsque vous travaillez sur vos courbes d'automatisation, vous pouvez les configurer de la manière suivante :

{{< figure alt="pluginautomation5" src="en/Ardour4_Automation_Plugin4.png" >}}

> [!NOTE]
> N'oubliez pas que vous pouvez également effectuer un zoom avant et arrière pour augmenter la résolution sur l'axe horizontal.

## Travailler avec les points d'automatisation

Il existe plusieurs façons d'ajuster les points d'automatisation, en fonction du mode d'édition dans lequel vous vous trouvez :

- Un point d'automatisation peut être déplacé dans n'importe quelle direction avec la souris (fonctionne dans les modes _Grab_, _Draw_ et _Edit_).
- Pour supprimer un point d'automatisation, maintenez la touche **Maj** enfoncée tout en cliquant dessus avec le bouton droit de la souris (fonctionne dans les modes _Grab_, _Draw_ et _Edit_).
- Mode _Édition_ uniquement : tout segment de la ligne d'automatisation entre les points d'automatisation peut être déplacé verticalement, en affectant les deux points d'extrémité à la fois, sans affecter leur position horizontale. Il suffit de cliquer quelque part sur la ligne entre deux points et faites-le glisser vers le haut et vers le bas.
- Comment supprimer plusieurs points d'automation à la fois (mode _Grab_ et mode _Edit_ uniquement) : sélectionnez plusieurs points d'automation en faisant glisser une boîte commençant sur l'arrière-plan de la piste autour des points. Les points sélectionnés peuvent ensuite être supprimés en cliquant sur **Suppression** (et non **Retour arrière**).
Si vous êtes sur Mac et que vous ne disposez pas d'une véritable touche **Suppr**, essayez **Fonction + Retour arrière**.

Après la fin d'une courbe d'automatisation, sa valeur restera à ce niveau pour toutes les régions suivantes, que vous ayez ou non activé la fonction d'automatisation.

{{< figure alt="end point" src="en/Ardour4_Automation_Fader_End.png" >}}

Dans l'exemple ci-dessus, le dernier point de la courbe se situe à -23dB. Ce même niveau sera conservé pour le reste de la piste, même si la ligne n'est pas tracée jusqu'à la fin.

{{< figure alt="end point" src="en/Ardour4_Automation_Fader_End.png" >}}

## Déplacement de l'automatisation

Le déplacement d'une région vers un nouvel emplacement entraîne automatiquement le déplacement des données d'automatisation qui pourraient être alignées avec elle, comme nous le voyons dans les captures d'écran suivantes.

Avant le déplacement :

{{< figure alt="mv1" src="en/Ardour4_Automation_Moving_1.png" >}}

Après le déplacement :

{{< figure alt="mv2" src="en/Ardour4_Automation_Moving_2.png" >}}

Vous pouvez modifier ce comportement si vous le souhaitez. En d'autres termes, si vous souhaitez que les courbes d'automatisation restent à leur place même lorsque vous déplacez des régions, allez dans `Editer > Préférences > Editeur` et décochez _Déplacer l'automatisation pertinente quand les régions audio sont déplacées_.

## Automatisation de gain spécifique à une région

Il est possible de créer une automatisation de gain directement liée à une région. Lorsque vous êtes en mode _Draw_, vous devriez voir une ligne plate sur la moitié supérieure de chaque région :

{{< figure alt="gain-automation" src="en/Ardour4_Automation_Region_Specific_1.png" >}}

Cliquez directement sur cette ligne pour créer des points d'automatisation. Ceux-ci seront dessinés directement sur la région elle-même, contrairement à l'automation des atténuateurs qui est dessinée ou enregistrée dans la voie d'automatisatiion. L'automatisation du gain de la région est distincte de l'automatisation de l'atténuateur et s'y ajoute.

{{< figure alt="gain-automation2" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

Comme pour les voies d'automatisation, un _point d'automatisation de gain_ peut être déplacé dans n'importe quelle direction avec la souris. Pour supprimer un point d'automatisation de gain, maintenez la touche **Maj** tout en cliquant dessus avec le bouton droit de la souris.

### Désactivation et suppression de l'automatisation du gain

L'automatisation du gain peut être réinitialisée ou désactivée à partir du menu contextuel de la région, auquel on accède en cliquant avec le bouton droit de la souris sur la région.

{{< figure alt="gain-automation3" src="en/Ardour4_Automation_Gain_Tool_Reset.png" >}}

Ici, l'automatisation du gain est appelée _enveloppe_ :

- L'outil _Reset Envelope_ supprime les points d'automation de gain que vous avez dessinés dans la région.
- L'option _Enveloppe active_ permet d'activer et de désactiver l'enveloppe d'automatisation du gain.

### Quand dois-je utiliser l'automatisation du gain régional ou l'automatisation du fader de piste ?

Comme nous l'avons vu plus haut, les deux sont très similaires. Avec la pratique, vous remarquerez des situations dans lesquelles l'une est plus pratique que l'autre. Voici deux exemples :

* Si tout ce que vous avez à faire est une petite retouche (couper ou augmenter le gain) dans une partie spécifique d'une région, et que vous êtes par ailleurs satisfait du niveau pour le reste du passage ou de la piste entière, utilisez l'automation spécifique à la région.

{{< figure alt="gain-example1" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

* Si vous avez une piste plus complexe avec des fondus enchaînés sur des régions, et/ou si vous avez besoin d'une courbe dynamique plus longue à travers plusieurs régions sur la même piste, utilisez l'automatisation des atténuateurs.

{{< figure alt="gain-automation2" src="en/Ardour4_Automation_Gain_Comparison.png" >}}

La capture d'écran ci-dessus montre un simple fondu progressif commençant par la première région de la piste et se terminant à la dernière région. Il est très simple de faire cela avec l'automatisation des atténuateurs, alors qu'il serait beaucoup plus difficile de le faire en utilisant l'automatisation spécifique à la région.

**Poursuivre**

Une fois votre automatisation en place, vous êtes prêt à exporter votre mixage stéréo vers un fichier audio que vous pouvez écouter ou partager sur un site web.
Veuillez passer à la section suivante pour apprendre les différentes façons de le faire.

Suivant : [EXPORTATION D'UNE SESSION](../../exporting-sessions/exporting-a-session/)