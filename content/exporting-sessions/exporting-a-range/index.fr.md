---
title: Exporter un intervalle
description: Comment exporter des intervalles dans Ardour
weight: 3
cascade:
  type: docs
---

Comme vous l'avez déjà appris dans les chapitres précédents, l'exportation d'une région isolée n'exporte pas toutes les modifications que vous avez pu apporter à cette région. Pour exporter des modifications telles que le panoramique, l'automatisation des faders et les effets des greffons, vous devez exporter soit un intervalle, soit la session entière.

## Exporter un intervalle

Pour exporter un intervalle, suivez ces étapes :

1. Cliquez sur le bouton **Range Mode** (raccourci **R**)

![Mode intervalle](en/ardour7-range-edit-mode.png?width=250)

2. Sélectionner un intervalle :

{{< figure src="en/ardour7-exporting-range-1.png" alt="Sélectionner un intervalle" >}}

3. Cliquez bouton de droit sur l'intervalle et choisissez _Export Range_ depuis le menu :

{{< figure src="en/ardour7-exporting-range-2.png" alt="Exporter un intervalle dans le menu" >}}

Cela ouvrira la boite de dialogue _Export_ comme expliqué dans le chapitre [Exporter des sessions](../exporting-a-session).
Choisissez des options, si necessaire, et cliquez sur **Export**. L'intervalle sera exporté et sauvegardé en tant que fichier audio.

### Qu'est ce exactement qu'un intervalle ?

Définir une plage consiste simplement à spécifier un point de départ et un point d'arrivée dans le temps. L'affichage **Sélection** à droite de l'horloge secondaire indique les heures de début et de fin de la plage sélectionnée, ainsi que sa durée.

![Durée d'intervalle](en/ardour7-range-duration.png?width=600)

L'intervalle créé avec la méthode ci-dessus disparaitra dès que vous cliquerez en dehors de celle-ci.

La commande _Export Range_ exportera tout ce qui est joué dans le bus _Master_, exactement comme il est joué dans votre session.
Si n'importe laquelle des pistes à le bouton **Mute** ou **Solo** engagé, cela affectera également les pistes qui seront entendues dans le fichier exporté.

### Comment créer un marqueur de plage et re-sélectionner une plage ?

Les marqueurs d'intervalle sont essentiellement deux marqueurs d'emplacement regroupés pour marquer le début et la fin d'une section sur la barre temporelle. Les marqueurs d'intervalle se présentent comme suit :

{{< figure src="en/ardour7-range-markers.png" alt="Marqueurs d'intervalle" >}}

Vous pouvez utiliser des marqueurs d'intervalle pour "marquer" un ou plusieurs intervalles dont vous devez vous souvenir ou que vous devez réutiliser ultérieurement. Voici comment procéder :

1. Effectuez une sélection d'intervalle en mode _Range_ ou en mode _Grab_ avec l'option _Smart_ activée.

2. Créez des marqueurs d'intervalle de l'une des manières suivantes :

* Cliquez avec le bouton droit de la souris sur une sélection d'intervalle et choisissez _Add Range Marker_.
* Dans la ligne de temps, cliquez avec le bouton droit de la souris sur l'espace horizontal _Range Markers_ et choisissez _New Range_.
* A partir d'une ou plusieurs régions sélectionnées, cliquez avec le bouton droit de la souris sur la région et choisissez _Add
(si une seule région est sélectionnée) ou _Add Range Marker Per Region_ (si plusieurs régions sont sélectionnées).

3. Cliquez n'importe où en dehors de la sélection de la plage pour la désélectionner.

4. Cliquez avec le bouton droit de la souris sur l'un des deux marqueurs de sélection d'intervalle sur la ligne de temps et choisissez l'option de menu _Select Range_. La sélection de la plage est rétablie.

{{< callout type="info" >}}
Vous pouvez effacer tous les marqueurs d'intervalle existants en cliquant avec le bouton droit de la souris sur la zone _Range Markers_ de la ligne de temps et en choisissant _Clear All Ranges_.
{{< /callout >}}

## Poursuivre

Vous savez maintenant comment exporter des régions isolées, des plages sélectionnées de votre session ou la session entière sous forme de mixage stéréo. La dernière section de ce didacticiel explique comment sauvegarder les sessions, les instantanés et les modèles.

Suivant : [SAUVEGARDER UNE SESSION](../../saving-sessions/saving-a-session/)
