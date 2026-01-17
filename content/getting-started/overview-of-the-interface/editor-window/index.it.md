+++
title = "Finestra dell'editor"
description = "Nozioni di base sulla finestra dell'editor di Ardour"
chapter = false
weight = 1
+++

Quando crei una nuova sessione, Ardour apre una nuova finestra vuota chiamata finestra _Editor_. La finestra _Editor_ è
la finestra più importante in Ardour, è qui che si organizzano le tracce, si importano e si modificano i media sulla 
timeline e si controlla l'automazione dei plugin per effetti creativi e mixaggio.

Diamo un'occhiata alle parti principali della finestra _Editor_:

{{< figure src="it/ardour8-editor-window-sections.png" alt="Sezioni della finestra dell'editor" >}}

Eccoli:
1. Barra degli strumenti specifica dell'editor 
2. Timeline 
3. Tracce e bus 
4. Panoramica del progetto 
5. Mixer 
6. Tracce e bus, sorgenti, regioni, clip, ecc.

Diamo loro una rapida occhiata.

## Barra degli strumenti specifica dell'editor

### Modalità di modifica e modalità cursore

{{< figure src="it/ardour8-edit-modes-cursor-modes.png" alt="Modalità di modifica e modalità cursore" >}}

I controlli _Modalità di modifica_ e _Modalità cursore_ definiscono il comportamento dell'area di lavoro principale e 
le diverse funzioni che il cursore può avere. Nel menu a tendina sono disponibili tre modalità di modifica: 
_Libero_, _Scarto_ e _Bloccato_. Ne parleremo nel capitolo [Modifica delle sessioni](../../../editing-sessions/).

A destra del pulsante **Intelligente** si trovano le _Modalità cursore_:

- Modo _Intelligente_ (scorciatoia **3** scorciatoia)
- Modo _Mano_ (scorciatoia **G**)
- Modo _Intervallo_ (scorciatoia **R**)
- Modo _Forbice_ (scorciatoia **C**)
- Modo _Elastico_ (scorciatoia **T**)
- Modo _Griglia_ (scorciatoia **Y**)
- Modo _Matita_ (scorciatoia**D**)
- Modo _Modifica Interna_ (scorciatoia **E** )

Le modalità cursore sono trattate nella sezione [Lavorare con le regioni](../../../editing-sessions/working-with-regions/). 
Le ultime due sono trattati nel capitolo **Utilizzo dell'automazione**.

La modalità _Intelligente_ è in realtà una combinazione delle modalità _Mano_ e _Intervallo_. Quando è abilitata, il 
mouse si comporta come se fosse in modalità _Intervallo_ nella metà superiore di una regione e in modalità _Mano_ nella 
metà inferiore.

### Opzioni di aggancio

La barra degli strumenti _Opzioni di aggancio_ consente di selezionare le unità della griglia visibili che influenzano 
l'aggancio durante la modifica delle regioni e, nel caso delle regioni MIDI, il loro contenuto.

{{< figure alt="Opzioni di aggancio e controlli di spostamento" src="it/ardour8-snap-options-and-nudge-controls.png" >}}

Ecco un confronto tra la griglia da 1 battuta, la griglia da 1/8 di nota e la griglia da 1/32 di nota:

{{< figure alt="Griglia da 1 battuta, griglia da 1/8 di nota e 1/32 di nota" src="it/ardour8-snapping-1-bar-to-1-32-note.png" >}}

Per ulteriori dettagli, consultare le sezioni 
[Impostazione del tempo](../../../editing-sessions/setting-up-time-signature/), 
[Utilizzo degli intervalli](../../../editing-sessions/using-ranges/) e
[Lavorare con le regioni](../../../editing-sessions/working-with-regions/).

### Opzioni di visualizzazione traccia e zoom

La parte estrema destra della barra degli strumenti contiene le opzioni di visualizzazione traccia e zoom.

{{< figure src="it/ardour8-view-and-zoom-options.png" alt="Opzioni di visualizzazione e zoom" >}}

Le opzioni di visualizzazione delle tracce consentono di selezionare il numero di tracce da visualizzare 
contemporaneamente ed è anche possibile ridurre o espandere lo zoom verticale delle tracce e dei bus selezionati.

Le opzioni di zoom consentono di ingrandire e rimpicciolire gradualmente l'immagine, nonché di ridurre l'intero progetto  
per essere visualizzato in orizzontale.

> [!TIP]
> Utilizza le scorciatoie **=** (il segno di uguale sulla tastiera principale) per ingrandire e **-** 
> (il tasto trattino sulla tastiera principale) per rimpicciolire.

Il menu a tendina controlla il _focus dello zoom_. Definisce il punto focale delle operazioni di zoom. 
Prova ad ingrandire e rimpicciolire con un focus dello zoom diverso ogni volta. Ad esempio, scegliendo _Testina_ 
lo zoom si comporterà in relazione alla posizione del _Testina_. _Mouse_ prenderà come riferimento la posizione corrente
del mouse, e così via.

## Timeline

Right-click on the names of rulers and you will see a menu with all the possible
rulers at your disposition. You may uncheck rulers that you don't need in order
to save screen space. More information on these operations can be found in the
[Setting up the Timeline](../../setting-up-the-timeline/) and [Setting Up Time Signature](../../../editing-sessions/setting-up-time-signature/) chapters.

![Ardour Overview Rulers](en/ardour7-overview-rulers.png?width=40vw)

## Tracks and Busses

Just below the rulers is where tracks and busses are displayed. In the example
below, you can see one bus called _Master_ and one track called _Voiceover_.
_Voiceover_ also contains one region which represents an audio file with a drawing
of its waveform. You can find more information on tracks and busses in the
[Creating a Track or Bus](../../creating-tracks-and-busses/) chapter.

![Ardour Track](en/Ardour6_Track.png?width=30vw)

## Project Overview

This is a bird's-eye view of the entire session.

{{< figure src="en/ardour7-overview-panel.png" alt="Project overview" >}}

There are two major use cases here:

1. Navigating around the project. Just grab the rectangle and drag it around to
pan over the entire project.

2. Tweaking zoom and position of the visible part of the project. Grab the left
or the right side of the visible rectangle's border and drag it inwards or
outwards to zoom in or out respectively.

## Editor Mixer

The Editor Mixer is located at the left of the _Editor_ window. It displays the
mixer strip of the currently selected track or bus. It's mainly used to control
the volume, plugins, and routing for the track or the bus to which it
corresponds.

{{< figure src="en/Ardour6_Editor_Mixer.png" height="100px" >}}

You can toggle to view or hide the _Editor Mixer_ by clicking on the menu
`View > Show Editor Mixer` (**Shift + E** shortcut). This Mixer is covered in
the [Using the Mixer Strip](../mixing-sessions/the-mixer-strip/) chapter.

## Editor List

The space on the right of Ardour's _Editor_ window can have 8 different
functions, depending on which tab is currently selected: _Tracks & Busses_,
_Sources_, _Regions_, _Clips_, _Arrangement_, _Snapshots_, _Track & Bus
Groups_, and _Ranges & Marks_.

![Sources List](en/ardour7-sources-list.png?height=60vh)

- _Tracks & Busses_ provides an overview of all tracks and busses in the
project, including the invisible ones. This tab is covered in the
[Arranging Tracks](../../../editing-sessions/arranging-tracks/) chapter
- _Sources_ lists all files on the disk imported to the session.
- _Regions_ is a list of all takes in the session. You can reuse both sources
and regions by dragging them onto the canvas. You'll find more information on
regions in the [Working With
Regions](../../../editing-sessions/working-with-regions/) chapter.
- _Clips_ lists reusable audio and MIDI clips that can be drag-and-dropped
either to the timeline or to the grid of clips on the _Cue_ page.
- _Arrangement_ lists all available user-defined arrangement sections
(like verse, chorus, bridge etc.) and allows quickly copy-pasting them.
- _Snapshots_ are versions of the same session saved at particular moments in
time, they are discussed in the [Saving a
Snapshot](../../../saving-sessions/saving-a-snapshot/) chapter.
- _Ranges and Marks_ is an overview of all markers in the project, with an easy
user interface to edit them.

**Continuing**

Next up is the _Mixer_ window where you focus on making instruments stand out in
a song.
