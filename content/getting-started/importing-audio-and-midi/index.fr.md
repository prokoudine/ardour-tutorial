+++
title = "Import audio et MIDI"
description = "Importer des fichiers audio et MIDI dans des pistes Ardour"
chapter = false
weight = 4
+++

Vous pouvez réutiliser des fichiers audio et MIDI existants en les ajoutant comme régions sur des pistes existantes ou nouvelles. Pour ce faire, appuyez sur le raccourci **Ctrl+I** ou allez dans le menu `Session > Import` pour ouvrir la boîte de dialogue _Add Existing Media_, sélectionnez un fichier d'intérêt et l'importer.

{{< figure alt="Add Media" src="en/ardour7-import-as-new-tracks.png" >}} 

Certains paramètres sont les mêmes pour l'audio et le MIDI, d'autres sont spécifiques au format.

## Lecture de fichiers existants

Avant d'importer un fichier, il est bon de s'assurer que c'est le bon. Dans la partie droite de la boîte de dialogue _Ajouter un média existant_, vous verrez une section vous permettant d'inspecter les propriétés du fichier que vous avez sélectionné. Vous y verrez le nom, le nombre de canaux, la fréquence d'échantillonnage, le format et la longueur du fichier ainsi que les balises que vous avez choisi d'ajouter au fichier.

Le bouton **Jouer** vous permet de prévisualiser le fichier. Vous pouvez également sélectionner**Lecture automatique** si vous souhaitez écouter un fichier sonore dès que vous cliquez dessus dans le navigateur de fichiers (sans avoir à appuyer sur le bouton **Lecture**).

Pour les fichiers MIDI, vous pouvez sélectionner un instrument virtuel qui sera utilisé pour jouer le fichier MIDI sélectionné. le fichier MIDI sélectionné, bien que vous ne puissiez pas sélectionner un patch de synthétiseur particulier.

## Choix des pistes et du point d'insertion

Il existe des scénarios courants pour l'import de fichiers multimédias : l'import de plusieurs fichiers audio en tant que nouvelles pistes et les insérer dans le début de la session, importer plusieurs fichiers audio dans la liste des sources disponibles pour une utilisation ultérieure, import d'un fichier MIDI dans une piste existante à la position de la tête de lecture, etc. Il y a donc deux options importantes ici : où insérer une région généralement (quelle piste, si c'est le cas), et à quel endroit de la timeline insérer.

La liste déroulante _Add files ..._ vous permet de choisir la première option, et la liste déroulante _Ajouter des fichiers ..._ vous permet de choisir la première option, et la liste déroulante _Insérer à_ vous permet de choisir la seconde.

## Insertion dans la liste des sources

Commençons par le scénario où vous importez quelques fichiers audio dans la liste des sources.

{{% notice tip %}}
Si vous n'avez pas de fichiers audio appropriés sur votre disque dur pour suivre ces étapes, visitez [freesound.org](http://www.freesound.org/)), où vous pouvez trouver une grande grande collection d'échantillons du domaine public et sous licence Creative Commons dans une dans une variété de taux d'échantillonnage et de formats.
{{% /notice %}}

Sélectionnez quelques fichiers et dans la liste déroulante _Add files..._ choisissez _to source source_. Assurez-vous que les options _Mapping_ indiquent _une région par fichier_.

{{< figure alt="Ajouter à la liste des sources" src="en/ardour7-to-source-list.png" >}} 

Vous remarquerez que l'option _Copier les fichiers dans la session_ est cochée par défaut.
Cela fera une copie du ou des fichiers importés dans le dossier de la session actuelle. C'est plus sûr, mais cela utilise plus d'espace disque. Si vous décochez cette option (ce qui n'est pas recommandé !), Ardour utilisera le fichier son à partir de son emplacement actuel sur le disque dur. Dans ce cas, si le fichier est déplacé vers un nouvel emplacement sur le disque dur, vous rencontrerez des difficultés, car Ardour ne pourra pas le retrouver la prochaine fois que vous ouvrirez cette session. **Il est fortement recommandé de laisser cette case cochée (_Copier les fichiers dans la session_)**. 

Cliquez sur **OK** pour continuer.

Le(s) fichier(s) que vous avez importé(s) apparaîtra(ont) dans votre liste _Sources_. Cette liste est située à l'extrême droite de la fenêtre de l'éditeur. Si vous ne la voyez pas, assurez-vous que la case _Montrer la liste de l'éditeur_ est cochée dans le menu _Visualisation_.

!Liste de l'éditeur](fr/ardour7-audio-imported-to-sources-list.png?height=50vh)

En faisant glisser et en déposant un fichier audio répertorié dans la liste des _Sources_ sur le canevas principal, vous pouvez l'insérer dans une piste existante ou nouvelle. Si vous le faites glisser dans une piste existante, il y sera ajouté. Si vous le faites glisser sur l'espace vide sous les pistes existantes, une nouvelle piste sera automatiquement créée pour pour l'accueillir.

Relâchez le bouton de la souris pour terminer l'opération de glisser-déposer. Une nouvelle région sera insérée à l'endroit exact où vous l'avez déposée.

{{% notice tip %}}
Si un fichier son est sélectionné dans la liste de l'éditeur (c.-à-d. s'il est surligné en bleu), la prochaine fois que vous cliquerez sur le nom de ce fichier, Ardour pensera que vous essayez de renommer la région (le nom deviendra éditable). Il est plus probable que vous essayiez simplement de cliquer pour glisser et déposer le fichier sur une piste. Pour cliquer et faire glisser une région précédemment _surlignée_ depuis la liste, vous devez pointer et cliquer dans l'espace vide juste avant ou après le nom.
{{% /notice %}}

Important : vérifiez toujours que vous placez des régions stéréo sur des pistes stéréo.
Si vous faites glisser un fichier stéréo sur une piste audio mono, seul le canal gauche sera utilisé. Dans la capture d'écran ci-dessous, un fichier stéréo avec des canaux gauche et droit très distincts ont été glissés sur une piste stéréo et une piste nono. Remarquez que dans la piste mono, seul le canal gauche est affiché (et lu).

{{< figure alt="Stereo Mono" src="en/Ardour4_Stereo_Mono_Comparison.png" >}} 

## Importer directement sur une piste

Comme mentionné précédemment, la boîte de dialogue _Ajouter un média existant_ vous permet également d'importer des fichiers audio directement sur des pistes.

Choisissez _Ajouter des fichiers... comme nouvelles pistes_ pour créer automatiquement une nouvelle piste et y ajouter le fichier sélectionné. La piste sera nommée d'après le nom du fichier audio.

{{< figure alt="Ajouter comme nouvelles pistes" src="en/ardour7-import-as-new-tracks.png" >}} 

Si vous avez précédemment sélectionné une ou plusieurs pistes, le menu affiche l'option supplémentaire _Ajouter des fichiers... aux pistes sélectionnées_ pour ajouter un fichier sonore dans la piste sélectionnée déjà existante.

Notez que si vous importez un fichier MIDI multipiste, Ardour créera toujours une nouvelle piste pour une piste existante dans le fichier MIDI et les mappera en conséquence.

Lorsque vous ajoutez des fichiers en tant que nouvelles pistes, notez que les options _Mapping_ vous permettent de choisir entre _une piste par canal_ et _une piste par fichier_. Pour les besoins de ce tutoriel, choisissez _une piste par fichier_, sinon les canaux droite d'un fichier stéréo seront divisées en deux pistes distinctes.

## Choisir le point d'insertion

Lorsque vous utilisez l'une des options ci-dessus (_Ajouter comme nouvelle piste_ ou _Ajouter aux pistes sélectionnées_), vous devez également choisir le point d'insertion. Dans la capture d'écran ci-dessous, nous choisissons _début de session_.

{{< figure alt="Insert At" src="en/ardour7-insert-point-list.png" >}} 

La région apparaît dans une nouvelle piste de la session. La nouvelle piste reçoit automatiquement le nom du fichier son importé.

Le fichier son apparaîtra également dans la liste _Regions_ afin qu'il puisse être inséré dans d'autres pistes en le faisant glisser et en le déposant.

## Supprimer des régions des pistes

Pour supprimer une région d'une piste, vous pouvez la sélectionner avec la souris et utiliser la fonction *Couper* dans le menu, la touche **Control** (ou **Apple**) et la touche **X** la touche **Delete** ou la combinaison de touches **Fn + Backspace** (utilisée par exemple sur un ordinateur portable).

{{% notice warning %}}
**Sauvegardez souvent votre travail!** Le raccourci **Control + S** est votre ami. Utilisez-le beaucoup, tout le temps.
{{% /notice %}}

## Poursuivre

Maintenant que vous avez du matériel dans votre session, vous pourriez vouloir personnaliser la timeline pour mieux répondre à vos besoins ou passer à l'enregistrement de nouveaux éléments en direct.

Suivant : [CONFIGURATION DE LA LIGNE DE TEMPS](../setting-up-the-timeline) ou
[ENREGISTREMENT AUDIO](../../recording-audio)
