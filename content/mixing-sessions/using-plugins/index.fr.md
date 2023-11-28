+++
title = "Utilisation de greffons"
description = "Comment utiliser les greffons dans Ardour"
chapter = false
weight = 4
+++

Les _greffons_ peuvent être utilisés pour améliorer ou transformer le son des différentes pistes.

Ils pevent être appliqués directement sur un piste unique ou sur un groupe de pistes en utilisant un _envoi_. Plus loin dans ce tutoriel, nous aborderons certains greffons spécifiques au processus de mixage, tels que les _Compresseurs_, les _Limiteurs_, les _Égaliseurs paramétriques_, _Reverbs_ et autres.

## Boîte à processeurs

Dans la terminologie Ardour, un _processeur_ est tout ce qui est branché sur une bande de mixage et qui traite le signal d'une manière ou d'une autre. Ardour fournit plusieurs processeurs intégrés tels que l'atténuateur ou les panoramiques. Les processeurs peuvent également être des greffons utilisés pour effets ou comme instruments, ainsi que des envois ou des inserts qui affectent l'acheminement du signal. La disposition des processeurs est arbitraire et il n'y a pas de limite à leur nombre de processeurs possibles.

![bande de mixage 2](en/ardour7-default-processor-box.png?width=150)
 
L'espace principal illustré dans la capture d'écran ci-dessus est la _boîte du processeur_.
L'atténuateur bleu est en fait un _processeur_ qui se trouve par défaut dans la boîte de processeur. Il représente l'atténuateur que vous utilisez pour contrôler le volume de la piste. Tous les processeurs sont représentés par des rectangles de couleur, avec une petite diode à côté d'eux qui s'allume lorsque le processeur est activé.
La couleur du processeur dépend de son emplacement dans la séquence ; les processeurs pré-atténuateur sont colorés en rouge, et les processeurs post-atténuateur sont colorés en vert.

## Ajout d'un greffon à une piste ou à un bus 

Les greffons peuvent être ajoutés en cliquant avec le bouton droit de la souris dans la boîte de processeur de la piste ou du bus. Un menu d'options s'affiche. Ce menu permet d'insérer de nouveaux processeurs.

![greffons1](en/ardour7-plugin-selector-in-menu.png?height=450)

Le _gestionnaire de greffon_ est un moyen pratique de parcourir et de choisir des greffons :

{{< figure alt="greffons2" src="en/ardour7-plugin-selector.png" >}}

Depuis le _gestionnaire de greffons_, vous pouvez les rechercher par leur nom, leur type, ou d'autres critères disponibles depuis le menu déroulant. Ajoutons le greffon de réverbération appelé _ACE Reverb_ :

{{< figure alt="Sélection de ACE Reverb" src="en/ardour7-select-ace-reverb.png" >}}

Une fois sélectionné, cliquez sur **Ajouter** et le greffon s'affichera au pied de la liste des "greffons à connecter". Puis cliquez sur **Inserer le(s) greffon(s)**, et ils s'(afficheront dans la boite à processeurs.

![greffon de réverbération](en/ardour7-ace-reverb-added-to-processor-box.png?width=150)

## Modification des paramètres d'un greffon

Double-cliquez sur un greffon pour modifier ses paramètres. Dans cet exemple, nous double-cliquons sur la boîte rouge "ACE Reverb" et nous obtenons la fenêtre suivante : 

![ACE Reverb](en/ardour7-ace-reverb-settings.png?width=400)

Ici, vous pouvez contrôler les paramètres de la réverbération tels que _Blend_ et _Room Size_. L'effet s'appliquera à tous les sons contenus dans la piste.

{{% notice tip %}}
Double-cliquez sur un curseur pour passer en mode d'entrée numérique, tapez la nouvelle valeur, puis appuyez sur **Entrée** pour confirmer la modification ou **Esc** pour abandonner.
{{% /notice %}}

## Contournement des greffons

Pour contourner le greffon, appuyez sur le bouton **Bypass** dans la fenêtre de paramétrage du greffon, ou cliquez simplement sur la diode du plugin dans la boîte du processeur. Cela éteint le greffon et permet au signal de le traverser sans être affecté. C'est utile lorsque vous souhaitez comparer le son d'une piste avec et sans le greffon.

![bypass](en/ardour7-ace-reverb-bypass-in-mixer-strip.png?width=150)

Les greffons contournés sont affichés avec la diode éteinte. Sur la capture d'écran ci-dessus, l'atténuateur est activé et le greffon _ACE Reverb_ est contourné.

En cliquant avec le bouton droit de la souris sur les greffons, vous obtiendrez un menu avec plusieurs options, notamment _Effacer_. 

## Pré-atténuateur contre Post-atténuateur

Vous avez le choix d'ajouter votre greffon avant ou après le rectangle de l'atténuateur dans la _boîte à processeurs_. Les greffons pré-atténuateurs sont insérés dans le signal *avant* l'atténuateur, de sorte que l'atténuateur contrôle le niveau du signal sortant du greffon.
Les greffons post-atténuateur sont insérés *après* l'atténuateur : l'atténuateur contrôle le niveau du signal entrant dans le greffon.

Pour certains greffons, le placement avant ou après l'atténuateur n'a pas d'importance. Pour d'autres, la différence est subtile. Pour d'autres encore, les insérer au bon endroit est absolument essentiel (pour plus de détails, voir par exemple [ce fil de discussion](https://discourse.ardour.org/t/fader-before-or-after-plugins/100666) sur le forum de discussion Ardour).

## Formats de greffons

Pour ceux que les formats de greffons intéressent, voici une rapide vue d'ensemble :

Les greffons **LADSPA** sont un format quelque peu obsolète, principalement utilisé sous Linux.

Les greffons **LV2** est un format successeur extensible de LADSPA. Les greffons LV2 sont disponibles sous Linux, Windows et macOS, si les développeurs respectifs choisissent de les construire pour ces systèmes.

Les greffons **AU** sont le format de greffons natif pour macOS et ne fonctionneront que dans ce système d'exploitation.

Les greffons **VST** est assez courant sous Windows et macOS. Certains plugins VST conçus pour Windows peuvent être utilisés sous Linux, mais ils risquent de ne pas fonctionner correctement et de nécessiter un logiciel tiers pour fonctionner. D'autres sont conçus nativement pour Linux et ont tendance à bien fonctionner.

Plus d'information sur l'utilisation des greffons dans Ardour sont disponibles dans [le manuel utilisateur](http://manual.ardour.org/working-with-plugins/).

## Poursuivre

Dans ce chapitre, nous avons appris à ajouter un greffon à une seule piste. Ceci est utile si cette piste a besoin d'un greffon spécifique, mais si vous avez un greffon qui est utilisé pour plusieurs pistes en même temps, vous devriez passer au chapitre suivant sur l'utilisation des envois. Vous pouvez également passer aux différents chapitres spécifiques aux plugins, tels que _Dynamiques_ et _Egalisation_.

Suivant : [UTILISATION DES ENVOIS](../using-sends)
