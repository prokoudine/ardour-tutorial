---
title: Routage entre applications
description: Achemnier un signal depuis des programmes vers Ardour
weight: 6
cascade:
  type: docs
---

Il peut arriver que vous ayez besoin d'enregistrer la sortie audio d'un autre programme dans Ardour, par exemple le son d'une vidéo YouTube jouée dans Firefox, ou la sortie de SuperCollider ou PureData. Ce chapitre montre comment réaliser cela.

Les exemples de cette page ont été créés sur un ordinateur fonctionnant sous Ubuntu Linux. Attention, les choses peuvent fonctionner différemment si vous utilisez un autre système d'exploitation (en particulier si vous utilisez un Mac). Les principes généraux sont cependant toujours les mêmes.

### De votre navigateur à Ardour

Les navigateurs web (Firefox, Chromium, etc.) ne sont pas des applications compatibles avec JACK. Heureusement, PipeWire permet maintenant de connecter assez facilement n'importe quelle application qui émet des sons à une application d'enregistrement compatible JACK telle qu'Ardour.

Tout ce que vous avez à faire est de lancer Qjackctl, de démarrer JACK, puis de commencer à faire des sons dans le navigateur, puis de connecter les sorties du navigateur à une piste dans Ardour. Vous pouvez utiliser les fenêtres Connections ou Graph de Qjackctl pour faire cela, ou vous pouvez le faire directement dans Ardour. Pour cela, dans le gestionnaire de connexions audio, passez à l'onglet _Autre_ dans _Sources_ sur la gauche et connectez la sortie de votre navigateur à une Ardour qui s'appelle ici _From YT_ :

{{< figure src="en/ardour7-youtube-connection-in-ardour.png" alt="Connexion à la sortie YouTube" >}}

Comme les applications telles que les navigateurs web n'ont généralement pas de ports de sortie audio persistants vous devez faire en sorte que votre navigateur émette de l'audio pour que les ports soient créés. Il s'agit généralement de lire une vidéo ou de démarrer une vidéoconférence.

Après cela, il suffit d'armer la piste pour l'enregistrement, puis de démarrer l'enregistrement :

{{< figure src="en/ardour7-youtube-recording.png" alt="Démarrer l'enregistrement" >}}

> [!NOTE]
> Assurez-vous d'avoir déconnecté toutes les autres sorties (comme un micro) de l'entrée de la piste, sinon votre piste pourrait capter plus que ce que vous vouliez et avec l'audio de votre navigateur.

### Des applications JACK à Ardour

D'autres logiciels musicaux comme SuperCollider, Hydrogen et PureData sont compatibles avec JACK.
Cela signifie qu'ils apparaîtront directement en tant que sources et destinations dans le gestionnaire de connexion audio d'Ardour.
Vous n'avez pas besoin de vous préoccuper d'un pont PulseAudio / Jack comme dans l'exemple de YouTube ci-dessus.

La procédure est essentiellement la même : créez une piste mono ou stéréo pour enregistrer l'audio, réglez les entrées de cette piste sur la source désirée, et enregistrez comme d'habitude. 

{{< figure src="en/ardour7-hydrogen.png" alt="Hydrogen" >}} 

La capture d'écran ci-dessus a été prise lors de l'enregistrement d'un motif de batterie depuis Hydrogen directement dans une piste Ardour nommée _Drum N_ où N est un nombre de 1 à 18.
Par défaut, Hydrogen crée une sortie stéréo à partir de son propre mixage. Cependant, vous pouvez lui demander de créer une sortie par instrumentà la place (la case à cocher se trouve sur la page _Audio System_ de la boîte de dialogue _Preferences_).

La fenêtre d'Hydrogen est à droite. La fenêtre du "patchbay" d'Ardour a été laissée ouverte pour la démonstration : remarquez que l'application _Hydrogen_ apparaît comme une source sous l'onglet _Autres_. Ses ports sont connectés directement aux entrées des pistes.

**Poursuivre**

Ceci conclut le chapitre _Enregistrement_. Maintenant que vous avez importé de l'audio, enregistré à partir d'une ligne ou d'un microphone, ou même à partir d'une autre application, passez à la section _Arrangement des pistes_ et apprenez à arranger votre composition.

NEXT: [Arrangement des pistes](../../editing-sessions/arranging-tracks/)