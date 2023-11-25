+++
title = "Niveaux de mixage"
chapter = false
weight = 2
+++

Les _niveaux_ sont les volumes de chaque piste par rapport aux autres.

Si vous ne pouvez pas entendre une ligne de basse au-dessus des autres instruments, une option évidente serait d'augmenter le volume de la ligne de basse. Les niveaux peuvent être réglés à l'aide de l'atténuateur dans la bande de mixage ou dans chaque piste, juste en dessous du nom de la piste.
La première étape du mixage est d'écouter tout ce qui a été enregistré et d'ajuster les niveaux de toutes les pistes de manière à ce que vous puissiez tout entendre clairement, mais d'une manière adaptée à la chanson.
Par exemple, la piste vocale est normalement plus forte que la guitare rythmique parce que la voix est le point central de la chanson.

## Utilisation de l'atténuateur

L'atténuateur est le principal moyen de contrôle des niveaux pour chaque piste. La valeur exacte des niveaux de la piste est affichée dans le petit champ rectangulaire situé au-dessus de l'atténuateur.
Vous pouvez modifier les niveaux en faisant glisser le curseur ou en tapant un nouveau nombre directement dans le rectangle avec le numéro.

Par défaut, l'atténuateur est réglé sur -0,0 dB, ce qui signifie que les niveaux de la piste ne sont pas modifiés. Dans la capture d'écran ci-dessous, l'atténuateur de la piste nommée "kick" est réglé sur -0,0 et l'indicateur de crête indique que la crête la plus élevée jusqu'à présent était de -5,1dB.

{{< figure alt="levels1" src="en/Ardour4_Mixing_Levels_1.png" >}} 

## Éviter l'écrêtage

Une autre tâche importante du mixage est d'éviter l'écrêtage. La valeur de crête sur la bande de mixage devient rouge lorsque le signal a atteint une valeur de crête supérieure à 0,0 dB. Vous pouvez utiliser cet outil pour surveiller les niveaux les plus élevés de votre piste pendant le mixage. 

Dans la capture d'écran ci-dessous, la piste de synthétiseur vient d'écrêter à +5,9. Vous pouvez également voir de petits bords rouges sur la forme d'onde elle-même, indiquant les endroits exacts où le son enregistré a été coupé.

{{< figure alt="levels2" src="en/Ardour4_Mixing_Levels_2.png" >}}

Cliquez sur le chiffre rouge de l'indicateur de crête pour le réinitialiser.

{{% notice tip %}}
Pour les besoins de l'exercice, essayez d'enregistrer votre voix de manière à ce qu'elle soit coupée. Écoutez comment la lecture est déformée.
{{% /notice %}}

Vous devez vous assurer que tout ce que vous envoyez à votre carte son ou que vous exporterez éventuellement sous forme de fichier son (par exemple pour le mastering d'un CD) ne dépasse **jamais** 0,0dB afin d'éviter l'écrêtage.

Si l'écrêtage se produit dans un son très percussif et qu'il est presque imperceptible, vous pouvez peut-être le cacher en diminuant le gain (par exemple, en normalisant la région à 0,0dB, puis en augmentant le gain). Cependant, l'écrêtage entraîne souvent une distorsion audible du son enregistré. La meilleure solution dans ce cas est d'enregistrer à nouveau avec des niveaux plus faibles.

## Poursuivre

Lorsque vous aurez terminé ce chapitre du tutoriel, vous devriez avoir une collection de pistes dont les niveaux sont bien ajustés les uns par rapport aux autres et qui ne sont pas écrêtées lorsqu'elles sont ajoutées dans le bus _Master_.
Une fois cette étape franchie, nous pourrons nous familiariser avec le panoramique dans le chapitre suivant, afin que notre mixage donne une forte impression d'espace stéréo.

Suivant : [PANORAMIQUE](../panning)