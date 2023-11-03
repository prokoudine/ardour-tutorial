+++
title = "Glossaire"
description = "Terminologie utilisée dans ce tutoriel Ardour"
chapter = false
weight = 2
+++

Ce glossaire propose de brèves définitions pour de nombreux termes utilisés dans le tutoriel Ardour3 FLOSS.

**Aggregate Device** (macOS)
: Un dispositif agrégé est une carte son virtuelle composée de deux cartes son physiques ou plus.
Les PowerBooks et les MacBooks fabriqués en 2007 ou plus tard auront besoin de cette configuration pour que _JACK_ ait des canaux d'entrée et de sortie. Cette configuration se fait dans l'application _Audio MIDI Setup_.

**AIFF**
: Format de fichier audio développé par Apple et couramment utilisé pour le son sans perte et sans compression. Les fichiers AIFF sont compatibles avec les systèmes d'exploitation Windows, Macintosh et Linux.

**ALSA** (Linux)
: Advanced Linux Sound Architecture. ALSA fournit des fonctionnalités audio et MIDI au système d'exploitation Linux.

**Amplitude** (mixage)
: La force d'un signal audio. L'échelle de l'amplitude est _*logarithmique_, puisqu'elle exprime le rapport physique de puissance entre un son et un autre. Dans les systèmes audio numériques, les niveaux sont généralement représentés par le nombre de décibels en dessous du point d'écrêtage de 0 dB.
Voir également _loudness_.

**Arm** (Piste à enregistrer/Ardour pour enregistrement)
: Action qui permet à Ardour de commencer l'enregistrement. Avant d'enregistrer dans Ardour, il faut d'abord armer une ou plusieurs pistes, puis armer Ardour.

**Artifacts** (sound)
: Distorsion perceptible ou diminution de la qualité du son générée en tant que sous-produit de certaines opérations de traitement du signal. Les artefacts sont généralement considérés comme des résultats indésirables ou inattendus d'une transformation sonore par ailleurs intentionnelle.

**Attenuation**
: Réduire le **niveau** d'un signal audio, généralement mesuré à l'aide d'une échelle _logarithmique_.
Voir aussi _gain_.

**Audio MIDI Setup** (macOS)
: L'utilitaire Audio MIDI Setup est un programme fourni avec le système d'exploitation macOS pour ajuster les paramètres de configuration de l'entrée et de la sortie audio de l'ordinateur et gérer les périphériques MIDI.

**Audio Unit Plugins**
: Audio Unit (AU) est une architecture de greffons dans les ordinateurs macOS. Il peut comme l'équivalent pour Apple du format de greffons VST de Steinberg. MacOS est livré avec une collection de greffons AU tels que l'égaliseur, des filtres, des processeurs dynamiques, des délais, des réverbérations, des étirements temporels, entre autres.

**Audition**
: L'auditeur est une bande de mixage cachée qui permet de lire des régions jouées par son intermédiaire. L'audition d'une région ne joue que cette région, sans traitement ni greffons.

**Automation**
: L'automatisation est l'ajustement automatique de divers paramètres tels que le gain, le panoramique ou les réglages des greffons.
Les changements peuvent être effectués une fois et seront ensuite répétés à chaque fois que le mixage sera rejoué.
Dans Ardour, l'automatisation est contrôlée par des lignes d'automatisation liées à chaque piste ou bus.

**Auxiliary Controls**
: Boutons situés en haut à droite des commandes de l'éditeur.
Fenêtre : Punch In/Out, Auto Play, Auto Return, Auto Input, Click, Solo et Audition.

**Amplitude**
: Le niveau ou l'ampleur d'un signal.
Les signaux audio ayant une amplitude plus élevée ont généralement un son plus fort.

**Bands** (egalisation)
: Les régions de fréquences particulières à amplifier ou à atténuer dans le processus d'égalisation.

**Bars** (musique)
: La barre de mesure est une unité métrique. Dans la notation occidentale, c'est l'espace compris entre deux lignes verticales tracées sur la portée. La durée spécifique d'une mesure dépend de sa _signature temporelle_ et du _tempo_ actuel de la musique.

**Bass** (Fréquences)
: Une manière générique de se référer aux basses fréquences du _spectre_ d'un son.

**Beat**
: La pulsation de base d'un morceau de musique.

**Beats per Minute**
: Les battements par minute (BPM) sont une mesure du tempo en musique. Un rythme de 60 battements par minute signifie qu'un battement se produit toutes les secondes ; 120 bpm équivaut à deux battements par seconde, et ainsi de suite. Les indications de BPM apparaissent généralement au début d'une partition musicale traditionnelle sous la forme d'une marque de métronome (par exemple, "la noire égale 60", ce qui signifie une noire par seconde).

**Bit**
: Un bit (**bi**nary dig**it**) est un nombre unique dont la valeur est soit 0 soit 1. 

**Bit Depth**
: Se réfère au nombre de bits utilisés pour écrire un _échantillon_. Dans la norme CD, chaque échantillon audio est représenté par un nombre de 16 bits. Cela donne 2\^16 (deux à la puissance seize = 65 536) valeurs possibles qu'un échantillon peut avoir. Une plus grande profondeur de bits signifie une plus grande _plage dynamique_ possible. Les enregistrements en studio sont généralement réalisés avec une profondeur de bits de 24 (voire 32) pour préserver le plus de détails possible avant le transfert sur CD. Les DVD sont réalisés en 24 bits, tandis que les jeux vidéo des années 1980 sont restés célèbres pour leur "son 8 bits" distinctif et rugueux. La profondeur de bits est également également appelée **word length**. 

**Buffer Size** (JACK)
: La mémoire tampon est une section de la mémoire spécifiquement allouée aux données temporaires du signal.
Les petites tailles de mémoire tampon permettent une latence plus faible et sont donc nécessaires pour les applications audio qui nécessitent une interaction en temps réel.
lors de l'utilisation d'applications audio nécessitant une interaction en temps réel. L'inconvénient est que la consommation de CPU pour le système est plus élevée avec des petites tailles de mémoire tampon. Des tampons plus grands (comme 512 ou 1024) peuvent être utilisés lorsqu'il n'y a pas de telles exigences.

**Built-in Input and Output**
: Ce sont les interfaces par défaut pour faire entrer et sortir le son de votre ordinateur si vous n'avez pas de carte son externe.
Dans un ordinateur portable, il s'agit des connexions communes d'entrée (micro) et de sortie (casque).

**Bus**
: Un bus est similaire à une piste, sauf qu'il ne contient pas ses propres régions. Vous ne pouvez pas enregistrer directement dans un bus ni y faire glisser des régions. La bande _Mixer_ représente verticalement le flux de signal d'un bus, tandis que le canevas principal affiche horizontalement des informations temporelles pour chaque bus (telles que les lignes d'automatisation).

**BWF**
: Broadcast Wave Format (BWF) est une extension du célèbre format audio Microsoft WAVE et est le format d'enregistrement de la plupart des enregistreurs numériques non linéaires utilisés pour la production cinématographique et télévisuelle.
Ce format de fichier permet d'inclure des métadonnées pour faciliter l'échange de données sonores entre différentes plates-formes et applications informatiques.

**CAF**
: CAF (Core Audio Format) est un format de fichier pour le stockage de données audio, développé par Apple.
Il est compatible avec macOS 10.4 et les versions ultérieures. Le format Core Audio est conçu pour surmonter les limites des anciens formats audio numériques, notamment AIFF et WAV. Tout comme le format de fichier QuickTime .mov, un format de fichier .caf peut contenir de nombreux formats audio différents, des pistes de métadonnées et bien d'autres données.

**Center Frequency**
: Dans certains greffons d'égalisation, l'utilisateur a la possibilité de choisir la fréquence centrale pour chaque bande de fréquence.
La fréquence centrale d'une bande sera celle qui sera la plus fortement atténuée ou renforcée par l'égaliseur pour cette bande spécifique. Les fréquences l'entourant seront moins affectées.

**Click** (Mouse)
: Dans ce manuel, il s'agit de cliquer sur le bouton gauche de la souris.
Lorsque le bouton droit est requis, l'action est appelée "clic droit".

**Clipping**
: L'écrêtage se produit lorsqu'un signal est trop élevé pour être reproduit. Tous les échantillons trop élevés seront simplement tronqués, ce qui entraîne une _distorsion_, une perte de détails audio et des artefacts de _fréquences_ qui n'étaient pas présents dans le son original.

**Clipping Point**
: Le point d'écrêtage d'un système numérique est appelé 0 dB.
Le niveau d'un son est mesuré en fonction de la distance qui le sépare du point d'écrêtage (-10 dB, -24 dB, etc.).

**Clocks**
: les deux gros afficheurs numériques en haut de la fenêtre _Editor_.
Il peuvent affiche le temps dans un certain nombre de formats : _Timecode_, _Bars:Beats_, _Minutes:Seconds_, et _Samples_.

**Compile**
: Les applications FLOSS sont distribuées sous forme de code source, qui est lisible par l'homme mais ne peut pas être exécuté comme une application réelle. Pour transformer ce code source en une application il doit d'abord être compilé. Lorsque vous téléchargez une image disque pour macOS ou un paquetage logiciel de votre distribution (comme Ubuntu, Debian ou Fedora), il a déjà été compilé pour vous. Cependant, si vous souhaitez ajouter des fonctionnalités (telles que la prise en charge des _VST Plugins_) que votre distribution ne fournit pas, alors vous devez compiler vous-même l'application à partir du code source.

**Compression**(DSP)
: Essentiellement, la compression rend les parties calmes d'un signal plus bruyantes sans modifier le niveau des parties 
les parties les plus bruyantes. Cela entraîne une réduction de la plage dynamique réelle : un son compressé est moins dynamique.

**Compression** (data)
: Comme toutes les autres données, les données audio peuvent être compressées de manière à utiliser moins d'espace sur le disque dur.
La compression telle que FLAC, ALAC ou MLP réduit la taille des fichiers audio par rapport à WAV ou AIFF sans modifier les données, ce que l'on appelle la compression sans perte. L'audio peut être compressé à une taille encore plus petite en utilisant la compression avec perte comme le MP3, l'Ogg Vorbis ou l'AAC, mais cela se fait en supprimant des données qui peuvent avoir un effet audible.

**Connections Manager**(JACK)
: La fenêtre dans JACK qui permet de gérer toutes les connexions entre les entrées et les sorties audio.

**CoreAudio**(macOS)
: CoreAudio fournit des fonctionnalités audio au système d'exploitation macOS.

**Cursor Modes**
: Il s'agit des six boutons situés juste en dessous des commandes de transport dans la fenêtre de l'éditeur. Les six fonctions différentes que le pointeur de la souris peut avoir dans Ardour sont les suivantes : Sélectionner/déplacer des objets, Sélectionner/déplacer des intervalles, Sélectionner la plage de zoom, dessiner l'automatisation du gain, étirer/rétrécir les régions, écouter des régions spécifiques.

**Decibels**
: Le décibel est une échelle logarithmique utilisée pour mesurer de nombreuses quantités, y compris le gain, le niveau ou l'intensité sonore d'un signal. Le décibel est généralement abrégé en dB et, dans le domaine de l'audio numérique, il indique généralement à quelle distance de 0 dBFS (le point d'écrêtage d'un système).

**Delay** (effet)
: Temps qui s'écoule entre un événement et un autre. En tant qu'effet audio, un délai prend un signal sonore entrant et le retarde pendant un certain temps. Lorsqu'il est mélangé au son original, on entend un "écho". En utilisant le _feedback_ pour renvoyer
le signal retardé dans le délai (généralement après avoir baissé son _gain_), on obtient des échos multiples avec une _décroissance_.

**Destructive Editing/Recording**
: Les actions destructives sont celles qui modifient ou effacent de façon permanente les données originales (fichiers sonores) au cours de l'édition ou de l'enregistrement.

**Distortion**
: La distorsion se produit lorsqu'un signal audio est modifié d'une manière ou d'une autre qui produit des _fréquences_ absentes de l'original. La distorsion peut être délibérée ou non, et peut être produite en conduisant le signal à un _point d'écrêtage_, ou en utilisant des transformations mathématiques pour modifier la forme (ou "forme d'onde") du signal (généralement appelée "mise en forme d'onde").

**Disk Image (.dmg)**
: Une image de disque est un fichier unique de l'intégralité du contenu et de la structure d'un support ou d'un périphérique de stockage de données. En double-cliquant sur un fichier .dmg sur un Mac, un périphérique virtuel sera monté sur votre bureau (comme si vous aviez inséré un périphérique USB ou un DVD, par exemple). De nombreux programmes d'installation de logiciels sous OS X sont
sont disponibles sous forme de fichiers .dmg.

**Driver**(JACK)
: Logiciel écrit pour contrôler le matériel. CoreAudio est le pilote de son pour Mac. ALSA est le pilote Linux le plus courant.

**DSP**
: Digital Signal Processing.

**Dynamic Range**
: Utilisé pour faire référence à la différence entre le son le plus fort et le son le plus faible qu'il est possible d'enregistrer, ainsi qu'à la quantité de détails qui peuvent être entendus entre ces deux extrêmes. Les sons qui sont trop faibles pour être
être enregistrés sont considérés comme étant en dessous du **plancher de bruit** du système d'enregistrement (microphone, enregistreur, carte son, etc.). Les sons qui
sont trop forts seront **distordus** ou **écrêtés**. 

**Edit** **Modes**
: Les trois modes d'édition disponibles (**Slide Edit**, **Slice Edit** et **Lock Edit**) contrôlent le comportement des opérations d'édition dans le **Main Canvas**.

**Edit Point**
: Point du canevas principal où se déroule une action telle que Coller. Il peut s'agir de la souris, de la tête de lecture ou d'un marqueur.

**Editor Window**
: Ardour propose deux façons de visualiser une session : l'éditeur et le mixeur.
L'éditeur représente les aspects temporels d'une session :
Il affiche les pistes et les bus comme des affichages horizontaux, avec le matériel dans les pistes (audio, MIDI, vidéo, données d'automatisation, etc.) le long de l'axe horizontal (temps).

**EQ**
: Voir Égalisation.

**Égalisation**
: L'égalisation (EQ) est le processus d'ajustement des niveaux relatifs des différentes fréquences dans un enregistrement ou un signal.
En d'autres termes, c'est le processus d'augmentation ou d'atténuation des différentes bandes de fréquences d'un son en fonction d'un objectif artistique choisi.

**Filter**
: Un type de traitement du signal qui supprime certaines fréquences. 

**Floating Point Numbers**
: Il s'agit simplement d'un nombre avec un point décimal. Le terme "virgule flottante" fait référence à la technique spécifique utilisée par l'ordinateur pour représenter une gamme plus large de valeurs entières et non entières.

**FLAC**
: Format audio sans perte à source ouverte généralement compatible avec Linux, Windows et Macintosh. Contrairement à AIFF et WAV, FLAC est un format compressé, permettant de réduire la taille des fichiers.

**FLOSS**
: FLOSS est l'acronyme de Free Libre Open Source Software. FLOSS Manuals est une collection de manuels sur les logiciels libres et open source, ainsi que sur les outils utilisés pour les créer et la communauté qui utilise ces outils.
Ils comprennent des auteurs, des éditeurs, des artistes, des développeurs de logiciels, des activistes, et bien d'autres.

**Format** (audio file)
: Les types de fichiers sonores sous lesquels les sons sont enregistrés. Parmi les plus courants on trouve AIFF, WAV, FLAC, mp3 et Ogg Vorbis. 

**ips** (fps)
: Images par seconde. La fréquence d'images est la fréquence (taux) à laquelle un dispositif d'imagerie produit des images consécutives uniques. Le terme s'applique aussi bien aux images de synthèse qu'aux caméras vidéo, aux caméras cinématographiques et aux systèmes de capture de mouvement. La fréquence des images est le plus souvent exprimée en images par seconde (IPS ou FPS en anglais). 

**Fréquence**
: Se réfère au nombre de fois qu'une oscillation se produit en une seconde.
La fréquence est mesurée en **Hertz**, et est corrélée à la **hauteur** d'un son. La fréquence est une échelle **linéaire**, tandis que la hauteur est **logarithmique**.
La hauteur "LA" au-dessus du do central a une fréquence de 440 Hz. Le "LA" situé une octave plus haut a une fréquence deux fois plus élevée (880 Hz).

**Gain**
: Augmentation du **niveau** d'un signal audio, généralement mesurée à l'aide d'une échelle **logarithmique**. Voir également **atténuation**.

**Grile**
: La grille est un système de points sur lesquels une région peut s'accrocher lors de son édition. Le paramètre grille peut être réglé sur la valeur "Pas de grille", "Grille" ou "Magnétique".

**Points de la grille**
: Points de la **grille** sur lesquels les régions s'accrochent lorsqu'elles sont actives.
Les points de la grille peuvent être des minutes, des secondes, des images vidéo, des mesures, des battements ou des multiples de battements.

**Hertz**
: Terme utilisé pour décrire le nombre de fois qu'une chose se produit en une seconde.
En audio numérique, il est utilisé pour décrire le **taux d'échantillonnage**, et en acoustique, il est utilisé pour décrire la **fréquence** d'un son. Les milliers de Hertz sont appelés kHz (kilo Hertz). 

**Plateau haut**
: Dans un **Égaliseur**, un **plateau** coupe ou augmente tout ce qui se trouve au-dessus (Haut) ou au-dessous (Bas) d'une fréquence spécifique.

**Headroom**
: La plage de **décibels** entre le **point culminant** de la région et le **point d'écrêtage** est communément appelée **headroom**. Il est courant d'enregistrer en conservant environ trois à six décibels de marge entre le maximum de votre signal et le point d'écrêtage.

**Jack Audio Connection Kit (JACK)**
: JACK est un système audio à faible latence qui gère les connexions entre Ardour et la carte son de votre ordinateur, et entre Ardour et d'autres programmes audio de votre ordinateur compatibles avec JACK. Vous devez installer JACK pour Linux ou JackOSX avant de pouvoir utiliser Ardour.

**JackOSX** (OS X)
: Le nom de la version de **JACK** qui fonctionne sur macOS. Voir **JACK** pour plus de détails.

**JackPilot**
: L'interface de contrôle fournie avec JackOSX. 

**Jack Server**
: Le serveur Jack est le "moteur" ou "backend" du kit de connexion Jack Audio.

**Jack Router**
: Le routeur Jack permet d'acheminer l'audio d'une application à une autre à l'aide du **serveur Jack**.

**JAMin**
: JAMin est l'interface Jack Audio Connection Kit Audio Mastering. JAMin est une application open source conçue pour effectuer un mastering audio des flux d'entrée stéréo. Il utilise **LADSPA** pour le traitement du signal numérique (DSP).

**Greffons LADSPA**
: Linux Audio Developer Simple Plugin API (LADSPA) est une norme qui permet de brancher des processeurs audio et des effets logiciels dans une large gamme de logiciels de synthèse et d'enregistrement audio. Par exemple, il permet à un développeur d'écrire un programme de réverbération et de le regrouper dans une "bibliothèque de greffons" LADSPA.
Les utilisateurs ordinaires peuvent alors utiliser cette réverbération dans n'importe quelle application audio compatible avec LADSPA. La plupart des applications audio majeures sous
Linux supportent LADSPA.

**Latence**
: La latence est le temps nécessaire pour traiter tous les échantillons provenant des applications sonores sur votre ordinateur et les envoyer à la carte son et de les envoyer à la carte son pour la lecture, ou pour collecter les échantillons de la carte son pour l'enregistrement ou le traitement.
Une latence plus courte signifie que vous entendrez les résultats plus rapidement, donnant l'impression d'un système plus réactif. Cependant, avec une latence plus courte, vous courez également un plus grand risque d'**artefacts** dans l'audio car l'ordinateur n'a peut-être pas assez de temps pour traiter le son avant de l'envoyer à la carte son. Une latence plus longue signifie moins d'artefacts mais au prix d'un temps de réponse plus lent. La latence est
mesurée en millisecondes.

**Limiting**
: Le processus par lequel l'amplitude de la sortie d'un appareil est empêchée de dépasser une valeur prédéterminée. 

**Linear**
: Une échelle de nombres qui progresse de manière additive, par exemple en ajoutant un (1, 2, 3, 4...), deux (2, 4, 6, 8...) ou dix (10, 20, 30, 40...).
La multiplication d'un signal audio, par exemple, par une échelle linéaire ou logarithmique produira des résultats très différents. L'échelle de **fréquence** est linéaire, alors que les échelles de **hauteur** et **gain** sont logarithmiques.

**Linux kernel**
: Le cœur du système d'exploitation GNU/Linux. Dans un **système en temps réel**, ce noyau est généralement **compilé** avec de nouveaux paramètres qui accélèrent l'utilisation des applications audio dans le système.

**Lock Edit**
: L'un des trois **modes d'édition** disponibles, Lock Edit est similaire à **Slice Edit**, mais les régions restent dans leur position d'origine, quelle que soit l'opération d'édition effectuée.

**Logarithmic**
: Une échelle de nombres qui progresse selon un certain rapport, par exemple de manière exponentielle (2, 4, 8, 16, 256...). Les échelles de **hauteur** et de **gain** sont logarithmiques, tandis que l'échelle de **fréquence** est linéaire.

**Lossless**
: Voir **Compression** (données) 

**Lossy**
: Voir Compression (Données)

**Loudness**
: Contrairement à l'**amplitude**, qui exprime la puissance physique d'un son, l'intensité sonore est la force perçue d'un son. Des sons de différentes fréquences peuvent être perçus comme ayant des intensités différentes, même s'ils ont la même amplitude.

**LV2** 
: LV2 est une norme ouverte pour les greffons et les applications hôtes correspondantes, principalement destinés au traitement et à la génération audio.
LV2 est un successeur simple mais extensible de LADSPA, destiné à remédier aux limites de LADSPA.

**Main Canvas**
: Dans la fenêtre d'édition d'Ardour, le canevas principal est l'espace situé juste en dessous des règles de la ligne de temps où les pistes et les bus sont affichés horizontalement.

**Master Out**
: Une sortie maître est un bus vers lequel toutes (ou la plupart) les pistes et autres bus envoient leur sortie. Il fournit un point de contrôle unique et pratique pour la sortie d'Ardour, et est un emplacement typique pour les effets globaux.
L'utilisation de la sortie master est activée par défaut, et le bus de sortie master est configuré pour être stéréo.

**Meter**
: Le regroupement des temps forts et faibles en unités plus grandes appelées mesures.

**Mixing**
: Le mixage audio est le processus par lequel une multitude de sons enregistrés sont combinés en un ou plusieurs canaux, le plus souvent en stéréo à deux canaux. Dans ce processus, les niveaux, le contenu en fréquence, la dynamique et la position panoramique des signaux sources sont généralement manipulés et des effets tels que la réverbération peuvent être ajoutés.

**MIDI**
: MIDI est un protocole industriel standard défini en^[](http://en.wikipedia.org/wiki/Musical_Instrument_Digital_Interface#cite_note-0)^ 1982 qui permet aux instruments de musique électroniques tels que les claviers, les ordinateurs et autres équipements électroniques de communiquer, de contrôler et de se synchroniser les uns avec les autres. Le MIDI permet aux ordinateurs, synthétiseurs, contrôleurs MIDI, cartes son, échantillonneurs et boîtes à rythmes de se contrôler mutuellement et d'échanger des données système. Le MIDI ne transmet pas de signaux audio, mais simplement des messages tels que le numéro de la note (hauteur), vélocité (intensité), note-on et note-off.

**Mixer Strip**
: Chaque piste et chaque bus est représenté dans la fenêtre du mixeur par une bande de mixage** verticale qui contient diverses commandes liées au flux du signal.
Il y a deux endroits dans Ardour où vous pouvez voir des bandes de mixage. La fenêtre du mixeur est l'endroit le plus évident, mais vous pouvez aussi en voir une seule sur le côté gauche de l'éditeur (shift + E pour cacher/afficher).

**Mixer Window**
: La table de mixage présente la session en représentant les pistes verticalement sous forme de Mixer avec des contrôles pour le gain, l'activation de l'enregistrement, la mise en solo, les greffons, etc. Le Mixer représente le flux de signal des pistes et des bus dans une session Ardour. La fenêtre du mixeur offre une vue qui imite une console de mixage traditionnelle.

**Monitoring**
: Le monitoring consiste à acheminer un mixage ou un sous-mixage spécifique de votre session vers des sorties séparées (comme un casque). Par exemple, un musicien en cours d'enregistrement peut vouloir écouter le matériel existant pendant qu'il joue. Ardour et JACK facilitent la mise en place de sorties de contrôle, car tout signal entrant peut être renvoyé vers n'importe quelle sortie, éventuellement mixé avec d'autres signaux et avec n'importe quel type de traitement sonore ajouté.

**Mono**
: Un fichier audio mono ne contient qu'un seul canal audio. Une piste mono dans Ardour n'a qu'une seule entrée et gère les fichiers sonores mono.

**MP3**
: Un **Format** de fichier son avec perte, compressé en taille. 

**Graphic Equalizer/Multi-Band Equalizer**
: Un égaliseur graphique (ou multibande) est constitué d'une banque de curseurs permettant de
d'augmenter ou d'atténuer les différentes fréquences d'un son.

**Non-destructive Editing/Recording**
: Il s'agit d'une forme d'édition où le contenu original n'est pas modifié au cours du montage. En coulisses, le fichier son original est conservé intact, et vos éditions sont en fait une liste d'instructions qu'Ardour utilisera pour reconstruire le signal de la source originale lorsque vous l'écouterez. Par exemple, la création de fade-ins et de fade-outs sur vos régions est un type d'édition non destructive.

**Normalize**
: Normaliser un signal audio signifie ajuster son **gain** de façon à ce qu'il atteigne le maximum autorisé par la carte son avant **écrêtage**.

**Normal Mode**
: Voir **Track Mode**. 

**Note value**
: Durée proportionnelle d'une note ou d'un silence par rapport à une unité standard.
unité standard. 

**Octave** (music) 
: Distance de 12 demi-tons entre deux notes. Dans **Hertz**, le rapport d'une octave est de 2:1. Par exemple, la note "La" au-dessus du do moyen a une fréquence de 440 Hz.
La note "La" une octave au-dessus a une fréquence de 880 Hz, et une octave en dessous a une fréquence de 220 Hz.

**Ogg Vorbis**
: Un Format de fichier son libre avec perte, compressé en taille.

**Panning**
: Le panoramique est l'emplacement des sons dans le **champ stéréo**. 

**Parametric Equalizer**
: L'égaliseur paramétrique est le type d'égaliseur** le plus polyvalent utilisé pour le **mixage** car il permet un contrôle étendu de tous les paramètres de filtrage. 

**Peaks**
: Les crêtes sont une représentation graphique des **niveaux** maximums d'une **région**. 

**Peak Meters**
: Les crête-mètres représentent les niveaux maximums d'une région et sont situés à côté de l'atténuateur dans la fenêtre du mixeur mais aussi dans le mixeur de piste de chaque piste.

**Hauteur**
: La hauteur représente la fréquence fondamentale perçue d'un son.
^[](http://en.wikipedia.org/wiki/Pitch_(music)#cite_note-0)^^Il est l'un des trois principaux attributs auditifs des sons, avec l'intensité la sonorité et le timbre. En MIDI, la hauteur est représentée par un nombre compris entre 0 et 127, chaque chiffre représentant une touche d'un clavier MIDI. La relation entre la hauteur et la **fréquence** est **logarithmique**. Cela signifie qu'un son qui est entendu une **Octave** (+12 notes MIDI) au-dessus d'un autre son est le double de la fréquence en Hz, tandis qu'un son une octave plus bas (-12 notes MIDI) correspond à la moitié de la fréquence.

**Tête de lecture**
: Dans Ardour, la tête de lecture est la ligne rouge qui se déplace dans le temps (c'est-à-dire de gauche à droite) pour indiquer la position de lecture actuelle.

**Greffon** (Plugin)
: En informatique, un greffon est un programme informatique qui interagit avec une application hôte (dans le cas présent, Ardour) pour fournir certaines fonctionnalités.
La réverbération, les filtres et les égaliseurs sont des exemples de greffons qui peuvent être utilisés dans Ardour en association avec des pistes ou des bus.

**Portaudio**
: Un ensemble de **pilotes audio** libres et gratuits pour Linux et macOS.

**Post-atténuateur** (greffon ou départ)
: Dans la bande de mixage, la zone post-atténuateur est l'espace noir situé sous le curseur de gain, auquel des greffons ou des départs peuvent être ajoutés. L'entrée de ces greffons et envois sera le signal *après* tout changement de gain manuel ou automatisé (d'où le terme "post-atténuateur").
In the Mixer Strip, the post-fader area is the black space below the
gain slider, to which plugins or sends can be added. The input of these
plugins and sends will be the signal *after* any manual or automated
gain change (thus "post-fader"). 

**Pre-attnuateur** (greffon ou départ)
: Dans la bande de mixage, la zone de pré-atténuateur est l'espace noir au-dessus de curseur de gain, auquel des greffons ou des départs peuvent être ajoutés. L'entrée de ces
greffons et envois sera le signal entrant *avant* qu'il ne soit affecté par tout changement de gain manuel ou automatisé contrôlé par le curseur (donc "pré-atténuateur").

**Quantization**
: Dans le traitement des signaux, la quantification peut se référer à la profondeur de bits (voir la définition de **profondeur de bits**). En MIDI, la quantification fait référence au processus d'alignement des notes sur une grille temporelle précise. Il en résulte que les notes sont sur des temps ou des fractions exactes de temps. Les séquenceurs MIDI comprennent généralement une fonction de quantification.

**Range**
: Un segment de temps. Les intervalles sont créés à l'aide de l'outil Sélectionner/Déplacer les intervalles et peuvent inclure une ou plusieurs pistes. Les Intervalles de boucles et de punch sont des types d'intervalles spéciaux qui sont créés et manipulés avec l'indicateur d'intervalle boucle/punch

**Real-time System**(Linux)
: Dans un **Real-time System**, Le **Linux kernel** est généralement recompilé
(reconstruit) avec de nouveaux paramètres, et d'autres paramètres du système sont optimisés, ce qui accélère l'utilisation des applications audio dans le système.

**Regions**
: Les régions sont les éléments de base de l'édition et de la composition dans Ardour. Chaque
région représente tout ou partie d'un fichier audio. La suppression d'une région n'enlève pas le fichier audio du disque.

**Region List**
: La liste des régions se trouve à droite de la fenêtre de l'éditeur et affiche toutes les régions associées à la session.

**Reverberation**
: La réverbération est la persistance du son dans un espace particulier après que la source sonore d'origine ce soit tue.^[](http://en.wikipedia.org/wiki/Reverberation#cite_note-0)^^^
Une réverbération est créée lorsqu'un son est produit dans un espace clos, ce qui provoque l'apparition d'un grand nombre d'échos, puis, lentement, au fur et à mesure, le son est absorbé par les murs et l'air. La réverbération numérique peut être ajoutée à un son dans Ardour grâce à l'utilisation de greffons.

**Right Click** (souris)
: Cliquez sur le bouton droit de la souris.

**Routing**
: Le routage consiste à envoyer un signal audio d'un endroit à un autre.
Les signaux peuvent être routés non seulement du monde extérieur vers Ardour et vice-versa, mais aussi à l'intérieur même d'Ardour (par exemple, d'une piste vers un bus).

**Rulers**
: Les règles sont les fines barres horizontales qui affichent la ligne temporelle, ce qui aide à voir quand une région ou un son commence ou il s'arrête exactement. Les marqueurs de mesure et de tempo, les marqueurs d'emplacement, les marqueurs d'intervalles et les intervalles de boucles et de punch sont eux aussi affichés avec les règles.

**Sample** (données)
: En audio numérique, un échantillon est le plus petit segment possible d'un son enregistré.
En audio CD, par exemple, il faut 44 100 échantillons pour obtenir une seconde de son enregistré et nous pouvons donc dire que le **taux d'échantillonnage** est de 44 100 **Hertz**.
Les échantillons ont également une **profondeur de bits** qui détermine la **plage dynamique** qu'il est possible d'enregistrer et de d'enregistrement et de lire. Les profondeurs de bits courantes sont de 16 (pour les CD audio), 24 (pour les enregistrements en studio et les DVD) ou 32 (pour les sons à l'intérieur de l'ordinateur).

**Sample** (musique) 
: Dans le domaine de la musique électronique, le mot "sample" peut désigner toute portion de son extrait d'un morceau de musique existant pour être réutilisé dans une nouvelle composition.

**Sampler**
: Un instrument de musique électronique ou un logiciel qui lit des sons enregistrés (ou **sample**) chaque fois qu'un message **note** lui est envoyé. La **hauteur** de la note détermine la vitesse ou la lenteur avec laquelle l'échantillon est joué, ce qui émule les changements de hauteur dans d'autres instruments. Les échantillons peuvent être joués en boucle (à plusieurs reprises) ou en une seule fois.

**Sampling Rate**
: La vitesse à laquelle l'ordinateur enregistre et lit le son, mesurée en **Hertz** représentant le nombre d'**échantillons** par seconde.
Les CD audio sont enregistrés et lus à 44 100 Hz (ou 44,1 kHz), tandis que les DVD audio fonctionnent à 96 000 Hz (96 kHz) et les gadgets grand public bon marché comme les enregistreurs vocaux, les jeux vidéo, les téléphones portables, les jouets et certains lecteurs MP3 utilisent souvent une fréquence de 22 050 Hz, voire moins. La fréquence d'échantillonnage détermine la **fréquence** la plus élevée qui peut être enregistrée ou jouée, qui est exprimée par le nombre de Nyquist (la moitié de la fréquence d'échantillonnage).
La lecture de sons à une fréquence d'échantillonnage différente de celle à laquelle ils ont été enregistrés entraînera leur lecture à la mauvaise vitesse.

**Send**
: Une sortie auxiliaire optionnelle pour une piste ou un bus.

**Session**
: Une session est l'ensemble des informations qui constituent un projet dans Ardour.
Chaque session est sauvegardée dans son propre dossier contenant toutes les données audio, régionales et paramétriques, ainsi qu'un fichier maître portant l'extension .ardour.

**Shelf**
: Dans un **Equalizer**, une **Shelf** coupe ou renforce tout ce qui se trouve au-dessus (High Shelf) ou au-dessous (Low Shelf) d'une fréquence spécifique.

**Slice Edit**
: L'un des trois **modes d'édition** disponibles, l'édition en tranches ne permet pas de faire glisser des régions, mais permet néanmoins d'effectuer des opérations de coupes (telles que couper, coller et diviser). L'espace entre les régions sera maintenu constant après toute opération d'édition qui l'affecte. Si vous supprimez la seconde moitié d'une région, par exemple, toutes les régions suivantes sur la même piste reculeront automatiquement dans la grille temporelle.

**Slide Edit**
: Un autre des trois **modes d'édition** disponibles, l'édition des diapositives est le mode par défaut. Il vous permet de faire glisser des régions horizontalement (au sein de la même piste) et verticalement (entre les pistes).

**SMPTE timecode**
: Ensemble de normes coopératives permettant d'étiqueter les images individuelles d'une vidéo ou d'un film avec un code temporel défini par la "Society of Motion Picture and Television Engineers". Les codes temporels sont ajoutés au film, à la vidéo ou au matériel audio et ont également été adaptés pour synchroniser la musique. Ils fournissent une référence temporelle pour le montage, la synchronisation et l'identification.

**Snap Mode**
: Les menus **Snap Mode** e trouvent juste en dessous des **Clocks**. Ils controlent le degré de **Quantization** de la grille de temps, par exemple, le degré de "snap" q'une **Région** audio a par rapoort au type de grille choisi.

**Snapshots**
: L'enregistrement d'un instantané dans Ardour est similaire à l'enregistrement de la session dans un nouveau fichier afin d'éviter d'écraser le fichier de session d'origine.
Un instantané contient l'état actuel de votre travail, tout en partageant tous les fichiers audio et de données de la session. Si vous essayez de trouver une fonction "Enregistrer sous" dans Ardour, l'enregistrement d'un instantané est probablement ce que vous recherchez. 

**Solo**
: Interrupteur à bascule que l'on trouve dans les commandes de piste et les bandes de mixage. Lorsqu'il est activé, seules les pistes solo enverront une sortie. Plusieurs pistes peuvent être marquées comme plusieurs pistes à la fois. Le bouton Solo général (rangée supérieure de commandes dans la fenêtre d'édition) peut être utilisé pour annuler la mise en solo de toutes les pistes en solo en même temps.

**Spectrum**
: La représentation d'un signal en termes de ses composantes de fréquence. 

**Stereo**
: Un fichier audio stéréo contient deux canaux audio (généralement appelés canaux gauche et droit). Une piste stéréo dans Ardour possède deux entrées et deux sorties afin d'enregistrer et de lire des fichiers stéréo.

**Stereo Field**
: Le champ stéréophonique est la perception de la localisation spatiale des sons basée sur un système de reproduction sonore à deux canaux (gauche et droit).

**Take**(recording)
: Une séquence de sons enregistrée en une fois.

**Tape Mode**
: Voir **Track Mode**. 

**Tempo**(music)
: La vitesse à laquelle les battements se produisent. Les indications précises de tempo sont mesurées en **bpm** (battements par minute), bien que des indications subjectives soient également subjectives sont également courantes dans les partitions (Allegro, Adagio, Très rapide, etc.).

**Terminal**
: Un "terminal" est l'interface textuelle qui permet d'utiliser un ordinateur en y tapant des commandes. Aujourd'hui, la plupart des utilisateurs d'ordinateurs uniquement sur une interface graphique pour contrôler leurs systèmes. macOS et Linux incluent un terminal qui peut faciliter certaines tâches pour certains utilisateurs.

**Timecode**
: Un code temporel est une séquence de codes numériques générés à intervalles réguliers par un système de synchronisation. La famille des timecodes SMPTE est presque universellement utilisée dans la production cinématographique, vidéo et audio.

**Time Signature** (musique) 
: Signe placé au début d'un morceau de musique (après la clef et l'armure) ou au cours de celui-ci, indiquant la mesure du morceau.

**Track**
: Une piste est un endroit où vous pouvez glisser une **Région** depuis votre **Liste de Régions** et où vous pouvez enreistrer des son qui viennent d'une source externe.
La bande de mixage représente verticalement le flux de signal d'une piste, tandis que le canevas principal affiche horizontalement des informations
pour chaque piste.

**Track Mode**
: **Track Mode** vous donne le choix entre **Normal Mode** et **Tape
Mode**. Normal Mode crée une nouvelle région pour chaque enregistrement **Take**,
alors que **Tape Mode** enregistre par dessus, la prise précédente de la piste est éliminée par chaque nouvelle prise.

**Transport**
: Les boutons situés dans le coin supérieur gauche de la fenêtre de l'éditeur, avec des commandes telles que Rewind, Play, Stop.

**Treble**(fréquences)
: Façon générique de désigner les hautes fréquences du **Spectre** d'un son.

**VST (Virtual Studio Technology)**
: [Steinberg](http://en.wikipedia.org/wiki/Steinberg) VST est une interface permettant d'intégrer des synthétiseurs audio logiciels et des plugins d'effets dans des éditeurs audio et des stations de travail numériques comme Ardour. VST et les technologies similaires utilisent le traitement des signaux numériques pour simuler le matériel traditionnel d'un studio d'enregistrement avec un logiciel. Des milliers de greffons existent, qu'ils soient commerciaux ou gratuits. VST a été créé par Steinberg. 

**WAV**
: Format de fichier audio développé par Microsoft et IBM et couramment utilisé pour les fichiers audio non compressés et sans perte. Les fichiers WAV sont compatibles avec les systèmes d'exploitation Windows, Macintosh et Linux.

**Waveform**
: Représentation visuelle d'un son dans le domaine temporel. Les formes d'onde sont dessinées
à l'intérieur des rectangles colorés représentant les régions dans le canevas principal.

**Word length**
: Voir **Bit Depth**. 