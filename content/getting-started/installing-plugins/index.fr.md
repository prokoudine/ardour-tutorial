---
title: Installation de greffons
description: Comment installer de greffons pour Ardour
weight: 6
cascade:
  type: docs
---

Ardour est déjà livré avec quelques greffons, mais il y a de fortes chances que vous ayez besoin de plus que cela :
un compresseur ou une réverbération plus sophistiqués, un échantillonneur capable de jouer une bibliothèque d'orchestres de haute qualité, un synthétiseur polyphonique, etc.

Ardour supporte plusieurs API de greffons :

- **Linux** : LADSPA, LV2, VST2.x, VST3
- **Windows** : LADSPA, LV2, VST2.x, VST3
- **macOS** : LADSPA, LV2, VST2.x, VST3, AU

Vous pouvez trouver une liste de greffons libres/libre recommandés [dans la section mixage](../../mixing-sessions/plugins/).

## Installation des greffons

### LADSPA et LV2

La plupart de ces greffons n'ont pas de version binaire pour Windows et macOS.
Alors sur ces systèmes, la plupart du temps vous aurez affaire à VST2, VST3, ou AU.

Sous Linux, LV2 est une option très populaire. Si vous n'installez que des
greffons provenant du dépôt de votre distribution, il n'y a rien d'autre à faire.
Ardour récupérera facilement les nouveaux greffons. Mais si vous compilez un greffons
à partir du code source, le script de compilation essaiera de copier
un dossier `nom du plugin.lv2` soit dans `/usr/local/lib/lv2` ou dans `~/.lv2`.

### VST2.x

Les greffons VST2 n'ont pas d'emplacement recommandé par le vendeur pour l'installation.
Ce que vous pouvez faire, c'est :

1. Décompresser tous vos greffons VST2.x dans le même dossier.
   (Sous Linux, `~/.vst` est généralement suggéré).

2. Dans Ardour, allez dans `Editer > Préférences > greffons > VST` et dans la section VST2.x, cliquez sur le bouton **Editer** pour ajouter un nouveau chemin pour les greffons VST2.x.

3. Ajoutez le chemin vers le dossier que vous avez créé à l'étape 1.
   Ardour vous demandera si vous si vous voulez rescanner les greffons. Dites "oui".

Cette approche fonctionne sur tous les systèmes d'exploitation pris en charge.

### VST3

La spécification VST3 a des chemins système codés en dur pour le stockage des greffons. Sous Windows et macOS, la plupart du temps, vos greffons sont installés dans le bon dossier. Tout ce que vous avez à faire est de re-scanner les dossiers de greffons.

Sous Linux, dans de nombreux cas, vous obtenez une archive ZIP avec un dossier
`plugin-name.vst3` à l'intérieur. Ce dossier doit aller dans `~/.vst3` ou,
si vous voulez que tous les utilisateurs de l'ordinateur y aient accès,
dans `/usr/local/lib/vst3`.

### AU

Ces greffons spécifiques à macOS sont installés à partir du DMG dans les bons dossiers.
Tout ce que vous avez à faire est de re-scanner ces dossiers.

## Re-scanner les dossiers pour les greffons installés

Lors de l'installation, il est recommandé de scanner à nouveau les greffons disponibles.
Cela se fait typiquement avec le _Plugin Manager_ (`Window > Plugin Manager`).

{{< figure src="en/plugin-manager.png" alt="Plugin manager" >}}

Si vous n'avez installé que de nouveaux greffons, il suffit de les découvrir.
Dans la barre latérale gauche du _Plugin Manager_, cliquez sur **Discover New/Updated**,
puis sur **Discover New/Updated**. Attendez que l'analyse se termine.

Si vous avez supprimé certains des greffons précédemment installés, il est préférable
de procéder à une nouvelle analyse complète.
Cliquez plutôt sur **Re-scanner tout** et attendez la fin de l'analyse.

**Poursuivre**

Maintenant que vous savez ce qu'il faut faire si vous voulez installer un greffon d'effet
ou un synthétiseur logiciel, apprenons à enregistrer de l'audio et du MIDI dans Ardour.

Suivant : [ENREGISTREMENT AUDIO](../../recording/recording-audio/)
