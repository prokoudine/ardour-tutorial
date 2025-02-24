---
title: Démarrer Ardour
description: Lancement d'Ardour sur Ubuntu Linux, premiers pas
weight: 2
cascade:
  type: docs
---

Ardour supporte à la fois Linux, Windows et macOS. Il y a très peu de différences dans la façon dont il fonctionne sur tous ces systèmes d'exploitation. Ainsi, bien que ce tutoriel suppose l'utilisation d'Ubuntu Linux, vous pouvez vous attendre à ce qu'il en soit de même sur d'autres systèmes d'exploitation et d'autres versions de Linux.

## Assistant de premier lancement

Lorsque vous démarrez Ardour pour la première fois, il vous posera quelques questions pour effectuer une personnalisation de base :
- interface utilisateur et échelle de police (si vous avez un écran HiDPI),
- dossier par défaut où les nouvelles sessions seront créées,
- méthode préférée pour surveiller le signal enregistré, etc.
- pour surveiller le signal en cours d'enregistrement, etc.

![IGU et mise à l'echelle des polices](en/ardour7-gui-and-font-scaling.png)

Cette boîte de dialogue ne sera plus jamais affichée, sauf si vous effacez tous les paramètres. Vous pouvez modifier toutes les préférences que vous y avez définies à tout moment, plus tard dans la boite de dialogue _Preferences_.

## Créer une nouvelle session

Une fois que vous avez passé l'assistant de démarrage, Ardour vous propose de créer une nouvelle _session_ à partir d'un des quelques modèles disponibles.

![Modèles de nouvelle session](en/ardour7-new-session-templates.png)

Une session englobe tout le matériel dont vous disposez :
- les pistes avec les données audio et MIDI,
- les effets associés aux pistes et aux bus, etc.

Ainsi, une session est un fichier de projet à partir duquel vous pouvez créer un fichier audio mono ou stéréo à livrer à un client, à utiliser dans une vidéo ou à télécharger sur un service de streaming.

Pour des raisons de simplicité, prenons une session vide comme indiqué ci-dessus.

Ardour vous proposera toujours de stocker une nouvelle session dans le dossier par défaut que vous avez défini à l'étape précédente.

Lorsque vous donnez un nom à une nouvelle session, évitez d'utiliser d'autres caractères que des lettres et des chiffres, comme les espaces blancs, les lettres accentuées, les `!@#$%*()+`, les points, les virgules, etc. Utilisez des tirets ou des caractères de soulignement si vous le souhaitez. Par exemple, au lieu de "Ma Grande Session !", préférez "Ma_Grande_Session", ou encore "MaGrandeSession", ou "ma-grande-session". Au lieu de "Açaí", écrivez "Acai" (sans lettres accentuées), etc.

Le réglage par défaut du domaine temporel affecte principalement les règles et les marqueurs. Avec "Audio Time", il activera l'ensemble des règles avec les minutes, les secondes et le timecode. Avec "Temps musical", il activera les règles de temps musical - Mesures:Temps, Signature temporelle, Tempo.

Nommez votre nouveau projet et cliquez sur **Ouvrir**.

Une fois que vous avez créé votre session Ardour, ne renommez _pas_ manuellement les dossiers ou fichiers qui appartiennent à la session, sinon, Ardour ne parviendra pas à localiser les fichiers contenus dans ces dossiers et vous demandera de les pointer.

> [!NOTE]
> Une fois que vous avez sauvegardé au moins une session, la boîte de dialogue _Session Setup_ se présentera différemment: il y aura une liste des sessions récemment ouvertes et un moyen d'ouvrir une session existante qui ne figure pas dans cette liste.

## Choix d'un système audio et de ses paramètres

À l'étape suivante, vous devrez choisir et configurer le _système audio_.

Sous Linux, vous disposez de plusieurs systèmes audio (ou _backends_). Le système _ALSA_ est proposé par défaut. C'est actuellement la façon recommandée d'utiliser Ardour en production. Avec ALSA, il n'y a pas d'enveloppements ou d'abstractions. Vous vous connectez directement aux ports physiques audio et MIDI. Cela signifie qu'Ardour prendra le contrôle de l'interface audio de votre choix et ne la et ne la partagera pas avec d'autres applications. Tant qu'Ardour fonctionne, toutes les applications de bureau que vous exécutez ne pourront pas se connecter à l'interface audio et jouer un son.

![Configuration audio/MIDI](en/ardour7-alsa-backend-settings.png?width=40vw)

Le backend _PulseAudio_ ne supporte actuellement que la lecture. Cela signifie que vous ne serez pas en mesure d'enregistrer de l'audio tant que vous utiliserez PulseAudio, mais vous pourrez éditer, mixer et exporter dans un casque Bluetooth par exemple. C'est aussi l'option la plus la plus pratique lorsque vous souhaitez suivre un tutoriel de mixage ou de mastering sur YouTube et être capable d'écouter la sortie d'Ardour.

![Configuration PulseAudio](en/ardour7-pulse-audio-settings.png?width=40vw)

Enfin, il y a le backend audio JACK. Il est conçu selon un modèle d'architecture client-serveur. JACK capture tous les ports physiques d'une interface audio et achemine le signal entre ses clients (par exemple, une station de travail audio numérique, un synthétiseur logiciel, un séquenceur de batterie, etc.) et les différents ports. Il est disponible à la fois sur Linux, Windows et macOS.

Aujourd'hui, l'utilisation du serveur audio JACK est découragée par les développeurs d'Ardour sauf pour des cas d'utilisation particuliers comme le routage sophistiqué du signal. Pour un simple enregistrement multicanal, l'expérience de l'utilisateur sera bien meilleure si vous utilisez sur le moteur audio natif disponible dans votre système d'exploitation, comme ALSA sur Linux et CoreAudio sur macOS. Si vous avez absolument besoin de JACK, il est préférable de le démarrer et de le contrôler à partir d'un programme distinct comme les logiciels [Qjackctl](https://qjackctl.sourceforge.io/) ou [Cadence](https://kx.studio/Applications:Cadence).

La plupart des systèmes audio pris en charge ont quelques paramètres communs :

- _Périphérique_ — soit votre carte son intégrée, soit une carte son externe si vous en avez une (telle qu'une interface USB).
- _Taux d'échantillonnage_ - 48K ou 44.1K sont des choix courants.
- _Taille du tampon_ - en particulier pour l'audio USB externe, essayez de choisir une option qui entraîne une latence multiple de 1ms (4ms, 6ms, etc.) afin de produire moins de parasites.
- _Periodes_ - il est souvent suggéré d'utiliser 3 pour une interface audio USB externe, mais vous devriez voir si vous pouvez obtenir un multiple de 1ms avec 3 ou si vous devriez revenir à 2.

Une fois que vous avez choisi, configuré et démarré le backend audio/MIDI, Ardour va essayer de découvrir les nouveaux greffons, et vous serez accueilli par la fenêtre principale d'Ardour :

![Fenêtre principale d'Ardour, session vide](en/ardour7-ardour-empty-session.png)

## Poursuivre

Dans le chapitre suivant, vous allez vous familiariser avec l'interface utilisateur d'Ardour et ses fenêtres principales :
- Éditeur,
- mixeur,
- enregistreur,
- et Cue.

Next: [Vue d'ensemble de l'interface](../overview-of-the-interface)
