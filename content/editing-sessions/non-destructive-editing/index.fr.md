---
title: Édition non-destructive
description: Qu'est ce qu'une édition non-destructive et comment celà fonctionne dans Ardour?
weight: 1
cascade:
  type: docs
---

Dans l'un des chapitres précédents, nous avons déjà discuté du fait qu'Ardour fonctionne sur des sessions qui englobent tout le matériel que vous avez : clips audio, clips MIDI, tous les effets appliqués aux pistes et aux bus, etc.
Avant de passer à l'édition proprement dite, parlons des bases de l'édition non destructive, de la façon dont elle est mise en œuvre dans Ardour et pourquoi cela devrait vous rassurer lorsque vous faites de l'édition lourde.

## Que signifie l'édition non-destructive ?

En résumé, une approche non destructive de l'édition signifie que, quoi que vous fassiez, votre matériel source reste toujours intact.
Au lieu d'écrire dans les fichiers fichiers originaux, un programme préfère décrire les modifications que vous avez appliquées, les stocker dans un fichier de projet, puis les "rejouer" lors du chargement de ce projet.

## Comment cela fonctionne-t-il dans Ardour ?

Voici un exemple rapide. Enregistrons un court clip audio, coupons-le en deux puis faisons glisser la moitié droite vers la droite, créant ainsi un espace :

{{< figure src="en/non-destructive-editing-cut-move-example.gif" alt="Couper et déplacer une région audio" >}}

Voici ce qui se passe en réalité. Ardour crée une région qui fait référence au fichier audio original et utilise toutes ses données, du premier au dernier échantillon.

Lorsque vous divisez le fichier en deux, Ardour crée deux régions qui font toutes deux référence au fichier original. Mais maintenant, le fichier du projet indique : la région de gauche commence à ce moment dans le temps avec le premier échantillon du fichier original et s'arrête à cet échantillon au milieu, et la deuxième région commence à un moment différent, avec cet échantillon au milieu du fichier original, et s'arrête au dernier échantillon du fichier original.

Vous pouvez découper une région audio en autant de clips plus petits que vous le souhaitez, les déplacer sur les pistes, modifier leurs points de départ/fin, les étirer ou les contracter, etc. Le fichier audio original ne changera jamais sur le disque.

Lorsque vous enregistrez un projet, toutes ces informations sont conservées dans le fichier de session.
Lorsque vous rouvrez la session, Ardour lit toutes ces références, charge les fichiers originaux et recrée toutes les régions audio éditées à partir des fichiers audio originaux. C'est ce que ce que signifie "rejouer les changements".

Si vous n'aimez pas la façon dont vous avez édité une prise originale et que vous êtes trop loin dans l'édition pour annuler les modifications, vous pouvez tout recommencer sans enregistrer une nouvelle prise.
Pour cela, vous pouvez ouvrir la barre latérale droite en appuyant sur **Shift+L**, aller sur l'onglet _Sources_, saisir le nom du fichier audio original de la prise, le déposer sur n'importe quelle piste, puis le déplacer, le couper, etc.

{{< figure src="en/non-destructive-editing-redo-all-over-again.gif" alt="Refaire l'édition à l'infini" >}}

De plus, tous les effets que vous appliquez à une piste sont également non destructifs. Ardour les appliquera au flux audio original et jouera le résultat à la volée.

Dans le cas de clips MIDI joués par un synthétiseur, Ardour utilisera le synthétiseur pour restituer un flux de données audio pendant que la tête de lecture est en marche, capturer ce flux audio, lui appliquer des effets, puis jouer le flux audio résultant au fur et à mesure.

## Différences entre les régions audio et MIDI

Comme vous le savez déjà, les fichiers audio sont toujours intacts. Mais les régions MIDI sont différentes :
vous pouvez modifier leur contenu et les changements sont enregistrés dans des fichiers MIDI sur le disque.

L'un des cas où cela est important est lorsque vous souhaitez combiner plusieurs régions en une seule.
Vous pouvez le faire avec les régions audio en sélectionnant celles que vous voulez fusionner puis en utilisant `Région > Editer > Combiner`. Cela créera une sorte de méta-région qui fait référence à N fichiers audio sur le disque.

Cependant, vous ne pouvez pas faire la même chose avec les régions MIDI, principalement parce qu'elles sont modifiables sur le disque, et donc combiner quelque chose qui peut changer physiquement peut nuire à la continuité des données.

## Où Ardour stocke-t-il le matériel source ?

Considérons ce projet générique. Vous avez ici plusieurs pistes audio représentant la batterie, deux pistes audio pour la basse et la guitare solo, et une piste MIDI pour le piano électrique.

{{< figure src="en/session-example.png" alt="Exemple de session" >}}

Si vous allez dans le dossier de la session, vous y trouverez un certain nombre de sous-dossiers, dont ces deux-là :

- 'interchange', où sont stockés les fichiers audio et MIDI source ;
- 'plugins', ici Ardour enregistre l'état de chaque instance de chaque greffon utilisé dans le projet.

Lorsque vous enregistrez un instrument, chaque prise est représentée par un fichier audio physique par canal.
Ainsi, si vous avez effectué trois prises sur une piste stéréo, vous aurez 6 fichiers audio.

## Ardour modifie-t-il les données audio sur le disque ?

La seule fois où Ardour fait quoi que ce soit aux fichiers audio sur le disque, c'est lorsque vous lui demandez explicitement de supprimer les fichiers audio qui ne sont pas utilisés dans le projet.
Typiquement, cela se fait lorsque vous avez fait des douzaines de prises, que vous avez fait votre choix et que vous ne voulez plus de ces fichiers sur le disque parce qu'ils prennent de l'espace.

Même dans ce cas, vous le faites en deux étapes. D'abord, vous allez dans `Session > Nettoyer > Nettoyer les sources inutilisées` pour mettre les fichiers originaux inutilisés dans une poubelle, puis vous allez séparément dans `Session > Nettoyage > Nettoyer les sources inutilisées` pour dire à Ardour de supprimer physiquement les fichiers inutilisés.

## Poursuivre

Maintenant que vous connaissez les bases de l'édition non destructive, passons à l'arrangement et à l'édition proprement dits.

Next: [Arranger les pistes](../arranging-tracks)
