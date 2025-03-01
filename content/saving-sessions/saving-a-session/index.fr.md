---
title: Sauvegarder une session
description: Comment sauvegarder et déplacer une session Ardour
weight: 1
cascade:
  type: docs
---

Il existe plusieurs façons d'enregistrer des sessions dans Ardour, de manière
à ce que chaque session puisse être utilisée ultérieurement. La façon la plus
simple est de sauvegarder la session entière comme vous le feriez pour d'autres
documents : en appuyant sur **Ctrl+S**.

Une nouvelle session est enregistrée pour la première fois au moment où vous
la créez. Pendant que vous travaillez sur la session, vous devez la sauvegarder
fréquemment. Prenez l'habitude d'appuyer sur **Ctrl+S** (ou **Commande+S** sur Mac)
après quelques minutes.

> [!NOTE]
> Évitez d'utiliser des caractères autres que des lettres et des chiffres pour
nommer votre session. Évitez les espaces blancs, les lettres accentuées, !@#$%\*()+,
les points, les virgules, etc. Utilisez des tirets ou des traits de soulignement si vous le souhaitez. Par exemple, au lieu de "Ma super Session !", préférez "Ma_Grande_Session",
ou "MaGrandeSession", ou encore "ma-grande-session". Au lieu de "Açaí", écrivez "Acai"
(sans les lettres accentuées), etc. Une fois que vous avez créé votre session Ardour, ne renommez _pas_ manuellement les dossiers ou fichiers qui appartiennent à la session.

## Format des fichiers et des dossiers Ardour

Le contenu d'un dossier de session typique sur votre disque dur peut ressembler
à quelque chose comme ceci :

{{< figure alt="Ardour Folder" src="en/Ardour4_Session_Folder_Structure.png" >}}

Quelques informations sur certains des composants de ce dossier :

* Le nom de cette session est _my\_session_.
* Le fichier principal de la session s'appelle `my_session.ardour`.
Le fichier de session est périodiquement sauvegardé par Ardour avec une extension `.bak`.
* Le fichier `.history` conserve un enregistrement des changements que vous avez effectués
au cours de votre session, et est également sauvegardé périodiquement par Ardour.
* Le dossier `interchange` contient les données audio de toutes les régions utilisées dans votre session.
* Le dossier `export` est l'endroit où les fichiers exportés sont sauvegardés par défaut.

Si un double-clic sur le fichier de session ne lance pas Ardour, utilisez
la méthode standard qui consiste à ouvrir d'abord l'application elle-même,
puis à cliquer sur le fichier de session dans la boîte de dialogue
_Session Setup_ (Configuration de la session).

{{< figure src="en/ardour7-session-setup-dialog.png" alt="Ardour Opening" >}}

## Déplacer une session vers un autre ordinateur ou un autre disque

Si vous avez besoin de déplacer votre session Ardour vers un autre ordinateur, ou si vous souhaitez la sauvegarder sur un disque externe, *vous devez copier l'ensemble du dossier* contenant tous les fichiers mentionnés ci-dessus. Il n'est _pas_ suffisant de copier seulement le fichier `*.ardour`.

> [!WARNING]
> Lorsque vous copiez un dossier Ardour sur un autre ordinateur ou un autre lecteur, ne changez pas manuellement son nom ou le nom d'un autre fichier internes. Veuillez également noter que, comme les sessions Ardour sont sensibles à la casse, la copie d'une session sur une clé USB (système de fichiers VFAT) risque de corrompre la session. ZIPer le dossier de la session pour le déplacer d'une machine à l'autre.

La manière la plus simple de transférer l'ensemble du projet est en effet de simplement zipper le dossier de la session. Si vous n'avez pas d'instantanés dans votre session, vous pouvez également utiliser la commande `Session > Archive...`. Cela créera un seul fichier ZIP contenant le fichier du projet et toutes les données audio transcodées en fichiers FLAC sans perte. Veuillez noter qu'une archive ne contiendra _pas_ d'instantané, seul l'état actuel de la session sera préservé.

**Poursuivre**

L'enregistrement d'un ensemble vous permet de l'ouvrir à nouveau ultérieurement.
Cependant, si vous souhaitez conserver un certain état de votre document,
afin de pouvoir revenir à cet état plus tard après y avoir apporté des modifications,
passez à la section suivante intitulée _Sauvegarde d'un instantané_.