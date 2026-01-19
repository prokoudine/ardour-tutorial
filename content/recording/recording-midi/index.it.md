---
title: Registrare MIDI
description: Come registrare MIDI con Ardour
weight: 2
cascade:
  type: docs
---

Esistono diversi modi per importare MIDI in una traccia MIDI in Ardour oltre all'importazione di un file MIDI esistente.
Vediamoli uno per uno.

## Registrazione in tempo reale

L'opzione più ovvia per registrare MIDI in Ardour è collegare una tastiera MIDI direttamente all'interfaccia audio o al 
computer e registrare tutto ciò che si suona. È un processo piuttosto semplice:

1. Seleziona una traccia MIDI esistente su cui registrare o creane una nuova.

2. Armare la traccia per la registrazione cliccando sul pulsante rosso nell'intestazione della traccia o premendo **Shift+B**.

3. Attivare la modalità di registrazione cliccando sul pulsante rosso nel pannello di controllo o premendo **Shift+R**.

4. Avvia il trasporto premendo la barra **spazio** per iniziare la registrazione.

{{< figure src="it/real-time-recording.png" alt="Registrazione su una regione MIDI" >}}

5. Interrompi il trasporto premendo la barra **Spazio** una volta finito di suonare.

> [!TIP]
> Quando registri una parte da una tastiera MIDI, dovresti essere in grado di ascoltare ciò che stai suonando.
> Se tutto è collegato correttamente e tuttavia non riesci a sentire alcun suono, controlla su quale canale MIDI è 
> impostata la tua tastiera MIDI.
> È possibile che si tratti di un canale diverso dal 1 e che lo strumento virtuale scelto non abbia patch caricate per 
> quel canale.

<!-- ### Avvio della registrazione da una tastiera MIDI

Molte tastiere MIDI sono dotate di una serie di pulsanti di trasporto per riavvolgere, avanzare rapidamente, riprodurre 
e registrare. Ciò è particolarmente utile nei casi in cui è necessario registrare più take e non si desidera passare 
continuamente dalla tastiera del computer alla tastiera MIDI.

Premendo un pulsante di trasporto viene inviato un evento MIDI Control Change (CC), ma una DAW come Ardour deve 
interpretare tale evento CC. Pertanto, Ardour è dotato di mappe MIDI in cui un evento CC

Per impostazione predefinita, Ardour è configurato in modo tale che l'input MIDI segua la selezione della traccia MIDI. 
Ciò significa che quando si dispone di più tracce MIDI che possono tutte produrre suoni quando si preme un tasto sulla 
tastiera MIDI,
Configura i dispositivi MIDI nelle Preferenze: imposta "segui traccia" globalmente e per singolo dispositivo. -->

## Inserimento a passi

La modalità di registrazione _inserimento a passi_ è utile quando una parte è troppo complessa per essere registrata in 
tempo reale (si pensi ad arpeggi veloci di note da 1/128 a 140 bpm). Invece di cercare di eseguire quella parte dal vivo 
quando sei sotto pressione, puoi usare la tastiera per inserire le note una alla volta, al tuo ritmo. Ardour registrerà 
le note che suoni una alla volta spostando il cursore alla fine di ogni nota attendendo la successiva.

{{< figure src="it/step-entry-duration-preview.png" alt="Anteprima della durata delle note nell'inserimento a passi" >}}

Per abilitare questa modalità, clicca con il tasto destro del mouse sul pulsante **Registra** di una traccia MIDI e 
seleziona _Inserimento a passi_. Si aprirà la finestra di dialogo _Inserimento a passi_.

{{< figure src="it/step-entry-dialog.svg" alt="La finestra di dialogo inserimento a passi" >}}

Ecco le opzioni:

1. Chord entry mode — you can play multiple notes at once, they will be recorded like a chord and willl be above each other on the pianoroll.

2. Note length presets, from a whole note to 1/64th.

3. Dotted note presets

4. Rest presets

5. Velocity presets, from pianississimo to fortississimo

6. Numeric inputs for MIDI data: channel, length of a note, velocity, octave (for
entry from regular keyboard), MIDI bank and MIDI program (so that you could
use e.g. pizzicato sample in a sample library rather than arc).

Now you have three options:

1. Click piano keys with a mouse
2. Press keys on your regular keyboard
3. Use a MIDI keyboard connected to track's input

For option 2, the middle row of letter keys is used for white keys, and the upper letter row is for black keys:

{{< figure src="en/keyboard-map-to-piano-keys.svg" alt="Keyboard map to piano keys" >}}

All the settings you see in the _Step Entry_ dialog apply to the options 1 and
2. For each note you input next, you can set: 

- Length, from a whole note to 1/64 (or any length when using the 1/Note spinbox), with optional chord input
- Channel
- Velocity (z through < on English (US) keyboard can be used as keyboard shortcuts)
- Octave (keys 1 through 9 can be used as shortcuts)

You can also insert rests which basically means that Ardour shifts the editing
cursor to the right by the currently selected note length.

When you use a MIDI keyboard for step entry, only a subset of settings in the
dialog apply. Ardour will use the defined note length, but it won't bother
with either velocity, channel, or octave settings and will use whatever you
send from the keyboard.

Let's try to use it and create a simple bass line that we can later use in the
project.

1. Create a new track, select Surge XT as a virtual instrument.

2. Open the _Factory Patches_ navigator and select _Bass 2_ in _Basses_.

{{< figure src="en/surge-xt-bass-patch.png" alt="Selecting a bass patch in Surge XT" >}}

3. Make sure the playhead is at the beginning of the session so that it
matches the beginning of the first bar of all percussion tracks in the current
project.

4. Open the _Step Entry_ dialog

5. Select 1/8 note length and octave 3

6. On your regular keyboard press D,G,H,G,D,G,U,J,H,4,A,S,A,3,H,4,A,E,D.

Now you have a basic bass line you can repeat.

{{< figure src="en/bassline.png" alt="Initial bass line" >}}

## Drawing notes on the piano roll

Perhaps the easiest way to add notes to a MIDI track is to draw them on the
canvas.

1. Create a MIDI track.

2. Switch to the _Draw_ mode by pressing **D** or clicking the respective button
in the toolbar.

3. Click and drag on the canvas to create a MIDI region.

{{< figure src="en/draw-new-midi-region.gif" alt="Draw a new MIDI region" >}}

4. Point the mouse to where a note should begin, press and hold left/primary
mouse button and drag to the right as far as the note should go. Release the
mouse button.

{{< figure src="en/draw-new-midi-notes.gif" alt="Draw new MIDI notes" >}}

5. The top toolbar has some default settings for new notes: duration,
velocity, channel. You can change these settings before adding new notes: by
either choosing a preset in a drop-down list of by scrolling the mousewheel
over any of the three drop-down lists.

{{< figure src="en/midi-draw-toobar.png" alt="MIDI drawing toolbar" >}}

6. Repeat until you wrote down the melody.

If you are not accustomed to this type of entering notes and mentally rotating
the keyboard by 90° clock wise seems difficult for you, try clicking on the
vertical piano keyboard widget to listen to notes until it grows on you.

While in the _Draw_ mode, you also can do some leight editing: select and
resize individual notes, drag them around, adjust velocity, use the
right-click menu to perform various transformations.

**Continuing**

In the next chapter, we'll talk about different recording modes you can choose between.
