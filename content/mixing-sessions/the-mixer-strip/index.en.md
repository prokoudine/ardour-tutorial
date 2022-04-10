+++
title = "The mixer strip"
chapter = false
weight = 1
+++

_Mixing_ is the process of converting multiple tracks into a stereo or a
multi-channel mix where all the instruments can be heard clearly.

## Mixing Tools

_Levels_, _panning_, _equalization (EQ_), and _compression_ are the main tools
used to achieve a good mix. In addition to these core tools, a wide range of
plugin effects can also be used to enhance the sound, such as _reverb_ and
_delay_.  

## Introducing the Mixer Strip

The _mixer strip_ is the vertical column that contains various controls related
to signal flow. Each track and bus in Ardour has its own mixer strip. The mixer
strip is also the main tool we will use in the process of mixing our Tracks. In
this chapter, we will get a general overview of the mixer strip, with each
section described. We will also provide references to chapters containing
information specific to each aspect of the mixer strip.

## The Mixer Strip from Top to Bottom

Mixer strips can be accessed from both the _Editor_ window and the _Mixer_
window (shortcut **Alt+M** to toggle between the two). Mixer strips in either
window (_Editor_ or _Mixer_) mirror each other: any actions performed on a mixer
strip in the _Mixer_ window will be reflected in the corresponding mixer strip
in the _Editor_ window, and vice-versa. The editor window and _Mixer_ window are
more fully explained in the _An Overview of the Interface_ chapter. 

In the _Editor Window_, you can see the mixer strip of the currently selected
track on the left side of the window. If you don't see it, hit **Shift+E** to
display the Editor's mixer strip.

### Overview

Here we see the entire mixer strip, as it would appear in either the _Editor_
window or the _Mixer_ window. 

![strip1](en/Ardour4_Mixer_Strip_1.png) 

### Regular & Narrow Modes

The mixer strip can be switched between  the regular width and a more narrow
width to conserve space. The very top part of the mixer strip, pictured below,
switches between regular and narrow modes using the left button. The button with
an eye icon hides the mixer strip entirely (you can re-enable it later).
 
![strip top](en/ardour7-narrow-wide-strip.png)

You can easily spot differences between narrow and regular modes: shorter
captions on buttons, no legend for the peak meter etc.

### Track Name and Routing Button

Continuing from top to bottom, the next section of the mixer strip contains
three narrow regions. The first of these regions shows the name of the track
(that's the word "Audio 1" in the image below). The next region, named "1" in
the image below, is a button which allows access to the input routing. Please
see the _Understanding Routing_ and _Recording Audio_ chapters for more
information on input routing. The last narrow region controls phase reversing
(we won't go into details on this topic in this tutorial). 

![strip 2](en/Ardour4_Mixer_Strip_2.png) 

### Processor Box 

The large black region at the bottom of this section is the _processor box_.
This is where you can add plugins, for example. The signal flow in the mixer
strip is top-to-bottom. It starts with the input on top, the topmost plugin in
the box is the first one in the effects chain, the one in the bottom is the one
applied last.

The processor box will always contain a blue fader processor. This indicates
where in the processor chain the main channel fader is located — this is the
fader shown in the lower half of the strip. Please see _Using Plugins_ and
_Using Sends_ for a detailed discussion of this area.

{{< figure src="en/ardour7-inline-views-and-controls.png" alt="Inline view and controls" >}}

There are additional views and controls possible in the processor box, as seen
on the screenshot above:

1. _Inline displays_. Some plugins can display a mini-overview of their
settings, e.g. an equalizer can display a preview of how various frequency bands
are affected. And some plugins are written with just this objective in mind — to
provide a quick overview of something in the mixer strip. Ardour comes with two
such plugins, an inline scope and an inline spectrogram.

2. _Plugin controls_. It's possible to add controls to various plugins in a
mixer strip. That way, for the settings that you tweak most often, you don't
need to open a plugin's window every time, you can just drag a slider left and
right with your mouse or scroll the mouse wheel when hovering a control. Press
**Ctrl** to make smaller increments when dragging or scrolling.

To control both these features, use _Controls_ submenu in the right-click menu
of a plugin. As inline displays are enabled by default, all you can do is
disable it (and then enable back). To enable a control for a plugin, simply click on its name in the menu.

{{< figure src="en/ardour7-plugin-controls-submenu.png" alt="Controls submenu in Ardour 7" >}}

{{% notice tip %}}
To enable multiple controls for a plugin, the most convenient way is to open the
right click menu, hover a control and press **Spacebar** on your keyboard, hover
the next control, press **Spacebar** again etc.
{{% /notice %}}

The next portion of the mixer strip includes controls for panning, record, mute,
and solo, among others.

### Panning

Panning commonly has to do with placement of sounds anywhere between left and
right speakers to help separating instruments from one another by placing them
in different parts of a virtual room.

Depending on the amount of channels in a track, Ardour will provide a dedicated
user interface to control panning. In the screenshot below, a mono track is on
the left and a stereo track is on the right:

{{< figure src="en/ardour7-mono-vs-stereo-panning.png" alt="Mono vs. stereo panning" >}}

Please refer to the _Panning_ chapter for more information.

### Soloing and Muting

Tracks and busses can have two additional related states: soloing and being
muted.

Any track or bus on _mute_ will be inaudible through the _Master_ bus or the
_Audition_. The track mixer also contains a miniaturized **Mute** button, in
between the **Record Arm** button and the **Solo** button. Right-clicking on the
**Mute** button gives you advanced options for the behavior of the mute button.

{{< figure src="en/ardour7-mute.png" alt="Mute button in on and off states" >}}

When a track or a bus is _soloing_, all the other tracks and busses are
inaudible through the _Master_ bus or the _Audition_, unless you solo them. So
if you need to play just two tracks out of eight, you don't have to mute six
other tracks, you only need to solo those two. Please note that soloing a bus
will not silence any tracks and vice-versa. 

{{< figure src="en/ardour7-solo.png" alt="Solo button" >}}

When any track or bus is on solo, the _solo indicator_ in the _Auxiliary
Controls_ menu will flash red. Clicking the solo indicator while it is flashing
will deactivate every solo in the session.

{{< figure src="en/ardour7-soloing-flash-button.png" alt="Soloing" >}}

### Arm Record

The _Rec_ button arms the track for recording, as seen in the _Recording Audio_ chapter.

{{< figure src="en/ardour7-arm-rec.png" alt="Arm for recording" >}}

### Fader, Fade/Peak Meters

The most prominent control present in a mixer strip is the _fader_, used to
adjust the overall gain for the corresponding track or bus. The _peak meter_
shows the _peak value_ of the selected track, and is located directly to the
right of the fader. Each peak meter consists of one _bar graph_ in the case of a
mono track, and two bar graphs in case of a stereo track. The small rectangular
field above the meters shows the highest peak value that has been played on that
track so far.

![strip 7](en/Ardour4_Mixer_Strip_5.png) 

By clicking the right-hand button at the bottom of the mixer strip (it reads
"post" in the image above), you will be able to select the _metering point_, for
example the direct "in" from the sound card, the "pre" Fader signal, or the
"post" fader signal.

As you can see in the image below, there is a smaller version of the mixer strip
in each track, called the _track mixer_, which contains a horizontal fader, a
vertical peak meter, as well as miniature buttons for arm record, mute, and
solo. They all mirror those found in the mixer strip for that track.

![strip 6](en/Ardour4_Mixer_Strip_6.png) 

Please refer to the chapter on _Mixing Levels_ for more detailed instruction
about using the fader and peak meters.

### Routing

Finally, we reach the bottom of the mixer strip. Here we find the **Output
Routing** button, marked as "Master" in the earlier screenshot, because it
connects to a bus called "Master". This was discussed earlier in the
_Understanding Routing_ chapter.

## Continuing

Now that we've had a look at the main areas of the mixer strip, we can proceed
to the _Mixing Levels_ chapter to see how we can start to use it. 

Next: [MIXING LEVELS](../mixing-levels)
