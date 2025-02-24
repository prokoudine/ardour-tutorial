---
title: Jouer dans le tempo
description: Comment vous aider à enregistrer dans le tempo du reste du matériel de la session
weight: 4
cascade:
  type: docs
---

Normalement, pour enregistrer un instrument ou une partie vocale en direct, vous placez la tête de lecture sur une certaine position, vous armez une piste pour l'enregistrement, vous activez le mode d'enregistrement général puis faites rouler le transport lorsque vous êtes prêt. L'enregistrement commence à la position de la tête de lecture et vous écouterez la partie audible du matériel de la session qui commence également à ce point.
Il y a deux considérations importantes à prendre en compte.

## Utilisation d'un métronome

Il se peut que vous ne disposiez pas encore de la partie rythmique du matériel pour vous guider lors de l'enregistrement.
lorsque vous enregistrez. Si vous êtes à l'aise, vous pouvez activer le métronome dans la barre d'outils de transport (ou en appuyant sur le raccourci **Métronome**).

Si les clics du métronome ne sont pas audibles, allez dans `Fenêtre > Connexions audio`, cliquez sur _Ardour Misc_ à gauche et voyez si les ports _Click out_ sont connectés au bus Master. Cela permettra aux clics du métronome d'être joués par la même sortie que le reste de votre session.

![Ports de sortie de clics connectés au bus maître](en/click-out-ports.png?width=40vw)

Il y a également une poignée d'options de personnalisation pour le métronome dans la section du même nom de la page de dialogue _Preferences_ : mettre (ou non) l'accent sur le premier premier temps, réglage du gain pour les clics du métronome, chargement de vos propres clics réguliers et accentués, activation du métronome uniquement lors de l'enregistrement.

## Pré-écoute du matériel de la session

Pour mieux jouer une partie, il est utile d'écouter une partie d'une composition qui qui précède directement cette nouvelle partie instrumentale/vocale qui sera bientôt enregistrée.
Trois possibilités s'offrent à vous :

1. Enregistrer avec le preroll.

2. Enregistrer avec le compte d'entrée.

3. Commencer l'enregistrement longtemps à l'avance.

Les deux premières options sont similaires. Voici ce qu'elles font.

Preroll (`Transport > Record w/Preroll` ou **Shift+<**) signifie qu'Ardour commencera à jouer le matériel de la session audible avant le moment où vous voulez commencer à enregistrer, puis lorsque la tête de lecture atteint le point d'origine, l'enregistrement commencera. Par défaut, Ardour recule de 2 mesures pour le preroll. Vous pouvez configurer cela dans le dialogue _Préférences_ de la page _Transport_.

Count-in (`Transport > Record w/Count-in` ou **Shift+>**) signifie qu'Ardour jouera deux mesures de clics de métronome, _puis_ commencera à enregistrer.

Dans les deux cas, jouer exactement sur le rythme est crucial s'il y a des notes MIDI ou du contenu audio au début de l'enregistrement.
ou du contenu audio au début de la première mesure enregistrée. Si vous jouez légèrement en avance, tout contenu situé à gauche de la position originale de la tête de lecture sera perdu car il commencera avant que la région audio ou MIDI ne soit créée.

Si vous avez des difficultés à jouer dans le temps, déplacez la tête de lecture vers la gauche pour commencer à enregistrer une nouvelle région audio/MIDI plus tôt vous donnera à la fois le temps de vous synchroniser et d'éditer un contenu parfaitement préservé.

<!-- ## TODO : correction de la latence ??? -->

## Poursuivre

A ce stade, vous pouvez passer directement à la section [Arrangement de pistes](../../editing-sessions/arranging-tracks/) pour apprendre à arranger les régions dans une composition. Si vous prévoyez d'effectuer des enregistrements plus complexes que ceux que nous avons décrits ici, passez directement à la section plus compliqué que ce que nous avons abordé ici, en particulier avec une carte son multicanaux, ou à partir d'autres programmes audio compatibles avec JACK sur votre ordinateur, vous devriez également jeter un coup d'oeil à la section [Comprendre le Routage](../understanding-routing).

Suivant : [Arrangement de pistes](../../editing-sessions/arranging-tracks/) ou [Comprendre le Routage](../understanding-routing)