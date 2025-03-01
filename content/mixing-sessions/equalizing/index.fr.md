---
title: Égaliser
description: Appliquer l'égalisation à l'audio dans Ardour
weight: 7
cascade:
  type: docs
---

Un _égaliseur_ (ou _EQ_) vous permet de contrôler séparément le gain de différentes bandes de fréquences d'un son.

Cela peut être très utile non seulement pour sculpter le timbre d'un son isolé (par exemple, pour le faire sonner sonner de manière plus "nette" ou plus "adoucie"), mais aussi pour faire en sorte que des sons avec des timbres variés s'intégrent mieux au mix. 

Il arrive souvent qu'après avoir ajusté les niveaux et la balance panoramique, différentes pistes avec du contenu fréquentiel similaire (par exemple une guitare basse et une grosse caisse) puissent difficilement trouver leur place dans le mix. Un égaliseur est un bon outil pour résoudre ça.

## Égaliseur 3 bandes

Le type d'égaliseur le plus simple est celui qui nous est familier grâce aux tables de mixage analogiques. Il a trois paramètres, qui ajustent les niveaux de trois _bandes_, ou plages de fréquences : une pour les _basses_ (basses fréquences), une pour la plage des _moyennes_ fréquences et une pour les _aiguës_ (hautes fréquences). Le greffon _DJ EQ_ (égaliseur pour DJ) sur la capture d'écran ci-dessous, est un égaliseur de ce type. Si vous n'avez pas ce greffon en particulier sur votre ordinateur, explorez ceux que vous avez et qui possèdent "EQ" dans leurs noms ; vous trouverez certainement quelque chose de similaire.

{{< figure src="en/ardour7-dj-eq.png" alt="DJ EQ" >}}

## Égaliseur multi-bandes (ou graphique)

Un égaliseur plus complexe qu'est le _multi-bandes_ (ou _graphique_) a souvent plus de plages de fréquences.
Chaque plage est centrée sur une fréquence et le niveau de chaque plage peut être ajustée indépendament. Dans certains égaliseurs multi-bandes, tels que le greffon  _LSP Graphic Equalizer_ représenté ci-dessous, la fréquence centrale de chaque plage peut être définie par la personne qui l'utilise. Cela vous permet à la fois d'atténuer (ou supprimer) une fréquence non désirée ou de renforcer (augmenter) une fréquence voulue.

{{< figure alt="tap eq" src="en/ardour7-lsp-graphic-16-band-eq.png" >}}

La "courbe" générale des plages de fréquences peut aussi être utilisées pour définir la tonalité générale de votre piste ou de votre mix. Dans l'exemple suivant, la partie la plus basse des fréquences moyennes a été légérement "évidée" (notez que les plages 1,2 et 15,16 non pas été touchées et restent à 0dB, alors que les plages intermédiaires 3 à 14 dessinent une courbe d'atténuation, avec la plage 7 à -13,5dB comme point le plus bas).  

## Égaliseur paramétrique

L'_égaliseur paramétrique_ est le type d'égaliseur le plus versatile utilisé pour mixer en raison du nombre de ses contrôles important par rapport à tous les types de paramètres d'égaliseur. Ardour a de base un greffon d'égaliseur paramétrique appelé _ACE EQ_. Il ressemble à ça:

{{< figure src="en/ardour7-ace-eq.png" alt="ACE EQ" >}}

D'autres égaliseurs peuvent avoir des interfaces graphiques plus jolies comme le _x42 EQ_ de Robin Gareus, mais ils font essentiellement la même chose. Vous pouvez avoir des greffons d'égalisation sur votre ordinateur qui seront un peu différent de ces captures d'écran, mais les paramètres que vous pouvez contrôler sont probablement très similaires.

{{< figure alt="x42 eq" src="en/ardour7-x42-eq.png" >}}

Dans les deux captures d'écran ci-dessus (_a-EQ_ et _x42 EQ_), il y a des options que vous pouvez ajuster pour chaque plage de fréquence. Chacune des trois bandes a un réglage de _niveau_ (level) (dB) pour couper ou augmenter les fréquences, un réglage de _fréquence_ (Hz) pour choisir la fréquence centrale, ainsi qu'une sorte de réglage du _Q_ qui détermine la largeur de la plage de fréquence qui sera affectée. 

#### Plateau des aiguës, plateau des basses // terme plateau à revoir?

Les deux greffons montrés ci-dessus (_a-EQ_ et _x42 EQ_) ont aussi un réglage d'_aiguës en plateau_ et de _basses en plateau_. Un _plateau_ coupe ou augmente tout ce qui est au-dessus (plateau des aiguës) ou en dessous (plateau des basses) d'une fréquence spécifique. Par exemple, un plateau de basses peut être utilisé pour enlever des grondements non voulu, un plateau d'aiguës peut être utilisé pour réduire des sifflements. La fréquence de contrôle d'un plateau détermine la fréquence de coupure. Par exemple, un plateau de basse avec une fréquence de coupure à 200Hz signifie que l'égaliseur atténuera tout ce qui se trouve en dessous de cette fréquence. La quantité d'atténuation est contrôlée par le potentiomètre de niveau. 

Notez que pour le greffon ACE EQ, il n'y a pas de paramètre _Q_ que ce soit pour le plateau d'aiguës ou pour le plateau de basses, mais par contre le _x42 EQ_ en dispose.

## Un exemple d'utilisation d'un égaliseur

De manière à parvenir à une meilleure séparation de deux instruments dans le mix au travers l'utilisation d'égaliseurs, vous avez d'abord besoin de trouver là où les deux instruments se superposent.

Voici une façon de faire.

1. Utilisez le greffon _ACE EQ_ ou un autre équivalent, sélectionnez une plage appropriée pour l'un des instruments. Dans le cas d'une guitare basse, cela pourrait être une plage de basses fréquences (commençant, disons, à 100Hz).

2. Augmentez le gain de 10dB, changez le _Q_ (aussi appelé "bande passante") de façon à avoir une plage plus étroite et ensuite ajustez lentement la fréquence plus haut et plus bas. Vous entendrez le hauteur monter et descendre.

3. Ramenez lentement la fréquence centrale jusqu'à ce que la plage de fréquence où les deux instruments se superposent. Maintenant, réduisez simplement le gain jusque -5dB et normallement vous devriez entendre les instruments de manière un peu plus distincte. Ensuite, appliquez la même procédure à l'autre instrument.

Il y a plusieurs façons d'envisager l'égalisation. Nous espérons que cela vous fournira un exemple de comment commencer à égaliser les pistes dans votre mix. Mais la chose la plus importante, quand il faut égaliser, est qu'il est préférable d'en faire trop peu que trop, à moins que cela ne soit intentionnel d'utiliser l'égaliseur comme un paramètre de composition.

**Poursuivre**

Vous devriez avoir assez d'outils maintenant pour créer un mix stéréo propre et bien spatialisé de votre session.
Cependant, si vous voulez que les paramètres de vos atténuateurs, de vos panoramiques ou de vos greffons changent dans le temps, vous allez devoir explorer le prochain chapitre au sujet de l'automatisation. Dans le cas contraire, sautez directement pour apprendre à _exporter des sessions_.