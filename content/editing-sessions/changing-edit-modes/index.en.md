+++
title = "Changing edit modes"
chapter = false
weight = 7
+++

We have already learned a bit about the _Grab_ mode (select/move objects) and
_Range_ mode. In this chapter we will get an overview of all the _edit modes_
and _cursor modes_ available on that part of the _Editor_ window.

{{< figure alt="Ardour Edit Modes" src="en/Ardour6_Edit_Modes_Cursor_Modes.png" >}}

## Edit Modes

These controls define the behavior of the main canvas and the different
functions of the cursor.

The drop-down _Edit_ mode menu contains three options:

**Slide mode**
: This is the standard mode. It allows you to freely drag regions around
horizontally (within the same track) and vertically (between tracks).

**Ripple mode**
: Automatically moves regions when you cut or shift one of the regions. E.g. if
you cut a portion of an audio interview that isn't interesting, Ardour will
shift all regions in all tracks to the left so that there would be no silence
where content used to be.

**Lock mode**
: However you edit a region with this mode on, the content of the region will
always be where it is. You can only move the region up or down between tracks,
but not left or right.

We will only use the _Slide_ edit mode in this tutorial.

## Cursor Modes
### Grab Mode

{{< figure alt="G" src="en/ardour7-grab-edit-mode.png" >}}

This cursor mode (**G** shortcut) allows you to select or move objects such as
regions and breakpoints (in an automation curve). When this cursor mode is
selected, your cursor pointer will look like a little hand icon.

### Range Mode

{{< figure alt="R" src="en/ardour7-range-edit-mode.png" >}}

This cursor mode (**R** shortcut) allows you to click and drag to define or
resize time ranges.  When this cursor mode is selected, your cursor pointer will
look like a vertical line. Time ranges can be selected over one or several
tracks, depending on the selection of your tracks.

### Cut Mode

{{< figure alt="C" src="en/ardour7-cut-edit-mode.png" >}}

Use this cursor mode (**C** shortcut) to split regions into smaller regions. The
cursor turns into the shape of scissors. This allows you to point and click on a
region to split it at the cursor.

{{% notice tip %}}
You can cut regions directly from the _Grab_ mode too (sometimes this method can
be more practical.) Without leaving the _Grab_ mode, simply place the mouse at
the desired location on the region to be cut, and hit the **S** shortcut (for
"split"). Important: your edit point (to the left of the _Modes_ toolbar) must
be set to _Mouse_.
{{% /notice %}}

### Audition Mode

{{< figure alt="Audition" src="en/ardour7-audition-edit-mode.png" >}}

This cursor mode allows you to click on any existing region on any track and
have it immediately played back. Playback stops at the end of the region. When
this cursor mode is selected, your cursor pointer will look like a small
loudspeaker icon.

{{% notice tip %}}
You can also quickly audition a selected region without leaving the _Grab_ mode.
Simply select a region and hit the shortcut key **H**.
{{% /notice %}}

### Stretch/Shrink Region

{{< figure alt="T" src="en/ardour7-stretch-shrink-edit-mode.png" >}}

This cursor mode (**T** shortcut) allows you to drag and resize the duration of
an entire region without changing the pitch. This is sometimes called "time
stretching', hence the **T** shortcut. Please see the chapter on
_Stretching/Shrinking Regions_ for more details. When this cursor mode is
selected, your cursor pointer will look like a diagonal arrow.

### Draw Mode

{{< figure alt="D" src="en/ardour7-draw-edit-mode.png" >}}

This mode (**D** shortcut) has 4 use cases:

1. Drawing new automation points (automation will be discussed in detail in the
[Using Automation](../../mixing-sessions/using-automation/) chapter).
2. Drawing new MIDI regions.
3. Drawing new MIDI notes in MIDI regions.
4. Editing existing MIDI notes and automation points when a region is
sufficiently zoomed in.

If you haven't zoomed in enough, it's easy to create either a new MIDI note or a
new automation point you did not need. If this becomes a problem, you should use
the next mode which only allows for editing existing points and notes, not
creating new ones.

For drawing MIDI notes, the toolbar additionally has controls for default note
length, MIDI channel, and velocity.

### Internal Edit Mode

{{< figure alt="E" src="en/ardour7-internal-edit-mode.png" >}}

Use this mode (**E** shortcut) to edit existing automation points or MIDI notes.

For automation points, the cursor looks like a hand and turns into a small cross
when you are on top of an existing point. Click, hold, and drag in order to move
points.

For MIDI notes, the cursor looks like a hand with a quarter note above it when
you hover the middle of note, that's for selecting a note and moving it around.
Hovering either the left or the right border of a note will change the cursor
and allow adjusting start/end position (and thus duration) of a note.

For both automation points and MIDI notes, you can press **Ctrl** and click on
multiple items to add them to a selection of items, then move multiple notes or
points altogether.

{{< figure src="en/ardour7-internal-edit-mode-multiple-points.png" alt="Moving multiple automation points" >}}

For MIDI notes specifically, you can also use rubberband selection: place the
cursor anywhere outside existing notes (the cursor will lose the quarter note
symbol), then press left mouse button and start dragging. A selection frame will
appear. All notes it touches will be selected.

{{< figure src="en/ardour7-internal-edit-mode-rubberband-selection.png" alt="Rubberband selection of notes" >}}

## Continuing

In the following chapter, we will see how to take the regions we have
edited and create looped sections from them.

Next: [Creating looped sections](../creating-looped-sections)
