---
title: Utilisation des envois
description: Utilisation des envois dans Ardour
weight: 5
cascade:
  type: docs
---

Un _Send_ est juste une sortie supplémentaire pour une piste ou un bus avec son propre atténuateur séparé qui peut être utilisé pour acheminer le signal vers d'autres points dans Ardour.

Également connus sous le nom de "départs auxiliaires", ils prennent le signal à un point spécifique dans le flux du signal (pré-atténuateur, post-atténuateur, avant ou après les égaliseurs et autres greffons, etc.) et envoient une copie de ce signal ailleurs, sans affecter le flux normal du signal vers le fader du canal.

Dans Ardour, vous pouvez facilement ajouter des _sends_ aux pistes et aux bus à travers la bande de mixage. Les envois sont des processeurs, tout comme les greffons.

## Quand un envoi est-il utile ?

Dans les chapitres précédents, nous avons construit un motif de kit de batterie avec quatre pistes séparées : kick, snare, hihat et clap. Supposons que vous souhaitiez ajouter une réverbération à la batterie. Vous pouvez bien sûr ajouter un greffon séparé pour chaque piste individuelle et régler leurs paramètres séparément, mais cette méthode augmente inutilement la quantité de travail. Chaque fois que vous souhaitez modifier le réglage d'une réverbération pour toutes les pistes, vous devrez ouvrir les quatre greffons de réverbération et les modifier de la même manière.

C'est là que les envois s'avèrent utiles : vous pouvez les utiliser pour ajouter un effet particulier à un ensemble de pistes sans créer plusieurs instances du même greffon.

Voici un aperçu de la manière dont nous allons procéder :

1. Créez un bus unique avec le greffon souhaité.
2. Ajoutez un envoi à chaque piste de batterie à laquelle vous souhaitez appliquer l'effet.
3. Acheminez ces envois vers le bus.

## Création du bus et ajout d'un greffon

Créez un bus (`Piste > Ajouter une piste, un bus ou un VCA...` dans le menu), nommez-le de manière appropriée, et ajoutez un greffon dans la zone de pré-atténuateur (clic droit juste au-dessus du rectangle bleu de l'atténuateur dans la boîte du processeur), comme indiqué dans le chapitre précédent, _Utilisation des greffons_.

Dans cet exemple, nous avons créé un bus stéréo appelé _Drums_ et ajouté le greffon
_Réverbération ACE_ au bus.

![sends1](en/ardour7-ace-reverb-in-mixer-strip.png?height=200)

### Entrées de bus

L'affichage "-" dans le bouton d'entrée de bus indique que rien n'est encore acheminé vers ce bus. Nous nous en occuperons plus tard.

### Sortie de bus

Avant d'acheminer un envoi vers ce bus, assurez-vous d'abord que les sorties du bus sont acheminées vers le bus _Master_, comme indiqué ci-dessous (le bouton en bas indique "*master*").

{{< figure alt="sends2" src="en/Ardour4_Sends_2.png" >}} 

Ouvrez également la fenêtre du greffon (double-cliquez sur le rectangle _ACE Reverb_) et
et réglez le mixage du signal du greffon sur la valeur 1.0 _Blend_.

![sends3](en/ardour7-ace-reverb-settings.png?width=400)

Cela permet de s'assurer que le bus transporte tout le signal traité du greffon, et aucun signal non traité vers le bus _Master_. Rappelez-vous que les signaux non traités, "propres", sont toujours disponibles sur leurs pistes d'origine, il n'est donc pas nécessaire de les dupliquer dans ce bus.

## Création et routage des départs

Nous pouvons maintenant créer des départs dans les autres pistes et les acheminer vers les entrées du bus.

Comme les greffons, les départs sont également créés dans la boîte du processeur. Allez sur chacune de vos pistes de batterie, cliquez avec le bouton droit de la souris dans l'espace vide de la boîte du processeur et créez un _New Aux Send..._ dirigé vers le bus approprié (dans notre cas, nommé _Drums_).

![sends4](en/ardour7-adding-aux-send.png?height=500)

{{< callout type="info" >}}
Si vous ne voyez pas l'option _New Aux Sends..._ dans le menu, c'est probablement parce que vous n'avez pas encore créé de bus. Revenez à l'étape précédente pour créer le bus.
{{< /callout >}}

Vous devriez maintenant voir l'envoi affiché dans la boîte du processeur :

![postatténuateur](en/ardour7-post-fader-send.png?height=200)

Le petit curseur _Send_ que vous voyez juste en dessous du rectangle vert est l'atténuateur send qui contrôle la quantité de son envoyée de cette piste vers le bus.

### Envois post-atténuateur et pré-atténuateur

Remarquez que l'image ci-dessus montre un envoi post-atténuateur (il se situe _après_ le rectangle de l'atténuateur). Dans les envois post-atténuateur, le niveau d'envoi est contrôlé _en premier lieu_ par l'atténuateur de la piste/du bus et _en second lieu_ par l'atténuateur d'envoi.

Dans un envoi _pre_-atténuateur, en revanche, le niveau d'envoi est contrôlé uniquement par l'atténuateur d'envoi, indépendamment de la piste ou du bus. Un envoi pré-atténuateur se présente comme ceci :

![preatténuateur](en/ardour7-pre-fader-send.png?height=200)

Il est possible de faire glisser le rectangle d'envoi vers le haut ou vers le bas de la boîte du processeur pour le rendre pré ou post-atténuateur selon les besoins.

{{< callout type="info" >}}
Le choix de pré- ou post-atténuateur dépend du type de greffon d'effet utilisé et du résultat souhaité. Pour cet exercice, l'un ou l'autre fonctionnera.
{{< /callout >}}

Un envoi se comporte comme n'importe quel autre greffon dans la boîte du processeur. Vous pouvez le désactiver temporairement en cliquant sur la petite LED, et vous pouvez faire un clic droit sur le rectangle pour accéder à d'autres options, y compris _Delete_.

### Atténuateur d'envoi

Pour contrôler le niveau de chaque envoi, il suffit de cliquer sur l'atténuateur d'envoi et de le faire glisser pour en augmenter ou en diminuer le volume.

{{< figure alt="atténuateurenvoi" src="en/Ardour4_Send_Fader.png" >}} 

Le bus _Drums_ reçoit maintenant la somme de toutes les pistes et lui applique l'effet. Un greffon unique appliqué au bus contrôle l'effet pour le mixage de tous les sons de batterie qui y sont acheminés. De cette façon, vous avez un contrôle indépendant sur le son "sec" des pistes d'origine et le son "traité" qui sort du bus. 

Les départs étant très utiles pour ce type de travail avec les greffons d'effet, ils sont aussi communément appelés "départs d'effet", ils sont aussi communément appelés "Effect Sends" (départs d'effets).

## Poursuivre

Maintenant que vous savez comment ajouter des plugins à une piste, et comment ajouter des départs aux pistes pour créer des bus de greffons utilisables par n'importe quel nombre de pistes, il peut être utile de connaître quelques autres plugins utiles dans le processus de mixage.
Veuillez poursuivre avec les chapitres suivants qui traitent de la _dynamique_ et de l' _égalisation_.

Suivant : [DYNAMIQUE](../dynamics)
