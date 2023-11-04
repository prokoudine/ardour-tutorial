+++
title = "Qu'est-ce que l'audio numérique ?"
description = "Qu'est-ce que l'audio numérique ?"
chapter = false
weight = 3
+++

**Ardour** est une station de travail audio numérique (STAN). Avant de l'utiliser pour enregistrer et éditer du son, il peut être utile de revoir le fonctionnement de l'audio numérique.

## Fréquence et gain

Imaginez un haut-parleur. Pour déplacer l'air devant lui et produire un son, la membrane du haut-parleur doit vibrer d'avant en arrière à partir de sa position centrale (au repos).

Le nombre de fois que la membrane vibre chaque seconde détermine la _fréquence_ (la note, ou _pitch_) du son que vous entendez. La distance parcourue par la distance parcourue par la membrane à partir de son point de repos détermine l'_amplitude_ (le volume ou la "puissance") du son. Normalement, nous mesurons la fréquence en Hertz_ (Hz) et l'amplitude en _décibels_ (dB).

Un microphone fonctionne comme un haut-parleur à l'envers : les vibrations de l'air provoquent la vibration de sa membrane. Le microphone transforme ces vibrations acoustiques en un courant électrique. Si vous branchez ce microphone sur la carte son d'un ordinateur et que vous commencez à enregistrer, la carte son effectue des milliers de mesures de ce courant électrique chaque seconde et les enregistre sous forme de nombres. Le nombre d'échantillons (c'est-à-dire de mesures) recueilli par seconde s'appelle le "taux d'échantillonnage" et le nombre de valeurs possibles pour chacun de ces échantillons est appelé la _profondeur de bit_. La combinaison de la fréquence d'échantillonnage et de la profondeur de bits indique dans quelle mesure le signal numérique peut reproduire le son enregistré.

## Pics et écrêtage

Lorsque Ardour affiche les échantillons qui ont été enregistrés, ils apparaissent sous la forme d'une onde telle que nous la voyons ci-dessous. La ligne horizontale centrale indique la membrane du haut-parleur au repos, et les _pics_ de la forme d'onde indiquent l'_amplitude_ maximale.

{{< figure src="en/Ardour4_Digital_Audio_Waveform.png" alt="Waveform" >}}

Si nous prenons une forme d'onde et que nous augmentons fortement son amplitude, certains des pics peuvent maintenant se situer en dehors de la plage que l'ordinateur peut représenter numériquement. L'incapacité de l'ordinateur à représenter les pics en dehors de la plage d'amplitude est appelée "écrêtage", ce qui entraîne une perte permanente des données numériques, ainsi qu'une modification de la qualité du son qui est reconnaissable comme une _distorsion_. Ardour marque les pics écrêtés avec la couleur rouge, comme on peut comme on peut le voir dans l'image ci-dessous.

{{< figure src="en/Ardour4_Digital_Audio_Clipping2.png" alt="Clipping" >}}

Dans l'image ci-dessus, on peut également voir la _bande de mixage_ à l'extrême gauche, qui donne une mesure courante des pics, ainsi qu'une indication en haut des _peak meters_ montrant la crête maximale jusqu'à présent. Le chiffre rouge indique qu'il y a eu écrêtage.

{{% notice tip %}}
L'écrêtage peut souvent se produire au moment de l'enregistrement si vous réglez le niveau du microphone à un niveau trop élevé. 
{{% /notice %}}

La plage de décibels entre la crête maximale de la région et le point d'écrêtage est communément appelée _headroom_, et la pratique courante d'enregistrement consiste à conserver environ 3 à 6 décibels de "headroom" entre le maximum du signal et le point d'écrêtage, lui-même étant représenté par 0 dB (zéro décibel). En d'autres termes, une région audio avec une marge confortable aurait ses pics maximums entre -6 dB et -3 dB.

De plus, comme les crêtes des signaux audio s'additionnent, il faut faire attention lorsque l'on mélange (_mixing_) plusieurs sources pour éviter que les signaux combinés ne s'écrêtent.

## Fréquence d'échantillonnage et profondeur de bits

Pour rendre l'audio lisible sur un disque compact, par exemple, l'ordinateur doit générer 44 100 échantillons par seconde. La fréquence d'échantillonnage détermine la plus haute fréquence qui peut être enregistrée ou lue par l'ordinateur. Un taux d'échantillonnage de 44,1 kHz signifie que la fréquence la plus élevée qui peut être représentée est
un peu moins de 22,05 kHz. L'ouïe humaine normale se situant dans une plage comprise entre 20 Hz à 20 kHz environ, cette fréquence est communément acceptée comme une fréquence d'échantillonnage raisonnable. Parmi les autres fréquences d'échantillonnage couramment utilisées, citons 48 kHz (par ex. pédales multi-effets) ou 96 kHz (DVD audio).

Chaque échantillon est enregistré sous la forme d'un nombre de 16 bits. Un _bit_ est un élément d'information information qui est soit 0 soit 1. Si 16 bits sont réunis pour former un échantillon, il y a 2^16 (65 536) valeurs possibles pour chaque échantillon.

Ainsi, nous pouvons dire que les fichiers audio de qualité CD ont une fréquence d'échantillonnage de 44,1 kHz et une _profondeur de bits_ de 16 bits. Les enregistrements musicaux professionnels sont généralement mixés 24 bits pour préserver le maximum de détails avant d'être mixés en 16 bits pour le CD. Les anciens jeux vidéo ont un son rugueux caractéristique, utilisant seulement 8 bits. En augmentant la fréquence d'échantillonnage, nous sommes capables d'enregistrer des fréquences sonores plus élevées, et en augmentant la profondeur de bit, nous pouvons utiliser une plus grande _plage dynamique_ (la différence entre les sons les plus faibles et les plus forts qu'il est possible d'enregistrer et de lire).

## Poursuivre

Dans le prochain chapitre, nous lancerons Ardour sur Ubuntu Linux et apprendrons les bases de l'interface utilisateur.

Next: [Démarrer Ardour](../../getting-started/starting-ardour/).
