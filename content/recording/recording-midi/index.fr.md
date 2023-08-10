+++
title = "Enregistrer du MIDI"
description = "Comment enregistrer du MIDI avec Ardour"
chapter = false
weight = 2
+++

Il y a plusieurs façons d'introduire du MIDI dans une piste MIDI dans Ardour, à part l'importation d'un fichier MIDI existant. Examinons-les une à une.

## Enregistrement en temps réel

L'option la plus évidente pour enregistrer du MIDI dans Ardour est peut-être de connecter un clavier MIDI à votre interface audio ou directement à votre ordinateur et d'enregistrer ce que vous jouez.
C'est un processus assez simple : 

1. Sélectionnez une piste MIDI existante pour l'enregistrer ou créez-en une nouvelle.

2. Armez cette piste pour l'enregistrement (cliquez sur le bouton avec un cercle rouge dans l'en-tête de la piste ou appuyez sur **Shift+B**)

3. Basculer le mode d'enregistrement global (cliquer sur le bouton avec un cercle rouge dans l'en-tête de la piste ou appuyer sur **Shift+B**)

4. Faites rouler le transport (**barre d'espace**) pour commencer l'enregistrement.

{{< figure src="en/real-time-recording.png" alt="Enregistrement dans une région MIDI" >}}

5. Arrêtez le transport (**barre Espace**) lorsque vous avez terminé.

En général, lorsque vous enregistrez une partie à partir d'un clavier MIDI, vous devez pouvoir vous entendre jouer.
Si vous constatez que tout est connecté correctement et que et que vous n'entendez toujours pas de son, vérifiez quel canal MIDI votre clavier MIDI envoie des événements note-on/note-off. Il est tout à fait possible qu'il s'agisse d'un canal autre que 1, et que votre instrument virtuel n'ait pas de "patchs" chargés pour ce canal.

<!-- ### Lancement de l'enregistrement à partir d'un clavier MIDI

De nombreux claviers MIDI sont équipés d'un ensemble de boutons de transport pour le rembobinage, l'avance rapide, la lecture et l'enregistrement. Ceci est particulièrement pratique lorsque vous devez enregistrer plusieurs prises et que vous ne voulez pas passer d'un clavier d'ordinateur à un clavier MIDI tout le temps.

Appuyer sur un bouton de transport envoie un événement MIDI Control Change (CC), mais une STAN comme Ardour doit interpréter cet événement CC. Ardour est donc livré avec des cartes MIDI où un événement CC.

Par défaut, Ardour est configuré pour que l'entrée MIDI suive la sélection de la piste MIDI. Cela signifie que lorsque vous avez plusieurs pistes MIDI, elles peuvent toutes produire un son lorsque vous appuyez sur une touche de votre clavier MIDI.
Configurez les périphériques MIDI dans les Préférences : réglez "follow track" globalement et par périphérique. -->

## Entrée par étapes

Le mode d'enregistrement _Step Entry_ est pratique lorsqu'une partie est trop complexe pour être enregistrée en temps réel (par exemple, des arpèges de 1/128e de note à 140bpm).
Au lieu d'essayer de réaliser cela en direct lorsque vous êtes pressé par le temps, vous pouvez utiliser votre clavier pour entrer les notes une par une à votre rythme. Ardour va enregistrer la note que vous jouez, déplacer la tête de lecture jusqu'à la fin de cette note, puis s'asseoir et attendre la prochaine note que vous jouez.

{{< figure src="en/step-entry-duration-preview.png" alt="Aperçu de la durée de la note dans Step Entry" >}}

Pour activer ce mode, faites un clic droit sur le bouton **Enregistrer** d'une piste MIDI, choisissez _Step Entry_ dans le menu qui vient de s'ouvrir. La boîte de dialogue _Step Entry_ s'ouvre.

{{< figure src="en/step-entry-dialog.svg" alt="La boite de dialogue Step Entry" >}}

Voici les options disponibles :

1. Mode de saisie d'accord - vous pouvez jouer plusieurs notes à la fois, elles seront enregistrées comme un accord et seront superposées sur le pianoroll.

2. Préréglages de longueur de note, d'une note entière à 1/64ème.

3. Préréglages des notes pointées

4. Préréglages des silences

5. Préréglages de vitesse, de pianississimo à fortississimo

6. Entrées numériques pour les données MIDI : canal, longueur d'une note, vélocité, octave (pour la saisie à partir d'un clavier normal), banque MIDI et programme MIDI (pour pouvoir saisir les données à partir d'un clavier normal). octave (pour une saisie à partir d'un clavier normal), banque MIDI et programme MIDI (de sorte que vous puissiez utiliser, par exemple un échantillon de pizzicato dans une bibliothèque d'échantillons).

Vous avez maintenant trois possibilités :

1. Cliquer sur les touches du piano à l'aide de la souris
2. Appuyer sur les touches de votre clavier normal
3. Utiliser un clavier MIDI connecté à l'entrée de la piste

Pour l'option 2, la rangée de lettres du milieu est utilisée pour les touches blanches, et la rangée de lettres du haut pour les touches noires :

{{< figure src="en/keyboard-map-to-piano-keys.svg" alt="Carte du clavier pour les touches de piano" >}}

Tous les paramètres que vous voyez dans la boîte de dialogue _Step Entry_ s'appliquent aux options 1 et 2. Pour chaque note que vous entrez ensuite, vous pouvez définir : 

- La longueur, d'une note entière à 1/64 (ou n'importe quelle longueur lorsque vous utilisez la boîte à boutons 1/Note), avec une entrée d'accord optionnelle.
- le canal
- Vélocité (les touches z à < du clavier anglais (US) peuvent être utilisées comme raccourcis clavier)
- Octave (les touches 1 à 9 peuvent être utilisées comme raccourcis)

Vous pouvez également insérer des silences, ce qui signifie essentiellement qu'Ardour déplace le curseur d'édition vers la droite de la longueur de note sélectionnée.

Lorsque vous utilisez un clavier MIDI pour la saisie de pas, seul un sous-ensemble de paramètres dans la boîte de dialogue s'appliquent. Ardour utilisera la longueur de note définie, mais ne se préoccupera pas de la vélocité, du canal, de la longueur de note ou de l'octave et utilisera tout ce que vous envoyez à partir du clavier.

Essayons de l'utiliser et de créer une simple ligne de basse que nous pourrons utiliser plus tard dans le
projet.

1. Créez une nouvelle piste, sélectionnez Surge XT comme instrument virtuel.

2. Ouvrez le navigateur _Factory Patches_ et sélectionnez _Bass 2_ dans _Basses_.

{{< figure src="en/surge-xt-bass-patch.png" alt="Sélection d'un patch de basse dans Surge XT" >}}

3. Assurez-vous que la tête de lecture se trouve au début de la session, de sorte qu'elle corresponde au début de la première mesure de toutes les pistes du projet en cours.

4. Ouvrez la boîte de dialogue _Step Entry_

5. Sélectionnez la longueur de note 1/8 et l'octave 3

6. Sur votre clavier normal, appuyez sur D, G, H, G, D, G, U, J, H, 4, A, S, A, 3, H, 4, A, E, D.

Vous avez maintenant une ligne de basse de base que vous pouvez répéter.

{{< figure src="en/bassline.png" alt="Ligne de basse initiale" >}}

## Dessiner des notes sur le "piano roll"

La manière la plus simple d'ajouter des notes à une piste MIDI est sans doute de les dessiner sur le sur le canevas.

1. Créez une piste MIDI.

2. Passez en mode _Dessin_ en appuyant sur **D** ou en cliquant sur le bouton correspondant dans la barre d'outils.

3. Cliquez et faites glisser sur le canevas pour créer une région MIDI.

{{< figure src="en/draw-new-midi-region.gif" alt="Dessinez une nouvelle région MIDI" >}}

4. Pointez la souris à l'endroit où une note doit commencer, appuyez sur le bouton gauche de la souris et maintenez-le enfoncé.
Faites glisser la souris vers la droite jusqu'à la fin de la note. Relâchez le bouton de la souris.

{{< figure src="en/draw-new-midi-notes.gif" alt="Dessinez de nouvelles notes MIDI" >}}

5. La barre d'outils supérieure contient des paramètres par défaut pour les nouvelles notes : durée, vélocité, canal. Vous pouvez modifier ces paramètres avant d'ajouter de nouvelles notes soit en choisissant un préréglage dans une liste déroulante, soit en faisant défiler la molette de la souris sur l'une des trois listes déroulantes.

{{< figure src="en/midi-draw-toobar.png" alt="Barre d'outils de dessin MIDI" >}}

6. Répétez l'opération jusqu'à ce que vous ayez écrit la mélodie.

Si vous n'êtes pas habitué à ce type de saisie de notes et à la rotation mentale du clavier de 90° dans le sens des aiguilles d'une montre et que cela vous semble un peu difficile, essayez de cliquer sur le piano pour écouter les notes jusqu'à ce que vous vous y fassiez.

En mode _Draw_, vous pouvez également faire de l'édition légère : sélectionner et redimensionner des notes individuelles, les déplacer, ajuster la vélocité, utiliser le menu le menu du clic droit pour effectuer diverses transformations.

Poursuivre
----------

Dans le chapitre suivant, nous parlerons de la façon de vous aider à jouer en synchronisation avec le reste du matériel de la session, que vous utilisiez un clavier MIDI pour enregistrer une partie de synthétiseur ou une guitare basse.

Suivant : [Jouer dans le tempo](../performing-on-time)