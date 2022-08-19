+++
title = "Recording MIDI"
description = "How to record MIDI with Ardour"
chapter = false
weight = 2
+++

There are several ways to get MIDI into a MIDI track in Ardour apart from
importing an existing MIDI file. Let's have a look at them one by one.

## Real-time recording

Perhaps the most obvious option to record MIDI into Ardour is connecting a
MIDI keyboard to your audio interface or your computer directly and recording
whatever you play. It's a pretty straightforward process: 

1. Select an existing MIDI track to record to or create a new one

2. Arm that track for recording (click the button with a red circle in the track header or press **Shift+B**)

3. Toggle the global recording mode (click the button with a red circle in the track header or press **Shift+B**)

4. Roll the transport (**Space** bar) to begin recording.

{{< figure src="en/real-time-recording.png" alt="Recording to a MIDI region" >}}

5. Stop the transport (**Space** bar) when you are done.

Usually when you record a part from a MIDI keyboard, you should be able to
hear yourself playing. If you see that everything is connected correctly and
yet you still can't hear any sound, check what MIDI channel your MIDI keyboard
is sending note-on/note-off events to. It is entirely possible that it's a
channel other than 1, and your virtual instrument of choice got no patches
loaded for that channel.

<!-- ### Launching the recording from a MIDI keyboard

A lot of MIDI keyboards come with a set of transport buttons for rewinding,
fast-forwarding, playing, and recording. This is particularly convenient for
cases when you need to record multiple takes and you don't want to swithc
between computer keyboard and MIDI keyboard all the time.

Pushing a transport button sends a MIDI Control Change (CC) event, but a DAW
like Ardour needs to interpret that CC event. So Ardour comes with MIDI maps
where a CC event

By default Ardour is configured so that MIDI input will follow MIDI track selection. This means that when you have multiple MIDI tracks that all can produce sound when you press a key on your MIDI keyboard,
Setup MIDI devices in Preferences: set "follow track" globally and per-device. -->

## Step Entry

The _Step Entry_ recording mode is convenient when a part is too complex to
record in real time (think sweeping arpeggios of 1/128th notes at 140bpm).
Instead of trying to achieve that live when you are on the schedule, you can
use your keyboard to enter the notes one by one at your own pace. Ardour will
record a note you play, move the playhead to the end of that note, then sit
and wait for the next note you play.

{{< figure src="en/step-entry-duration-preview.png" alt="Note duration preview in Step Entry" >}}

To enable this mode, right-click on **Record** button of a MIDI track, choose
_Step Entry_ in the newly opened menu. The _Step Entry_ dialog opens.

{{< figure src="en/step-entry-dialog.svg" alt="The Step Entry dialog" >}}

Here are the options:

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

3. Open the _Factory Patches_ navigator and select _Bass 2_ in _Basses_.

3. Make sure the playhead is at the beginning of the session so that it
matches the beginning of the first bar of all percussion tracks in the current
project.

4. Open the _Step Entry_ dialog

5. Select 1/8 note length and octave 3

5. On your regular keyboard press D,G,H,G,D,G,U,J

6. Press 4 to switch to octave 4, press S,D,G,T,D,S, press 3 to switch to octave 3

7. Press U,J. Then press H4ASA3H4AEDGH5A4JHGED.

Now you have a basic bass line you can repeat.

{{< figure src="en/initial-bass-line.png" alt="Initial bass line" >}}

<!-- ## TODO: Drawing sticks on the piano roll

If there is no existing region in your MIDI track, select the Draw mode,
left-click at the position where the region should start, drag to the point
where it should end, release the mouse button. Now you can draw and edit notes
inside the region. -->

Continuing
----------

In the next chapter, we'll talk about helping yourself to perform in sync with
the rest of the session material, whether you are using a MIDI keyboard to
record a lead synth part or a bass guitar.

Next: [PERFORMING ON TIME](../performing-on-time)
