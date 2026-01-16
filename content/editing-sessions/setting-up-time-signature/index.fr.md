---
title: Configuration de la signature temporelle
description: Comment Configurer de la signature temporelle dans Ardour
weight: 3
cascade:
  type: docs
---

La _signature temporelle_ détermine la vitesse musicale du passage que nous composons et se mesure en _battements par mesure_. 

Si nous composons quelque chose de rythmique, elle déterminera également la longueur des échantillons sonores que nous utiliserons dans une certaine mesure. Il est donc important de pouvoir définir la signature temporelle avant de continuer.

Pour voir les lignes de temps liées à la signature temporelle pour la session, vous pouvez cliquer avec le bouton droit de la souris n'importe où dans l'"en-tête" des règles et cocher les options suivantes : _Time Signature_, _Bars & Beats_, et _Tempo_.

{{< figure src="en/ardour7-ts-timeline.png" alt="Signature temporelle">}}

Il y a toujours au moins un marqueur pour la signature temporelle et le tempo dans la session, au début de la ligne de temps. Vous pouvez modifier l'un ou l'autre dans la session. Pour ce faire, vous devez sélectionner soit le temps ou une mesure et un temps sur la ligne de temps, cliquez avec le bouton droit de la souris sur le couloir de la ligne de temps dédié, choisissez _Nouvelle signature temporelle_ ou _Nouveau tempo_, et indiquez une nouvelle valeur dans la boîte de dialogue qui vient de s'ouvrir.

{{< figure src="en/ardour7-new-time-signature.png" alt="Nouvelle signature temporelle" >}}

Vous pouvez également modifier facilement la dernière signature temporelle ou le dernier tempo, même si vous avez défilé au-delà du moment où vous pouvez voir le marqueur sur la ligne de temps. Cliquez simplement sur le bouton tempo ou TS juste en dessous de l'horloge secondaire et donnez une nouvelle valeur dans la boîte de dialogue qui vient de s'ouvrir.

![Tempo et signature temporelle](en/Ardour5_Edit_TS_and_Tempo.png?width=25vw)

Pour le tempo (bouton de gauche), choisissez le nombre de battements par minute (bpm) pour votre session.

Pour la _signature temporelle_ (bouton avec légende "TS" à droite), vous pouvez entrer de nouvelles valeurs pour les _battements par mesure_ ainsi que pour la _valeur de la note_.

## Poursuivre

Ensuite, nous allons explorer l'utilisation des plages pour mettre en place une boucle que nous pouvons écouter pendant que nous arrangeons le rythme.

Suivant : [UTILISER LES PLAGES](../using-ranges)
