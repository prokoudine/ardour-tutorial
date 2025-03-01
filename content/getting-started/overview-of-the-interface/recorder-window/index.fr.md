---
title: Fenêtre Enregistreur
description: Bases de la fenêtre d'enregistreur d'Ardour
weight: 3
cascade:
  type: docs
---

La fenêtre _Enregistreur_ est rationalisée pour un cas d'utilisation particulier : l'enregistrement sur plusieurs pistes. L'interface est volontairement simplifiée pour éliminer toute distraction.

{{< figure src="en/ardour7-recorder-window-sections.png" alt="Sections de la fenêtre Enregistreur" >}}

La fenêtre de l'enregistreur comporte trois sections principales, comme indiqué ci-dessus :

1. la barre d'outils spécifique à la fenêtre,
2. la ligne de temps et la représentation des pistes,
3. le contrôle des entrées.

## Barre d'outils spécifique à la fenêtre

La barre d'outils comporte des commandes et des informations spécifiques : armer et désarmer toutes les pistes pour l'enregistrement, suppression de la dernière prise, commutation automatique de toutes les entrées pour le contrôle du signal, estimation du temps d'enregistrement restant sur le disque, etc.

{{< figure src="en/ardour7-recorder-toolbar.png" alt="Barre d'outils de l'enregistreur" >}}

## La ligne de temps et la représentation des pistes

La ligne de temps n'affiche que le code temporel, et la vue des pistes n'a aucun rendu de forme d'onde. Cela permet de mieux utiliser les ressources du système lors de l'enregistrement de dizaines de pistes simultanément.

{{< figure src="en/ardour7-recorder-timeline-tracks.png" alt="Ligne de temps et pistes de l'enregistreur" >}}

## Contrôle des entrées

La partie inférieure de la fenêtre est l'endroit où vous contrôlez les entrées : vous pouvez à la fois surveiller volume d'entrée et renommer les ports physiques pour plus de commodité. Pour ce faire, il suffit de cliquer sur le nom du port d'entrée et lui donner un nouveau nom.

{{< figure src="en/ardour7-recorder-input-renaming-dialog.png" alt="" >}}

Par exemple, si vous avez deux entrées micro, une pour la voix et une pour la guitare, les nommer en conséquence simplifiera le choix de la bonne entrée. les nommer en conséquence simplifiera le choix de la bonne entrée pour la bonne piste. Cela sera encore plus pratique pour les interfaces audio comportant 18 entrées.

{{< figure src="en/ardour7-recorder-input-new-names.png" alt="" >}}

**Poursuivre**

Enfin, dans la prochaine section, nous jetterons un coup d'oeil rapide à la fenêtre _Cue_, qui est nouvelle dans Ardour 7.0 et qui fournit une interface utilisateur familière pour lancer des clips audio et clips MIDI.
