---
title: "Intefaces audio"
description: "Ce que vous avez besoin de savoir à propos des interfaces audio et Ardour"
chapter: false
weight: 1
---

Cette page explique ce que sont les moteurs audio et comment configurer Ardour pour produire.

## Comment choisir le bon moteur audio

### Moteurs Linux

Sur Linux, plusieurs systèmes audio (ou _moteurs_) sont disponibles.

_ALSA_ est suggéré par défaut. C'est actuellement la méthode recommandée pour utiliser Ardour en production. Avec ALSA, il n'y a pas d'emballages ou d'abstractions pratiques. Vous vous connectez directement aux ports audio et MIDI physiques.

Cela signifie qu'Ardour prendra en charge l'interface audio de votre choix et ne la partagera pas avec d'autres applications. Tant qu'Ardour est en cours d'exécution, toutes les autres applications de bureau que vous utilisez ne pourront pas se connecter à l'interface audio et jouer un son.

<!-- ![Audio/MIDI setup](en/ardour7-alsa-backend-settings.png?width=40vw) -->

Le moteur _PulseAudio_ ne prend actuellement que la lecture en charge. Cela signifie que vous ne pourrez pas enregistrer d'audio tant que vous utiliserez PulseAudio, mais vous pouvez modifier, mixer et exporter tout en écoutant avec un casque Bluetooth en déplacement. C'est aussi l'option la plus pratique lorsque vous souhaitez suivre un tutoriel de mixage ou de mastering sur YouTube et pouvoir écouter la sortie d'Ardour.

<!-- ![PulseAudio settings](en/ardour7-pulse-audio-settings.png?width=40vw) -->

<!-- ### Windows engines -->

<!-- ### macOS engines -->

### JACK audio

Le moteur audio JACK a été conçu avec un modèle d'architecture client-serveur à l'esprit. JACK capture tous les ports physiques d'une interface audio et achemine le signal entre ses clients (par exemple, une station de travail audio numérique, un synthétiseur logiciel, un séquenceur de batterie, etc.) et divers ports. Il est disponible sur Linux, Windows et macOS.

Aujourd'hui, l'utilisation du serveur audio JACK est déconseillée par les développeurs d'Ardour, sauf pour des cas d'utilisation particuliers tels que le routage sophistiqué du signal, par exemple l'enregistrement à partir de ports d'interface audio physiques et d'autres applications en même temps.

Pour un enregistrement multicanal simple, votre expérience utilisateur sera bien meilleure si vous vous appuyez sur le moteur audio natif disponible dans votre système d'exploitation, comme ALSA sur Linux et CoreAudio sur macOS. Si vous avez absolument besoin de JACK, il est préférable de le démarrer et de le contrôler à partir d'un programme séparé comme [Qjackctl](https://qjackctl.sourceforge.io/) ou [Cadence](https://kx.studio/Applications:Cadence).

## Comment configurer le moteur

La plupart des moteurs audio pris en charge ont quelques paramètres communs :

- _Périphérique_ — c'est soit votre carte son intégrée, soit une carte son externe si vous en avez une (comme une interface USB).
- _Fréquence d'échantillonage_ — 48K ou 44.1K sont des choix courants.
- _Taille du tampon_ — en particulier pour l'audio USB externe, essayez de choisir une option qui se traduit par une latence multiple de 1 ms (4 ms, 6 ms, etc.) pour produire moins de problèmes.
- _Periodes_ — il est souvent suggéré d'utiliser 3 pour une interface audio USB externe, Mais vous devriez voir si vous pouvez obtenir un multiple de 1 ms avec 3 ou si vous devez composer Retour à 2.

<!-- ## How to calibrate the audio interface -->