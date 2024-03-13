+++
title = "Editor window"
description = "Basics of Ardour's editor window"
chapter = false
weight = 1
+++

When you create a new session, Ardour opens an empty new window called the
_Editor_ window. The _Editor_ window is the most important window in Ardour, as
this is where you arrange track, import and edit media on the timeline, and
control plugin automation for creative effects and mixing.

Let's take a look at main parts of the _Editor_ window:

{{< figure src="en/ardour7-editor-window-sections.png" alt="Editor window sections" >}}

Here they are:

1. Editor-specific toolbar
2. Timeline
3. Tracks and busses
4. Project overview
5. Editor mixer strip
6. Regions, Tracks/Busses, Snapshots, Groups, Ranges, Marks

Let's overview them quickly.

## Editor-specific toolbar

### Edit Modes and Cursor Modes

![Edit Modes](en/ardour7-edit-modes-cursor-modes.png?width=30vw)

The _Edit Modes_ and _Cursor Modes_ controls define the behavior of the main
canvas and the different functions the cursor can have. There are three edit
modes in the drop-down menu: _Slide_, _Ripple_, and _Lock_. We will discuss them
in the [Editing sessions](../../../editing-sessions/) chapter.

To the right of the **Smart** button are the _Cursor Modes_:

- _Smart_ mode (**3** shortcut)
- _Grab_ mode (**G** shortcut)
- _Range_ mode (**R** shortcut)
- _Cut_ mode (**C** shortcut)
- _Audition_ mode
- _Stretch_ mode (**T** shortcut)
- _Grid_ mode (**Y** shortcut)
- _Draw_ mode (**D** shortcut)
- _Internal Edit_ mode (**E** shortcut)

Most of them are discussed in the [Working With
Regions](../../../editing-sessions/working-with-regions/) section. The last two
are discussed in the **Using Automation** chapter.

The _Smart_ mode is actually a combination of _Grab_ mode and _Range_ mode. When
enabled, the mouse behaves as if it is in _Range_ mode in the upper half of a
region, and in _Grab_ mode in the lower half.

### Snap Options

The _Snap Options_ toolbar allows selecting visible grid units that affect
snapping when editing regions and, in case of MIDI regions, their contents.

![Snap](en/ardour7-snap-options-and-nudge-controls.png?width=25vw)

Here is a comparison between 1 bar grid, 1/8 note grid and 1/32 note grid:

{{< figure alt="1-bar grid, 1/8 note and 1/32 note grid" src="en/ardour7-snapping-1-bar-to-1-32-note.png" >}}

Please see the sections on
[Setting Up Time Signature](../../../editing-sessions/setting-up-time-signature/),
[Using Ranges](../../../editing-sessions/using-ranges/) and
[Working With Regions](../../../editing-sessions/working-with-regions/) for more
details.

### Track View and Zoom Options

The far right part of the toolbar has track view and zoom options.

![Zoom Options](en/ardour7-view-and-zoom-options.png?width=20vw)

Track view options allow selecting how many tracks to display at the same time,
and you can also shrink or expand the vertical zoom of selected tracks and
busses.

Zoom options allow incrementally zooming in and out, as well as zooming out to
show the entire project horizontally.

{{% notice tip %}}
Use the shortcuts **=** (the equal sign on your main keyboard) for zooming, and
**-** (the dash key on your main keyboard) for zooming out.
{{% /notice %}}

The drop-down menu controls the _zoom focus_. It defines the focus point of
zooming operations. Try zooming in and out with a different zoom focus each
time. For example, choosing _Playhead_ will cause zoom to behave in relation to
the position of the _Playhead_. _Mouse_ will take your current mouse position as
the reference, and so on.

## Timeline

Right-click on the names of rulers and you will see a menu with all the possible
rulers at your disposition. You may uncheck rulers that you don't need in order
to save screen space. More information on these operations can be found in the
[Setting up the Timeline](../../setting-up-the-timeline/) and [Setting Up Time Signature](../../../editing-sessions/setting-up-time-signature/) chapters.

![Ardour Overview Rulers](en/ardour7-overview-rulers.png?width=40vw)

## Tracks and Busses

Just below the rulers is where tracks and busses are displayed. In the example
below, you can see one bus called _Master_ and one track called _MyTrack_.
_MyTrack_ also contains one region which represents an audio file with a drawing
of its waveform. More information on tracks and busses can be found in the
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

![Editor Mixer](en/Ardour6_Editor_Mixer.png?height=40vw)

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

## Continuing

Next up is the _Mixer_ window where you focus on making instruments stand out in
a song.

Next: [MIXER WINDOW](../mixer-window)
