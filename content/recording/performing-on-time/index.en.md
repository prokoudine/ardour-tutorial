+++
title = "Performing on time"
description = "How to help yourself recording in time with the rest of the session material"
chapter = false
weight = 3
+++

Normally, to record an instrument or a vocal part live, you place the playhead
to some position, arm a track for recording, toggle the overall record mode
and then roll the transport whenever you are ready. Recording will start at
the playhead position, and you will listen the audible part of the session
material that also starts at that point. There are two important
considerations here.

## Using a metronome

You might not yet have the beats part of the material to guide you when you
are recording. So if performing to a metronome to pace yourself is something
you are comfortable with, you can enable the metronome on the transport
toolbar (or press the **\`** shortcut).

If the metronome clicks are not audible, go to _Window > Audio Connections_,
click _Ardour Misc_ on the left and see if the _Click out_ ports are connected
to the Master bus. This will make the metronome clicks play through the same
output as the rest of your session.

{{< figure src="en/click-out-ports.png" alt="Click out ports connected to the master bus" >}}

There are also a handful of customization options for the metronome on the
same-name _Preferences_ dialog page: doing (or not) an emphasis on the first
beat, adjusting gain for metronome clicks, loading your own regular and
emphasized clicks, enabling metronome only when recording.

## Pre-listening to the session material

To perform a part better, it helps listening to a part of a composition that
comes directly before this new soon-to-be-recorded instrument/vocal part
begins. You have three options here:

1. Record with preroll.

2. Record with count-in.

3. Begin recording far in advance.

The first two options are similar. Here is what they do.

Preroll (_Transport > Record w/Preroll_ or **Shift+<**) means Ardour will
start playing audible session's material ahead of the point where you want to
begin recording, then when the playhead reaches the original point where it
was located, actual recording starts. By default, Ardour goes 2 bars back for
preroll. You can configure this in the _Preferences_ dialog on the _Transport_
page.

Count-in (_Transport > Record w/Count-in_ or **Shift+>**) means that Ardour
will play two bars worth of metronome clicks, _then_ start recording.

In both cases playing exactly on beat is crucial if there should be MIDI notes
or audio content right at the beginning of the first recorded bar. If you play
it even slightly ahead of time, any content to the left of the original
playhead position will be lost because it starts before the actual audio or
MIDI region is created.

If you have a problem playing on time, moving the playhead to the left to
start actually recording a new audio/MIDI region earlier will give you both
the time to sync in and perfectly preserved content to edit.

<!-- ## TODO: latency correction??? -->

## Continuing

At this point, you may want to skip directly ahead to the [Arranging
Tracks](../../editing-sessions/arranging-tracks/) section to learn how to
arrange the regions into a composition. If you plan on doing more complicated
Recording than what we have discussed here, in particular with a multichannel
soundcard, or from other JACK-enabled audio programs on your computer, you
should also have a look at the [Understanding
Routing](../understanding-routing) chapter.

Next: [ARRANGING TRACKS](../../editing-sessions/arranging-tracks/) or
[UNDERSTANDING ROUTING](../understanding-routing)
