+++
title = "La bande de mixage"
description = "Éléments de la bande de mixage dans Ardour"
chapter = false
weight = 1
+++

Le mixage est le processus de conversion de plusieurs pistes en un mélange stéréo ou multicanal où tous les instruments peuvent être entendus clairement.

## Outils de mixage

Les _niveaux_, le _panoramique_, l'_égalisation_ et la _compression_ sont les principaux outils utilisés pour obtenir un bon mixage. En plus de ces outils de base, une large gamme d'effets peuvent également être utilisés pour améliorer le son, tels que _reverb_ et _delay_. 

## Présentation de la bande de mixage

La _bande de mixage_ est la colonne verticale qui contient diverses commandes liées au flux du signal. Chaque piste et chaque bus d'Ardour possède sa propre bande de mixage. La bande de mixage est également l'outil principal que nous utiliserons dans le processus de mixage de nos pistes. Dans ce chapitre, nous aurons une vue d'ensemble de la bande de mixage, avec chaque section décrite. Nous fournirons également des références aux chapitres contenant des informations spécifiques à chaque aspect de la table de mixage.

## La bande de mixage de haut en bas

Les bandes de mixage sont accessibles à partir de la fenêtre _Editor_ et de la fenêtre _Mixer_ (raccourci **Alt+M** pour passer de l'une à l'autre). Les bandes de mixage dans l'une ou l'autre fenêtre (_Editor_ ou _Mixer_) se reflètent : toutes les actions effectuées sur une bande de mixage dans la fenêtre _Mixer_ sera reflétée dans la bande de mixage correspondante dans la fenêtre _Editor_ et vice-versa. La fenêtre de l'éditeur et la fenêtre du _Mixeur_ sont expliquées plus en détail dans le chapitre _Une vue d'ensemble de l'interface_. 

Dans la fenêtre _Editor_, vous pouvez voir la bande de mixage de la piste sélectionnée sur le côté gauche de la fenêtre. Si vous ne la voyez pas, appuyez sur **Shift+E** pour afficher la bande de mixage de l'éditeur.

### Vue d'ensemble

Nous voyons ici l'ensemble de la bande de mixage, telle qu'elle apparaît dans la fenêtre _Editor_ ou dans la fenêtre _Mixer_. 

![strip1](fr/Ardour4_Mixer_Strip_1.png?height=60vh)

### Modes standard et étroit

La bande de mixage peut être commutée entre la largeur normale et une largeur plus étroite pour économiser de l'espace. La partie supérieure de la bande de mixage, illustrée ci-dessous, permet de passer du mode normal au mode étroit à l'aide du bouton de gauche. Le bouton avec un œil masque entièrement la barre de mixage (vous pouvez la réactiver ultérieurement).
 
{{< figure alt="strip top" src="en/ardour7-narrow-wide-strip.png" >}}

Vous pouvez facilement repérer les différences entre les modes étroit et normal : des légendes plus courtes sur les boutons, les légendes des boutons, pas de légende pour l'indicateur de crête, etc.

### Nom de la piste et bouton d'acheminement

En continuant de haut en bas, la section suivante de la bande de mixage contient trois régions étroites. La première de ces régions affiche le nom de la piste (c'est le mot "Audio 1" dans l'image ci-dessous). La région suivante, nommée "1" dans l'image ci-dessous, est un bouton qui permet d'accéder au routage des entrées. Veuillez voir les chapitres _Comprendre le routage_ et _Enregistrer de l'audio_ pour plus d'informations sur le routage d'entrée. La dernière zone étroite contrôle l'inversion de phase (nous n'entrerons pas dans les détails de ce sujet dans ce tutoriel). 

{{< figure alt="strip 2" src="en/Ardour4_Mixer_Strip_2.png" >}} 

### Boîte du processeur 

La grande zone noire au bas de cette section est la _boîte de processeur_.
C'est là que vous pouvez ajouter des greffons, par exemple. Le flux de signal dans la bande de mixage se fait de haut en bas. Il commence par l'entrée du haut, le greffon le plus haut dans la boîte est le premier la chaîne d'effets, celui du bas est celui qui est appliqué en dernier.

La boîte de processeur contient toujours un processeur à curseur bleu. Il indique l'endroit de la chaîne de processeurs où se trouve l'atténuateur du canal principal - il s'agit de l'atténuateur affiché dans la moitié inférieure de la bande. Voir _Utilisation des greffons_ et _Utilisation des envois_ pour une discussion détaillée de cette zone.

![Vues et contrôles en ligne](fr/ardour7-vues-et-contrôles-en-ligne.png?width=50vw)

D'autres vues et contrôles sont possibles dans la boîte du processeur, comme le montre la capture d'écran ci-dessus.

1. _Affichage en ligne_. Certains greffons peuvent afficher un mini-aperçu de leurs réglages.
Par exemple, un égaliseur peut afficher un aperçu de la façon dont les différentes bandes de fréquences sont affectées. Et certains greffons sont écrits avec cet objectif en tête - fournir un aperçu rapide de quelque chose dans la bande de mixage. Ardour est livré avec deux plugins de ce type, un scope en ligne et un spectrogramme en ligne.

2. _Contrôles des greffons_. Il est possible d'ajouter des contrôles à différents plugins dans une bande de mixage. De cette façon, pour les paramètres que vous modifiez le plus souvent, vous n'avez pas besoin d'ouvrir la fenêtre d'un greffon à chaque fois, vous pouvez simplement faire glisser un curseur à gauche et à droite avec votre souris ou faire défiler la molette de la souris lorsque vous survolez un contrôle. Appuyez sur **Ctrl** pour réduire les incréments lors du glissement ou du défilement.

Pour contrôler ces deux fonctions, utilisez le sous-menu _Contrôles_ dans le menu du clic droit d'un greffon. Comme les affichages en ligne sont activés par défaut, tout ce que vous pouvez faire est de le désactiver (puis de le réactiver). Pour activer un contrôle pour un greffon, il suffit de cliquer sur son nom dans le menu.

![Sous-menu des contrôles dans Ardour 7](fr/ardour7-plugin-controls-submenu.png?height=60vh)

{{% notice tip %}}
Pour activer plusieurs contrôles pour un greffon, la façon la plus pratique est d'ouvrir le menu du clic droit, de survoler un contrôle et d'appuyer sur **Barre d'espace** de votre clavier, de survoler le contrôle suivant, d'appuyer à nouveau sur **Barre d'espace**, etc.
{{% /notice %}}

La partie suivante de la bande de mixage comprend des commandes pour le panoramique, l'enregistrement, la sourdine et le solo, entre autres.

### Panoramique

Le panoramique est généralement lié au placement des sons entre les haut-parleurs gauche et droit pour aider à séparer les instruments les uns des autres en les plaçant dans un espace dans différentes parties d'une pièce virtuelle.

En fonction du nombre de canaux dans une piste, Ardour fournira une interface utilisateur dédiée pour contrôler le panoramique. Dans la capture d'écran ci-dessous, une piste mono est à gauche et une piste stéréo est à droite :

![Mono vs. stereo panning](en/ardour7-mono-vs-stereo-panning.png?width=20vw)

Veuillez vous référer au chapitre _Panoramique_ pour plus d'informations.

### Solo et sourdine

Les pistes et les bus peuvent avoir deux états connexes supplémentaires : la mise en solo et la mise en sourdine.

Toute piste ou bus en _mute_ sera inaudible par le bus _Master_ ou le bus _Audition_. Le mélangeur de pistes contient également un bouton **Mute** miniaturisé, situé entre le bouton **Record Arm** et le bouton **Solo**. Un clic droit sur le bouton **Mute** vous permet d'accéder à des options avancées pour le comportement du bouton Mute.

![Bouton sourdine à l'état activé et désactivé](fr/ardour7-mute.png?width=20vw)

Lorsqu'une piste ou un bus est en _soloing_, toutes les autres pistes et bus sont sont inaudibles à travers le bus _Master_ ou le bus _Audition_, à moins que vous ne les mettiez en solo. Ainsi, si vous avez besoin de jouer seulement deux pistes ou un bus, vous devez les mettre en solo.
Si vous avez besoin de jouer seulement deux pistes sur huit, vous n'avez pas besoin de couper le son des six autres pistes, vous n'avez qu'à mettre ces deux pistes en solo. Veuillez noter que la mise en solo d'un bus ne rendra aucune piste silencieuse et vice-versa. 

![Bouton Solo](fr/ardour7-solo.png?width=20vw)

Lorsqu'une piste ou un bus est en solo, l'indicateur _solo_ dans le menu _Auxiliary Controls_ clignote en rouge. Cliquer sur l'indicateur de solo pendant qu'il clignote désactivera tous les solos de la session.

![Soloing](fr/ardour7-soloing-flash-button.png?width=40vw)

### Armer l'enregistrement

Le bouton _Rec_ arme la piste pour l'enregistrement, comme indiqué dans le chapitre _Enregistrement audio_.

![Armement pour l'enregistrement](fr/ardour7-arm-rec.png?width=20vw)

### Atténuateur, Fade/crête mètres

Le contrôle le plus important présent dans une bande de mixage est l'_atténuateur_, utilisé pour régler le gain global de la piste ou du bus correspondant. Le _compteur de crête_ indique la _valeur de crête_ de la piste sélectionnée et se trouve directement à droite de l'atténuateur. Chaque crête-mètre se compose d'un _bar graph_ dans le cas d'une piste mono, et de deux bar graph dans le cas d'une piste stéréo. Le petit champ rectangulaire au-dessus des crête-mètres indique la valeur de crête la plus élevée qui a été jouée sur cette piste jusqu'à présent.

{{< figure alt="strip 7" src="en/Ardour4_Mixer_Strip_5.png" >}} 

En cliquant sur le bouton de droite en bas de la bande de mixage (il s'agit de "post" dans l'image ci-dessus), vous pourrez sélectionner le _point de mesure_, par exemple l'entrée directe de la carte son, le signal "pre" ou "post" atténuateur.

Comme vous pouvez le voir dans l'image ci-dessous, il y a une version plus petite de la bande de mixage dans chaque piste, appelée _track mixer_, qui contient curseur horizontal, un crête-mètre vertical, ainsi que des boutons miniatures pour l'enregistrement de l'armement, la sourdine et le solo. Ils reflètent tous ceux qui se trouvent dans la bande de mixage de cette piste.

{{< figure alt="strip 6" src="en/Ardour4_Mixer_Strip_6.png" >}} 

Veuillez vous référer au chapitre _Mixage des niveaux_ pour des instructions plus détaillées sur l'utilisation des atténuateurs et des crête-mètres.

### Routage

Enfin, nous atteignons le bas de la bande du mélangeur. C'est là que se trouve le bouton **Output Routing**, marqué comme "Master" dans la capture d'écran précédente, car il se connecte à un bus appelé "Master". Ce point a été abordé plus tôt dans la section chapitre "Comprendre le routage".

## Poursuivre

Maintenant que nous avons vu les principales zones de la bande de mixage, nous pouvons passer au chapitre _Niveaux de mixage_ pour voir comment nous pouvons commencer à l'utiliser.

Suivant : [NIVEAUX DE MIXAGE](../mixing-levels)
