+++
title = "Changing edit modes"
chapter = false
weight = 6
#pre = "<b>1. </b>"
+++

We have already learned a bit about the Grab Mode (select/move objects) and Range Mode. In
this chapter we will get an overview of all the **Edit Modes** and
**Cursor Modes** available on that part of the Editor Window.

## Edit Modes and Cursor Modes

![Ardour Edit Modes](en/Ardour6_Edit_Modes_Cursor_Modes.png)

These controls define the behavior of the main canvas and the different
functions of the cursor.

The drop-down **Edit Mode** menu contains three options. **Slide Edit**
is the standard mode, and the one we will be using in this tutorial. It
allows you to freely drag regions around horizontally (within the same
track) and vertically (between tracks). The other two options limit or
block your ability to move regions from their positions, but we will not
cover them in detail here.

### Grab Mode (shortcut "*G*")

![G](en/Ardour4_EditModes_G.png)

This Cursor Mode allows you to select or move objects such as regions
and breakpoints (in an automation curve). When this Cursor Mode is
selected, your cursor pointer will look like a little hand icon.

### Range Mode (shortcut "*R*")

![R](en/Ardour4_EditModes_R.png)

This Cursor Mode allows you to click and drag to define or resize time
Ranges.  When this Cursor Mode is selected, your cursor pointer will
look like a vertical line. Time ranges can be selected over one or several tracks, depending on the selection of your tracks.

### **Cut Mode** (shortcut *"C"*)

![C](en/Ardour4_EditModes_C.png)

Use this Cursor Mode to split Regions into smaller Regions. The cursor turns into the shape of scissors. This allows you to point and click on a Region to split it at the cursor.

{{% notice tip %}}
You can cut Regions directly from the Grab Mode too (sometimes this method can be more practical.) Without leaving the Grab Mode, simply place the mouse at the desired location on the Region to be cut, and hit the shortcut *"S"* (for "split"). Important: your Edit Point (to the right of the Grid settings) must be set to Mouse.
{{% /notice %}}

### **Stretch/Shrink Region** (shortcut *"T"*)

![T](en/Ardour4_EditModes_T.png)

This Cursor Mode allows you to drag and resize the duration of an entire
Region without changing the Pitch. This is sometimes called 'Time
stretching', hence the shortcut **"T"**. Please see the chapter on
**Stretching/Shrinking Regions** for more details. When this Cursor Mode
is selected, your cursor pointer will look like a diagonal arrow.

### **Audition Mode (listen to specific regions)**

![Audition](en/Ardour4_EditModes_Audition.png)

This Cursor Mode allows you to click on any existing Region on any track
and have it immediately played back. Playback stops at the end of the
Region. When this Cursor Mode is selected, your cursor pointer will look
like a small loudspeaker icon.

{{% notice tip %}}
You can also quickly audition a selected Region without leaving the Grab Mode. Simply select a Region and hit the shortcut key "*H*".
{{% /notice %}}

### **Draw Mode (shortcut D)**

Use this mode to draw gain automation points. Cursor looks like a pencil. Automation will be discussed in detail in the chapter [Using Automation](../using-automation).

You can also *edit* individual points in this mode if you bring your cursor right on top of the automation point you want to move (mouse will turn into a small cross). However, if you are not precise this may accidentally create a new automation point. If this becomes a problem, you should use the next Mode, which only allows for editing existing points, not creating new ones.

![D](en/Ardour4_EditModes_D.png)

### **Internal Edit Mode (shortcut E)**

Use this mode to edit existing gain automation points. Cursor looks like a hand, and turns into a small cross when you are on top of an existing point. Click (hold the click down) and drag in order to move points.

![E](en/Ardour4_EditModes_E.png)

### MIDI

The last two buttons explained above are also used to create and edit MIDI information.

### Horizontal Zoom and view options

![Z](en/Ardour6_Zoom_Options.png)

The main shortcuts you will probably be using all the time are "*-*" and "*=*" (zoom out and zoom in, respectively). Zooming will happen in relation to the Edit Point currently chosen (Mouse, Marker, or Playhead). If in doubt of which Edit Point to choose, try Mouse.

The Zoom to Session button (shortcut "*_*" - that's the underscore character) zooms in or out as needed so that you can see the Start and End markers of your project.

All the zoom options discussed above control the amount of *horizontal* content you will be seeing on screen. Once you have a session with several tracks, you will also want to control the amount of *vertical* content you are able to fit (see) on the screen. There are several ways to do this:

* Use the "*Number of visible tracks*" drop down menu to select how many tracks you want to fit on your screen.
* Use the "*Shrink tracks*" button to make all selected tracks smaller.
* Use the "*Expand tracks*" button to make all selected tracks larger.
* You can also change an individual track size by dragging from its bottom edge, or right clicking on the track header and selecting the desired "Height".

#### The navigation tool

You can use the navigation tool at the bottom of the Editor window in order to scroll up and down the session, and adjust horizontal and vertical zoom by adjusting the size of the viewing rectangle.

![navigation](en/Ardour4_Navigation.png)

## Continuing

In the following chapter, we will see how to take the Regions we have
edited and **Creating Looped Sections** from them.

Next: [Creating looped sections](../creating-looped-sections)
