+++
title = "Panoramique"
description = "Comment faire un panoramique dans Ardour"
chapter = false
weight = 3
+++

Une fois que vous avez établi un bon équilibre des niveaux sur toutes les pistes, vous pouvez commencer à penser au panoramique.

Le panoramique permet d'établir un _champ stéréo_, un espace relatif entre les enceintes dans lequel vous pouvez placer vos sons et vos instruments.

## The Panning Interface


Le contrôle du panoramique dans Ardour est situé au milieu de la bande de mixage.

Une piste mono aura un panoramique mono. Il se présente comme suit :

![panoramique mono](en/ardour7-mono-panner.png?width=10vw)

Une piste stéréo aura un panoramique stéréo, comme ceci : 

![panoramique stéréo](en/ardour7-stereo-panner.png?width=10vw)

### Panoramique mono

Le panoramique mono par défaut distribue 1 entrée vers 2 sorties. Son comportement est contrôlé par un seul paramètre, la *position*. Par défaut, le curseur est centré. Vous pouvez changer la position en cliquant et en tirant directement sur le curseur mono. Un clic droit sur le curseur permet d'accéder à d'autres options.

### Panoramique stéréo

Le curseur stéréo par défaut distribue 2 entrées vers 2 sorties. Par défaut, le curseur est également centré.

## Trucs et astuces

Une discussion plus approfondie sur la philosophie et les techniques de panoramique dépasse le cadre de ce tutoriel mais voici quelques règles générales :

* Les guitares ont tendance à être placées à gauche et à droite.
* Les voix et les basses ont tendance à être placées au centre. Vous voulez créer un équilibre afin qu'un côté ne soit pas plus fort que l'autre.
* Un casque peut être utile pour déterminer comment les instruments doivent être balancés et si le mélange semble déséquilibré parce qu'un côté est trop fort.

Deux autres outils sont utiles pour créer un champ stéréo ou "spatial".
La _Reverb_ et le _Delay_. Ces effets peuvent être utilisés avec des envois pour créer un départ de batterie qui serait plus en arrière dans le mixage avec plus de Reverb, et un envoi de voix qui pourrait avoir un peu plus de retard mais qui sonnerait plus proche de la batterie. Veuillez consulter les sections sur l'utilisation des greffons et des envois plus loin dans cette partie du tutoriel pour plus d'informations.

{{% notice tip %}}
Gardez toujours un œil sur vos niveaux lorsque vous effectuez des panoramiques sur les pistes ! Le panoramique d'une piste sur un canal augmente le niveau de ce canal. Cela peut modifier l'équilibre des niveaux que vous avez établi dans le chapitre précédent et, dans les cas extrêmes, peut entraîner un écrêtage. Lorsque cela se produit, réduisez les niveaux globaux de cette piste et vérifiez à nouveau comment elle se situe dans le mixage.
{{% /notice %}}

## Panoramique multicanal

Comme Ardour prend en charge les pistes multicanaux, il fournira également une interface utilisateur de panoramique spécifique à ces pistes. Voici un exemple de piste audio à 4 canaux. Vous pouvez voir qu'il y a une petite interface dans la table de mixage et une fenêtre d'édition plus grande à laquelle vous pouvez accéder en cliquant n'importe où dans l'espace vide à l'intérieur de la fenêtre de la zone de panoramique :

![Panoramique multicanal](en/ardour7-multichannel-panning.png?width=30vw)

À moins que vous ne travailliez sur des projets [Ambisonics](https://en.wikipedia.org/wiki/Ambisonics), par exemple, vous travaillerez probablement des pistes multicanaux lorsque vous utilisez des échantillonneurs, en particulier les échantillonneurs de batterie/percussion.
Comme les différents instruments d'un kit de batterie ont tendance à être traités différemment en post-production (par exemple, comment ils sont traités avec un compresseur), les échantillonneurs ont tendance à créer un canal par instrument : un pour la grosse caisse, un pour chaque caisse claire, etc. L'idée est d'acheminer un canal dans un bus séparé et de le traiter différemment.
Dans ce cas, l'utilisation d'une commande de panoramique est peu probable.

## Poursuivre

Vous devriez maintenant avoir une collection de pistes qui sont à la fois bien mixées et qui ont une image stéréo intéressante. Dans les chapitres suivants, nous apprendrons l'utilisation de greffons pour améliorer le son de votre mixage.

Suivant : [UTILISATION DES GREFFONS](../using-plugins)
