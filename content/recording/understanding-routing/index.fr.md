+++
title = "Comprendre le routage"
description = "Acheminer le signal dans Ardour"
chapter = false
weight = 4
featherlight = false
+++

Le routage d'un signal audio consiste à l'envoyer d'un endroit à un autre.

En plus d'acheminer les signaux audio vers et depuis Ardour, le routage joue un rôle important à l'intérieur même d'Ardour.
Des exemples d'utilisation du routage à l'intérieur d'Ardour incluent le routage de l'audio des pistes vers le bus _Master_ ou vers d'autres bus, créer des "envois", router les sorties des bus vers le bus _Master_, etc. (voir chapitre **Création d'une piste** pour une explication des pistes et des bus). Tous le routage, à la fois interne et externe à Ardour, est géré par JACK.

### Routage dans Ardour

Le routage standard des entrées, pistes et bus dans Ardour est déterminé lorsque une nouvelle session est créée dans les _Options avancées_ de la boîte de dialogue _Nouvelle session_(voir la page [Démarrer Ardour](../../getting-started/starting-ardour-on-ubuntu/)).
Par défaut, le routage est le suivant :

- Les entrées des périphériques audio sont acheminées vers les entrées des pistes.
- Toutes les sorties des pistes et des bus sont acheminées vers les entrées du bus maître.
- Les sorties du bus _Maître_ sont acheminées vers les sorties des périphériques audio.

Notez que lorsqu'un nouveau bus est créé, rien n'est acheminé vers son entrée.

Cette configuration de routage est judicieuse pour les sessions ne contenant que des pistes mais pour utiliser des bus (autres que le bus _Master_) ou pour être créatif avec les chemins des signaux audio à l'intérieur d'Ardour, nous devons être en mesure de changer le routage.

La fenêtre _Audio Connection Manager_ (également connue sous le nom de "patchbay") et la principale façon d'établir des connexions vers, depuis et à l'intérieur du mixeur d'Ardour. Vous pouvez ouvrir cette fenêtre avec le raccourci **Shift + Alt + A**, ou par le menu `Fenêtre >> Connexions Audio`.

![Manager de connexion audio](en/ardour7-audio-connections-in-menu.png?width=40vw)

La baie de brassage présente deux groupes de ports ; un ensemble de sources et un autre de destinations. Les sources et les destinations sont organisées par onglets. Les sources disponibles sont affichées verticalement sur le côté gauche, et les destinations sont affichées horizontalement en bas.

Dans la capture d'écran ci-dessous, vous remarquerez que l'onglet _Hardware_ est sélectionné en haut à gauche (c'est une source) et que l'onglet *_Ardour_* en haut à gauche (c'est une source), et que l'onglet *_Ardour Tracks_* est sélectionné comme destination en bas. Cela signifie que la matrice que vous voyez affiche les connexions à partir de sources sonores matérielles disponibles (par exemple, un microphone), dans des pistes Ardour existantes.  

![ACM 1](en/ardour7-audio-connection-manager-1.png?width=40vw)

Les points verts représentent une connexion. La capture d'écran ci-dessus nous indique que les sons entrants provenant de _capture\_1_ (la première source d'entrée de votre carte son, ou le microphone intégré de votre ordinateur portable) vont dans la piste Ardour nommée _Audio 1_, et que les sons entrants de _capture\_2_ vont dans l'entrée de la piste Ardour nommée _Audio 2_. 

Nous pouvons voir que _Audio 1_ est une piste Mono parce qu'elle n'a qu'un seul slot de connexion, alors que la piste _Audio 2_ est Stéréo car elle a deux slots (Gauche et Droite).

La capture d'écran suivante montre le chemin du signal depuis _Ardour Tracks_ (onglet vertical sélectionné) vers les bus Ardour (onglet horizontal sélectionné). Comme nous l'avons précédemment vu, le réglage par défaut pour toutes les _Pistes Ardour_ est que leur son va au bus _Master_.

![ACM 2](en/ardour7-audio-connection-manager-2.png?width=40vw)

Note : vous vous souvenez que _Audio 1_ est une piste Mono ? Nous avons vu dans la capture d'écran précédente que _Audio 1_ n'a qu'un seul slot d'entrée. Mais maintenant, sur la capture d'écran ci-dessus, vous voyez que "Audio 1" a deux sorties (gauche et droite). C'est normal :
nous définissons si une piste est Mono ou Stéréo par son *nombre d'entrées*, pas par ses sorties. Les pistes Mono ne contiennent qu'un seul canal audio, mais vous pouvez toujours choisir de placer le son à gauche ou à droite (ou n'importe où entre les deux). Pour plus d'informations à ce sujet, veuillez consulter le chapitre _Panning_.

Enfin, explorons quelques onglets supplémentaires dans le _Gestionnaire de connexions audio_ pour voir le son passer du bus _Master_ aux sorties matérielles (vos haut-parleurs ou votre casque) :

![ACM 3](en/ardour7-audio-connection-manager-3.png?width=40vw)

Comme vous pouvez le voir, l'onglet source sélectionné est maintenant _Ardour Busses_, et l'onglet destination est _Hardware_. Cette session n'a qu'un seul bus, le "master out" par défaut. Les points verts indiquent que tous les sons provenant du bus _Master_ sont dirigés vers les systèmes de lecture 1 et 2, qui sont les sorties de votre carte son. 

### Comment se connecter et se déconnecter ?

Pour établir une connexion, cliquez sur la case vide souhaitée dans la matrice. Un point vert apparaît pour indiquer que la connexion est établie.

Pour annuler une connexion, il suffit de cliquer sur un point vert existant et il disparaîtra.

Il existe une astuce que vous pouvez utiliser lorsque vous avez besoin d'affecter plusieurs sorties mono/stéréo à de nombreuses entrées mono/stéréo : au lieu de faire plusieurs clics uniques, dessinez une ligne de connexion. Voici comment procéder :

![Tracer des lignes de connexion](en/ardour7-drawing-connection-lines.gif?height=75vh)

### Exemple pratique de routage vers un bus 

Dans l'exemple de session suivant, il y a deux pistes de guitare et un bus inutilisé appelé bus _Guitar_, le tout en stéréo.

![ACM 4](en/ardour7-audio-connection-manager-4.png?width=30vw)

Supposons que vous souhaitiez envoyer la sortie des deux pistes de guitare au bus _Guitar_ au lieu du bus _Master_. Cela peut être utile pour contrôler le volume des deux guitares avec un seul chariot (dans ce cas, le fader du bus _Guitar_) ou pour placer deux instruments dans la même pièce virtuelle en utilisant un plugin de réverbération sur le bus. Ensuite, la sortie du bus _Guitar_, qui est la somme des deux guitares, va directement dans le bus _Master_.

Voici comment éditer le "patchbay" pour obtenir le routage désiré. Sélectionnez l'onglet _Ardour Tracks_ dans _Sources_ (onglets verticaux), et _Ardour Busses_ dans _Destinations_ (onglets horizontaux inférieurs).
Annulez les connexions existantes des deux pistes vers _Maître_.
Créez ensuite des connexions entre les deux pistes et le bus _Guitar_.
Le résultat final ressemblerait à ceci : 

![ACM 5](en/ardour7-audio-connection-manager-5.png?width=40vw)

Maintenant, les deux pistes de guitare sont acheminées vers le bus _Guitar_ et ne sont plus directement connectées au bus _Master_.
Nous nous assurons ensuite que le bus _Guitar_ est, à son tour, routé vers le bus _Master_ (le routage de sortie d'un bus est édité de la même manière que pour une piste), afin que nous puissions toujours entendre le son des deux pistes de guitare. Nous pouvons maintenant contrôler le volume des deux pistes de guitare en même temps en changeant le chariot du bus _Guitar_. De plus, nous pouvons maintenant ajouter des plugins au bus de guitare pour traiter le son des deux pistes de guitare ensemble.

### Vues spécifiques à la piste ou au bus du "Patchbay"

Le _Manager de connection audio_ (Patchbay) que vous ouvrez avec **Alt + P** vous montre la matrice complète de chaque source et de chaque destination disponible dans Ardour.
Parfois, c'est trop : vous voulez juste changer rapidement l'acheminement d'une entrée ou d'une sortie d'une seule piste, par exemple.
Ardour vous permet d'accéder à un sous-ensemble pertinent de connexions "Patchbay" lorsque vous cliquez directement sur le bouton **Entrées** ou **Sorties** d'une piste ou d'un bus dans la bande de mixage.

Le bouton **Entrées** se trouve en haut et le bouton **Sorties** se trouve en bas de la bande. En cliquant sur l'un ou l'autre, vous obtiendrez un menu d'options de connexion. Dans la capture d'écran ci-dessous, par exemple, vous devez cliquer sur le bouton **1/2** sous le nom de la piste _Guitar 1_ pour accéder à ce menu :

![Editeur mixeur entrées sorties](en/ardour7-editor-mixer-in-out.png?width=30vw)

Vous pouvez sélectionner une connexion à partir du menu, ou choisir _Routing Grid_ (grille de routage)  pour voir une version plus simple du _Gestionnaire de connexions audio_ avec seulement les options **Entrées** ou **Sorties** de la piste ou du bus sélectionné. 

### Toutes les connexions Ardour sont des connexions JACK

Il est important de réaliser que tous les routages que vous établissez ou que vous déconnectez dans Ardour sont en fait des routages JACK, que vous pouvez voir depuis d'autres applications comme _Qjackctl_ ou _Catia_, selon votre système d'exploitation.
Voici un exemple de fenêtre _Catia_ (Linux uniquement) affichant les mêmes connexions JACK évoquées ci-dessus :

{{< figure alt="Catia" src="en/Ardour4_Catia_Example.png" >}} 

## Poursuivre

Dans ce chapitre, nous avons vu comment gérer le routage à l'intérieur d'Ardour, ou entre Ardour et la carte son.
Cependant, l'une des forces de l'utilisation du système JACK est qu'il peut également gérer les connexions entre les applications sur le même ordinateur. Pour mieux comprendre comment cela fonctionne, nous vous invitons à consulter le chapitre _Routage entre applications_. Si vous préférez travailler uniquement avec Ardour, passez directement à la section _Arrangement des pistes_.

Suivant : [Routage entre applications](../routing-between-applications) ou [Routage des pistes](../../editing-sessions/arranging-tracks/)