+++
title = "Setting up the timeline"
chapter = false
weight = 5
#pre = "<b>1. </b>"
+++

Once you import some audio files to Ardour, play them back and start
familiarizing yourself with the user interface, you might want finetuning
various parts of the user interface for your needs. The timeline settings are
one of the obvious options there, because what you want to see on the timeline
largely depends on the kind of material you work on.

Users creating audio plays, documentaries, reportages or soundscapes may wish
to use minutes and seconds for units, while those recording bands or producing
electronic music will most likely use bars and beats. Video producers will
find a frames-per-second timecode handy, while those wishing for extreme
precision may even want to use samples. All of these can be viewed in Ardour
and used as a means to organize your regions and edits.

Let's talk about setting up clocks, snapping, and timeline rulers.

## Primary and Secondary Clocks

There are two clocks near the top of the _Editor_ window which can display the
time in a number of formats: *Timecode*, *Bars:Beats*, *Minutes:Seconds*, and
*Samples*. Right-click to change the format of each of the two clocks.

![Clock Units](en/Ardour6_Clock_Units.png)

These are called the transport clocks. The left one is the primary transport
clock and the right one is the secondary transport clock. The advantage of
having two transport clocks is that you see the playhead position in two
different time units without having to change any settings.

If you never need the second clock, you can disable it entirely. Go to 
`Edit > Preferences > Appearance > Toolbar` and disable the _Display Secondary
Clock_ checkbox.

To the right of these two clocks you can see the _mini-timeline_, also called
_Navigation Timeline_. It's a convenient way to be reminded of cues and location
markers, especially when you are in the _Recorder_ window where the timeline
doesn't have those rulers.

{{< figure src="en/ardour7-navigation-timeline.png" alt="Navigation timeline" >}}

Check the Ardour manual for more information on
[clocks](http://manual.ardour.org/ardours-interface/using-ardour-clock-displays/)
and the
[mini-timeline](https://manual.ardour.org/ardours-interface/mini-timeline/).

## Snap Modes

Snapping settings are located just below the clocks to the right. They control
the _quantization_ of the time grid, i.e., to which units the timeline grid is
divided and to what extent audio regions and MIDI notes get snapped when
snapping is enabled. E.g. you can snap to whole seconds when you drag an audio
region around or you could snap to 1/16 of a bar when creating or editing MIDI
notes.

There is one global switch, _Snap_, and then a drop-down list of grid
quantization presets: _Bar_, _1/4 note_, _1/8 note_ etc., _Triplets_,
_Timecode_, _Minutes and Seconds_, _CD frames_, and more.

![Snap](en/Ardour6_Snap_Options_and_Nudge_Controls.png)

When _No Grid_ quantization preset is selected, there is no grid displayed on
the tracks/busses canvas. In that case, with snapping off, nothing will snap.
And with snapping enabled, regions and notes will only snap to location markers.

## Timeline

The _timeline_ is located below the snapping settings, just above the main
canvas. By right-clicking on the timeline labels (i.e., right-click on the
left-side area where the words "Timecode, Bar:Beats, Meter" etc are displayed),
you can set the check boxes to show or hide the different types of time
information.

![Timeline](en/ardour7-timeline-rulers.png)

**Minutes/Seconds**
: To view Minutes and Seconds on the Timeline, right-click the Timeline labels
and select **Mins:Secs**.

**Bars/Beats**
: To view Bars and Beats on the Timeline, right-click the Timeline and
select **Bars & Beats**.
: It is possible to set a **Meter** and **Tempo** for the entire Ardour
session, as well as to change them at different points in the same
session. For more information on this, please see the **Setting Up the
Meter** chapter.

**Timecode**
: To work with SMPTE video Timecode, first you need to set the **Timecode
fps** (Frames per Second). This can be found in the Timecode tab of the
Session Properties window (menu `Session > Properties` or the **Alt + O** 
shortcut)*.*

![Timecode](en/Ardour6_Timecode.png)

Once you have done that, make sure you make the Timecode ruler visible
by right-clicking in the Timeline and checking the *Timecode* box.

Continuing
----------

Now that you've set up the Timeline, continue on to the chapter on
creating tracks and busses to add one or more **Tracks** to your Session.

Next: [CREATING A TRACK OR BUS](../creating-a-track-or-bus)