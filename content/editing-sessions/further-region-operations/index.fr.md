---
title: Autres opérations sur les régions
description: Déphasage, normalisation et autres opérations sur les régions dans Ardour
weight: 6
cascade:
  type: docs
---

Dans cette section, vous apprendrez quelques autres choses que vous pouvez faire avec les régions.

Un clic droit sur une région sélectionnée fait apparaître un menu contextuel. Le premier élément du menu (étiqueté avec le nom de la région) contient un grand sous-menu.
Toutes ces opérations sont également disponibles dans le menu principal *Région* d'Ardour.

Cette section décrit quelques-unes des opérations les plus couramment utilisées accessibles à partir de ces menus.

{{< figure alt="Region menu" src="en/ardour7-region-menu.png" >}}

**Lecture**
: Lecture du début à la fin de cette région (raccourci **H**).

**Tag**
: Donner à une région une étiquette significative, par exemple "Bon", qui permet de la distinguer des autres régions de la liste _Regions_.

**Loop**
: Définir l'étendue de la boucle pour qu'elle corresponde à la durée de cette région, et commencer à la boucler tout de suite.

**Rename**
: Change le nom d'une région.

**Propriétés**
: Beaucoup d'informations sur la région, ainsi que la possibilité de modifier son gain.

**Position**
: Entre autres options, vous trouverez dans ce sous-menu la case à cocher _Verrouillage_ : elle verrouille la région de sorte qu'elle ne puisse pas être déplacée ou découpée. Cependant, elle peut toujours être divisée et les régions résultantes seront déverrouillées.

**Modifier**
: Ce sous-menu contient des outils utiles tels que _Pitch Shift_ (**Alt+8**) et _Reverse_ (**Alt+4**). La fonction _Pitch Shift_ modifie la hauteur d'une région sans en changer la durée. L'option _Reverse_ permet de lire la région à l'envers.

**Gain**
: Dispose d'options utiles telles que _Mute_ (**Alt+1**), _Normalize_ (**Alt+3**), _Boost Gain_ (**Alt+6**) et _Cut Gain_ (**Alt+7**),

**Duplicate**
: Comprend _Duplicate_ (raccourci **Alt+D**), _Multi-Duplicate_ et _Fill Track_.
Ces fonctions ont été expliquées en détail dans la section [Travailler avec les régions](../working-with-regions).

**Analyse de la sonorité**
: Estime l'intensité sonore d'une région en LUFS, ainsi que les valeurs _Peak_ et _True Peak_.

**Analyse spectrale**
: Fenêtre affichant le contenu fréquentiel global de la région.

N'hésitez pas à explorer par vous-même les autres sous-menus non mentionnés ci-dessus. Beaucoup d'entre eux des miroirs des options que vous trouvez dans le menu *Région* d'Ardour. Ci-dessous, nous détaillons un peu plus certaines des fonctions les plus utiles. 

## Déplacement de la hauteur

La fonction _Pitch Shift_ (**Alt+8**) modifie la hauteur d'une région sans en changer la durée. La fonction applique un algorithme de décalage de hauteur pour créer un nouveau clip audio basé sur le clip source.

La fenêtre _Pitch Shift_ permet à l'utilisateur de spécifier la quantité et la direction de la transposition souhaitée.
La fenêtre comprend une option _Conserver les formants_. Lorsque le décalage de hauteur est important, l'option de préservation des formants peut donner des résultats qui sonnent un peu plus naturels, en particulier lorsqu'ils sont utilisés sur du matériel vocal.

![Déplacement de la hauteur](en/ardour7-pitch-shift-window.png?height=30vh)

## Normaliser

La fonction _Normaliser_ (raccourci **Alt+3**) augmente de façon non destructive le niveau de la région sélectionnée de façon à ce que les _pics_ soient à 0 dB ou moins. Lors d'une normalisation à 0,0, la région sera aussi forte que possible tout en évitant l'écrêtage.
Il est parfois utile de normaliser une région à une valeur inférieure à 0, telle que -1,0, -3,0 ou -6,0 décibels, afin d'éviter qu'elle ne devienne trop bruyante. 

![Normaliser](en/ardour7-normalize-window.png?width=20vw)

Deux autres opérations de gain utiles pour les régions sont _Boost Gain_ (**Alt+6**) et _Cut Gain_ (**Alt+7**), toutes deux incrémentant le gain de 1dB vers le haut ou vers le bas. N'hésitez pas à les essayer.

## Reverse

La fonction _Reverse_ (**Alt+4**) inverse la région audio sélectionnée, ce qui a pour effet de la jouer à l'envers. L'inversion d'une région crée un nouveau fichier audio "en coulisses".

## Opérations sur deux plages sélectionnées ou plus

Si plus d'une plage est sélectionnée, l'opération s'appliquera à toutes (par exemple, _Normaliser_, _Inverser_, etc).

### Combiner

Certaines opérations du menu contextuel ne sont disponibles que lorsque deux régions ou plus sont sélectionnées. Par exemple, examinons la fonction _Combiner_ dans le sous-menu _Editer_. Nous sélectionnons d'abord deux régions adjacentes:

{{< figure alt="combine" src="en/ardour7-region-combine-1.png" >}}

Puis nous choisissons _Combine_ dans le menu contextuel du clic droit, ou dans le menu principal d'Ardour `Région > Editer > Combiner`: 

{{< figure alt="combine 2" src="en/ardour7-region-combine-2.png" >}}

En conséquence, les régions sélectionnées sont combinées en une seule. Ceci est particulièrement utile lorsque vous avez trouvé une séquence exacte de régions qui fonctionne exactement comme vous le souhaitez, et que vous souhaitez copier et/ou déplacer l'ensemble de la séquence en tant que groupe.

Remarquez que la région combinée résultante porte le mot "composé" dans son nom.

{{< figure alt="combine 3" src="en/ardour7-region-combine-3.png" >}} 

## Poursuivre

Dans le chapitre suivant, nous en apprendrons un peu plus sur les puissants outils dont dispose Ardour en changeant de **Mode d'édition**.

Suivant : [CHANGER LES MODES D'EDITION](../changing-edit-modes)
