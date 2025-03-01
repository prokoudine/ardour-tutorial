---
title: Enregistrer l'audio
description: Comment enregictrer de l'audio avec Ardour
weight: 1
cascade:
  type: docs
---

Outre l'importation de fichiers audio existants, une autre façon de créer des régions dans votre session Ardour est d'*enregistrer* de nouveaux fichiers audio.

La source de cet audio peut être les entrées ligne ou micro de votre interface audio, ou il peut même s'agir de sons provenant d'autres applications sur votre ordinateur qui ont été connectées à Ardour via JACK. Veuillez consulter la [section sur le routage](../understanding-routing/) pour plus de détails.

Cette section vous montrera comment enregistrer de l'audio à partir d'une source externe (par exemple, un microphone) sur une piste.

{{< figure src="en/ardour7-editor-mixer-input.png" alt="Entrée du mixeur de l'éditeur" >}}

Tout d'abord, vous devez vérifier que les entrées appropriées ont été acheminées vers la piste sur laquelle vous souhaitez enregistrer.

1. Sélectionnez la piste en cliquant sur l'espace vide situé juste en dessous de son nom et de son chariot de volume.
2. La piste est mise en surbrillance.

{{< figure src="en/ardour7-audio-1-highlight.gif" alt="Mise en évidence d'une piste" >}}

3. La bande verticale du _Editor Mixer_ située sur le côté gauche de la fenêtre de l'_Editor_ devrait maintenant afficher la piste que vous venez de sélectionner (*Audio 1* dans l'image ci-dessus).
4. Juste en dessous du nom de la piste dans le _Editor Mixer_, vous trouverez un bouton qui vous permet d'éditer le routage.
5. Cliquez sur ce bouton pour examiner le routage.

> [!NOTE]
> Si vous ne voyez pas la bande _Editor Mixer_, utilisez le raccourci **Shift + E** pour la faire apparaitre.

Dans l'image suivante, vous pouvez voir que seule l'entrée de cette piste mono reçoit le signal de *system capture_1*.
Il s'agit normalement de la première entrée micro de votre carte son. Les noms réels des connexions sur votre ordinateur personnel peuvent être différents en fonction d'un certain nombre de facteurs, notamment si vous utilisez un ordinateur macOS, Windows ou Linux. Si vous ne voyez pas de connexion nommée *system capture_1*, recherchez le nom de la connexion qui est est susceptible d'être votre microphone d'entrée.

{{< figure src="en/ardour7-audio-1-input.png" alt="Entrée audio 1" >}}

Les onglets affichés verticalement à gauche sont les sources disponibles.
"*Audio 1 in*" en bas à droite est la destination. Le point vert représente une connexion.

Les onglets _Ardour_ montrent les connexions qui peuvent être faites à partir d'autres sources dans Ardour.
L'onglet _Autre_ affiche les connexions audio disponibles à partir de logiciel autre qu'Ardour, si elles sont disponibles.
L'onglet _Matériel_ affiche les connexions matérielles (par exemple, le microphone intégré de votre ordinateur ou les entrées de votre carte son). Ceci sera expliqué plus en détail dans la section chapitre [Comprendre le routage](../understanding-routing/).

Dans le cadre de ce chapitre, assurez-vous simplement que _system capture_1_ (ou l'équivalent sur votre ordinateur) de l'onglet _Matériel_ soit connecté à la piste que vous voulez utiliser afin que nous puissions faire un enregistrement test. Si vous ne voyez pas de point vert comme dans la capture d'écran ci-dessus, cliquez sur la matrice pour établir la connexion manuellement.
Vous pouvez maintenant fermer cette fenêtre.

> [!NOTE]
> L'exemple ci-dessus suppose que vous enregistrez une source sonore mono sur une piste mono. Si vous souhaitez enregistrer en stéréo, les instructions sont à peu près les mêmes, mais vous devez créer une piste stéréo. Vous devriez alors voir deux points verts, l'un pour _capture_1_ et l'autre pour _capture_2_.

### Armement de la piste ###

> [!WARNING]
> Veillez à baisser le volume de vos haut-parleurs avant de passer à l'étape suivante.

"L'armement de la piste" consiste simplement à la préparer à l'enregistrement. Une fois que vous avez vérifié que les entrées de capture appropriées ont été acheminées vers la piste, vous pouvez armer la piste en cliquant sur la petite icône rouge sur la bande 
horizontale de la piste (pas la grande dans les commandes de transport).

{{< figure src="en/ardour7-arming-the-track.png" alt="Armer la piste" >}}

Lorsque la piste est correctement armée, la petite icône rouge reste en surbrillance, et vous pouvez voir le signal entrant en regardant le _compteur de crête_ sur le _Mixer_ ou sur la piste horizontale.

Si vous utilisez un casque, vous devriez pouvoir entendre ("monitor") les sons en cours d'enregistrement. Si vous utilisez des haut-parleurs, veillez à baisser leur volume afin d'éviter l'effet Larsen.

> [!NOTE]
> À moins que vous n'ayez demandé à Ardour de faire autrement, l'entrée en cours d'enregistrement sera surveillée (en d'autres termes, entendue) via la sortie _Audition_. Si vous n'utilisez pas de casque pour surveiller le processus d'enregistrement, vous risquez d'obtenir des retours bruyants à ce stade!

### Armer Ardour et commencer l'enregistrement ###

Maintenant que vous avez armé la piste pour l'enregistrement, vous devez armer Ardour pour l'enregistrement en cliquant sur le gros bouton rouge dans la barre d'outils _Transport_. Le bouton clignotera en rouge, indiquant qu'Ardour est prêt à enregistrer. Pour démarrer l'enregistrement, cliquez sur le bouton **Play** dans le menu _Transport_, ou appuyez sur la barre d'espacement de votre clavier. Cliquer à nouveau sur le bouton **Play** (ou appuyer sur la barre d'espacement) arrêtera l'enregistrement.

{{< figure src="en/ardour7-recording.png" alt="Enregistrement" >}}

Pendant l'enregistrement, la piste armée capture les sons provenant de l'entrée. Tout son existant sur d'autres pistes sera joué normalement pendant l'enregistrement. Cela permet de jouer, de chanter ou de parler avec d'autres régions et pistes que vous avez déjà enregistrées ou incorporées dans votre session.

Pendant l'enregistrement, vous pourrez voir les _niveaux_ (l'amplitude en décibels) du son entrant, ainsi que les _pointes_ de la _forme d'onde_ qui apparaissent au fur et à mesure de l'enregistrement.

> [!NOTE]
> Si vous êtes loin de l'ordinateur sur lequel tourne Ardour et que vous avez besoin d'enregistrer de l'audio, une des options est d'ajouter le greffon appelé _Voice/Level Activate_ qui fait partie du "bundle" d'Ardour. Placez-le au début de la chaîne de du signal dans la boîte du processeur, c'est-à-dire tout en haut. Une fois que vous avez armé la piste et que vous avez activé le mode d'enregistrement, le fait de frapper des mains devant un micro ou de pincer une corde de guitare déclenchera le roulement du transport et donc l'enregistrement. Modifiez la valeur du seuil (mesurée en dBFS) pour qu'elle vous convienne.

### Éviter l'écrêtage ###

L'audio de la capture d'écran ci-dessous a été enregistré trop fort et a produit un "écrêtage" (clipping) (en d'autres termes, le signal enregistré était en dehors des limites de ce qui peut être représenté numériquement), ce qui entraîne une perte d'informations et une distorsion audible. Les pics d'écrêtage de la forme d'onde sont marqués en rouge.

{{< figure src="en/ardour7-clipping.png" alt="Ècrêtage" >}}

Le meilleur moyen d'éviter l'écrêtage est de contrôler le volume du signal audio entrant avant qu'il n'atteigne la carte son.
Par exemple, vous pouvez éloigner le microphone du son enregistré ou utiliser une table de mixage pour réduire le volume du signal entrant. 

Lorsque le signal audio a été enregistré dans les limites appropriées, vous ne devriez pas voir de crêtes rouges, et l'indicateur de niveau doit afficher un nombre négatif comme crête maximale (par exemple, une crête maximale de 1,5 mm). (par exemple, un pic maximum d'environ -3,0 décibels permet de s'éloigner confortablement du point d'écrêtage).

La plage de décibels entre la crête maximale de la région et le point d'écrêtage est communément appelée _headroom_. La pratique courante en matière d'enregistrement consiste à conserver de trois à six décibels entre le maximum du signal et le point d'écrêtage, le point d'écrêtage étant représenté par 0dB (zéro décibel). En d'autres termes, une région audio disposant d'une marge de manœuvre confortable aurait ses crêtes maximales entre -6dB et -3dB.

### Liste des régions ###

L'audio enregistré apparaît comme une nouvelle région dans la piste d'enregistrement. Comme toutes les régions, cette nouvelle région enregistrée sera disponible dans la liste _Régions_, à partir de laquelle vous pouvez la glisser-déposer dans d'autres pistes si nécessaire.

La région que vous venez d'enregistrer recevra automatiquement le nom de la piste où elle a été enregistrée, les différentes prises étant automatiquement numérotées. Dans la capture d'écran ci-dessous, "*Audio 1-1*" et "*Audio 1-2*" représentent deux enregistrements différents effectués sur une piste nommée "*Audio 1*".

{{< figure src="en/ardour7-region-list-recording.png" alt="Liste d'enregistrement de régions" >}}

Vous pouvez planifier et organiser votre session d'enregistrement en donnant des noms appropriés aux différentes pistes. Par exemple, une piste utilisée uniquement pour l'enregistrement des voix peut être nommée "Voix". De cette façon, les fichiers sonores enregistrés seront nommés en conséquence, et différentes prises apparaîtront dans la liste _Régions_, identifiées comme "Voix-1", "Voix-2", etc., plutôt que les noms génériques par défaut, comme "Audio 1".

Pour renommer une piste, il suffit de double-cliquer sur son nom (avant d'armer la piste pour l'enregistrer) et de taper le nouveau nom.

{{< figure src="en/ardour7-rename-track.png" alt="Renommer une piste" >}}

> [!NOTE]
> Avons-nous mentionné à quel point il est important de **sauvegarder votre travail souvent** ? Appuyez sur **Ctrl + S** dès maintenant. Prenez l'habitude de le faire toutes les quelques minutes.

**Poursuivre**

A ce stade, vous pouvez passer directement à la section [Arrangement de pistes](../../editing-sessions/arranging-tracks/) pour apprendre à arranger les régions dans une composition. Si vous prévoyez d'effectuer des enregistrements plus complexes que ceux que nous avons décrits ici, passez directement à la section plus compliqué que ce que nous avons abordé ici, en particulier avec une carte son multicanaux, ou à partir d'autres programmes audio compatibles avec JACK sur votre ordinateur, vous devriez également jeter un coup d'oeil à la section [Comprendre le Routage](../understanding-routing).

Suivant : [Arrangement de pistes](../../editing-sessions/arranging-tracks/) ou [Comprendre le Routage](../understanding-routing)