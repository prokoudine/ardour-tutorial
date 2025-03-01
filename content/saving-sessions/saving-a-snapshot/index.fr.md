+++
title = "Sauvgarder un instantané"
description = "Comment sauvegarder et rappelerun instantané d'une session Ardour"
chapter = false
weight = 2
+++

Un _snapshot_ est une représentation de l'état actuel d'une session. En résumé, c'est comme version de votre projet en donnant à chaque version un nom significatif et descriptif. Même si ce n'est pas vraiment exposé aux utilisateurs, chaque session a toujours au moins un instantané qui est ce que vous avez à ce moment-là.

Supposons que vous ayez enregistré une chanson dans votre home studio et que vous essayiez différents arrangements pour voir lequel fonctionne le mieux. Au lieu de créer plusieurs sessions et de copier des fichiers entre elles, vous pouvez faire des instantanés chaque fois que vous pensez avoir quelque chose qui vaut la peine d'être conservé. À tout moment, vous pouvez sauvegarder l'état actuel de la session et passer à un instantané antérieur pour comparer vos arrangements.

## Enregistrer un instantané

Ardour propose deux commandes dans le menu _Session_ pour créer un instantané :

**Snapshot (& continuer à travailler sur la version actuelle)**
Vous créerez un nouvel instantané et continuerez à travailler sur la version originale.
Tout nouvel enregistrement écrasera l'état actuel du projet, l'instantané nouvellement créé ne sera pas affecté.
Modèle mental : "Je pense que je suis sur le point de changer les choses de manière importante,
j'ai donc besoin d'une sauvegarde si tout va de travers dans mon expérience".

**Snapshot (& passage à la nouvelle version)**
Vous créerez un nouvel instantané et travaillerez sur cette version. Toutes nouvelles
sauvegardes que vous faites affecteront le nouvel instantané jusqu'à ce que vous reveniez à l'instantané d'origine.
Modèle mental : "C'est très intéressant, explorons cette idée plus avant et revenons à la précédente si elle s'avère être une impasse".

{{< figure alt="snapshots" src="en/ardour7-snapshot-menu.png" >}}

Par défaut, le programme nomme le nouvel instantané en fonction de la date et de l'horodatage actuels de votre système.
Si vous le souhaitez, vous pouvez changer le nom pour un nom qui correspond mieux à la session sur laquelle vous travaillez.

{{< figure src="en/ardour7-snapshot-name.png" alt="snapshots" >}}

## Rappel d'instantanés

Vous pouvez rappeler un instantané sauvegardé via l'onglet _Snapshots_ dans la zone de droite.

{{< figure src="en/ardour7-snapshot-list.png" alt="snapshot2" >}}

Vous y voyez quelques instantanés que nous avons créés, et l'entrée _my_session_ représente l'état d'origine de notre session.

Cliquez sur n'importe quel instantané de la liste pour le recharger.

**Poursuite**

Il est parfois utile d'avoir un point de départ par défaut pour les nouvelles sessions. Par exemple, pour une configuration que vous utilisez tout le temps lorsque vous démarrez un nouveau projet. Pour apprendre à le faire, veuillez passer à la section suivante intitulée _Sauvegarde d'un Modèle_.
