+++
title = "Mise en place de la ligne de temps"
chapter = false
weight = 5
+++

Une fois que vous aurez importé quelques fichiers audio dans Ardour, que vous les aurez lus et que vous vous serez familiarisé avec l'interface utilisateur, vous voudrez peut-être affiner les réglages de différentes parties de l'interface utilisateur en fonction de vos besoins. Les paramètres de la ligne de temps sont l'une des options les plus évidentes, car ce que vous voulez voir sur la ligne de temps dépend largement du type de matériel sur lequel vous travaillez.

Les utilisateurs créant des pièces de théâtre audio, des documentaires, des reportages ou des paysages sonores peuvent souhaiter utiliser les minutes et les secondes comme unités, tandis que ceux qui enregistrent des groupes ou produisent de la musique musique électronique utiliseront probablement des mesures et des battements. Les producteurs vidéo trouveront un timecode à l'image par seconde pratique, tandis que ceux qui souhaitent une précision extrême peuvent même utiliser des échantillons. Tous ces éléments peuvent être visualisés dans Ardour et utilisés comme moyen d'organiser vos régions et vos montages.

Parlons maintenant de la configuration des horloges, du snapping et des règles de la ligne de temps.

## Horloges primaires et secondaires

Il y a deux horloges en haut de la fenêtre _Editor_ qui peuvent afficher l'heure dans un certain nombre de formats : *Timecode*, *Bars:Beats*, *Minutes:Seconds*, et *Echantillons*. Faites un clic droit pour changer le format de chacune des deux horloges.

![Unités d'horloge](en/Ardour6_Clock_Units.png?width=30vw)

Ces horloges sont appelées les horloges de transport. Celle de gauche est l'horloge de transport primaire et celle de droite l'horloge de transport secondaire. L'avantage d'avoir deux horloges de transport est que vous pouvez voir la position de la tête de lecture dans deux unités de temps différentes sans avoir à modifier les paramètres.

Si vous n'avez jamais besoin de la deuxième horloge, vous pouvez la désactiver complètement. Allez dans `Edit > Preferences > Appearance > Toolbar` et désactivez la case _Display Secondary Clock_.

Veuillez consulter le manuel Ardour pour plus d'informations sur les horloges.
[les horloges](http://manual.ardour.org/ardours-interface/using-ardour-clock-displays/).

## Modes d'accrochage

Les paramètres d'accrochage sont situés juste en dessous des horloges, à droite. Ils contrôlent la _quantification_ de la grille temporelle, c'est-à-dire les unités de la grille temporelle qui sont divisée et dans quelle mesure les régions audio et les notes MIDI sont accrochées lorsque l'accrochage est activé. Par exemple, vous pouvez faire un snap sur des secondes entières lorsque vous faites glisser une région audio ou vous pouvez faire un accrochage sur une note 1/16 lors de la création ou de l'édition de notes MIDI.

Il existe un commutateur global, _Snap_, puis une liste déroulante de presets de quantification de la grille de quantification de grille : _Bar_, _1/4 note_, _1/8 note_ etc, _Timecode_, _Minutes et Secondes_, _CAD frames_, et plus encore.

![Snap](en/Ardour6_Snap_Options_et_Contrôles_de_blocage.png?width=20vw)

Lorsque le préréglage de quantification _No Grid_ est sélectionné, aucune grille ne s'affiche sur le canevas des pistes/bus. Dans ce cas, avec le snapping désactivé, rien ne s'accrochera. Et avec le snapping activé, les régions et les notes ne s'accrocheront qu'aux marqueurs d'emplacement.

## Ligne de temps

La _timeline_ est située sous les paramètres d'accrochage, juste au-dessus du canevas principal.
principal. En cliquant avec le bouton droit de la souris sur les étiquettes de la timeline (en cliquant avec le bouton droit de la souris sur la zone de gauche où les mots "Timecode, Bar:Beats, Meter" etc. sont affichés), vous pouvez cocher les cases pour afficher ou masquer les différents types d'informations temporelles.

{{< figure alt="Timeline" src="en/ardour7-timeline-rulers.png" >}}

**Minutes/Secondes**
: Pour afficher les minutes et les secondes sur la ligne de temps, faites un clic droit sur les étiquettes de la ligne de temps et sélectionnez _Mins:Secs_.

**Mesures/Battements**
: Pour afficher les mesures et les battements sur la ligne de temps, cliquez avec le bouton droit de la souris sur la ligne de temps et sélectionnez _Bars & Beats_.
: Il est possible de définir une signature temporelle et un tempo pour l'ensemble de la session Ardour. Ardour, ainsi que de les modifier à différents moments de la même session. Pour plus d'informations à ce sujet, veuillez consulter le chapitre _Configuration de la signature temporelle_.
Time Signature_.

**Timecode**
: Pour travailler avec le timecode vidéo SMPTE, vous devez d'abord définir le _timecode fps_ (frames per second). Ceci peut être trouvé dans l'onglet timecode de la fenêtre _Session Properties_ (`Session > Properties` dans le menu ou le raccourci **Alt+O** raccourci).

{{< figure alt="Timecode" src="fr/Ardour6_Timecode.png" >}}

Une fois que vous avez fait cela, assurez-vous de rendre la règle _Timecode_ visible en cliquant avec le bouton droit de la souris sur la timeline et en cochant la case _Timecode_. 

## Poursuivre

Maintenant que vous avez configuré la ligne de temps, passez au chapitre sur l'installation des greffons. Cela vous sera utile dans le prochain chapitre lorsque vous vous apprendrez à enregistrer le MIDI.

Suivant : [INSTALLER DES GREFFONS](../installing-plugins)
