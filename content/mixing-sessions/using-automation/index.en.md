+++
title = "Using automation"
description = "How to create and edit automation in Ardour"
chapter = false
weight = 8
+++

_Automation_ is a way of dynamically changing audio processing parameters over
time.

Up to now, we have used fixed values for various parameters of our tracks, for
example, a track fader set to -3.0dB; or a mono panner set to 100% left. These
fixed values would apply for the entire track throughout the whole session.

But what if you would like these values to change over time in a
pre-determined way? For example, you may want to have the gain of a track to
gradually decrease over twenty seconds. Or you may want to make a sound move
from left to right over two seconds.

This is accomplished with automation. The fader, panning, and any of the
parameters of the plugins used in that track can be automated. An automated
parameter is displayed underneath the parent track in its own _automation
track_. Automation data is visually represented as an _automation line_, made
up of a number of _automation points_. Here's how a track with automation
looks like:

{{< figure alt="Typical automation lane" src="en/Ardour4_Automation_Fader_1.png" >}}

In the image above, the automation lane called _Fader_ is associated to the
parent track called _Audio 1_. The automation line controls fader (volume)
changes over time. 

## Creating a Fader Automation Line

Let's create a simple fader automation. Click the **A** button of a chosen
track. A menu will appear, where you can select the parameter you would like to
automate. Choose _Fader_.

{{< figure alt="Choose Fader" src="en/Ardour4_Automation_Button.png" >}}

An automation lane will then appear. Select the _Draw_ mode (**D** shortcut):

{{< figure alt="Draw mode" src="en/Ardour4_EditModes_D.png" >}}

Now you can create automation points by clicking anywhere in the automation
lane. An automation line joins the automation points you add. The yellow number
(-15.3dB in the image below) indicates the gain level for the selected
automation point.

{{< figure alt="Automation point value indication" src="en/Ardour4_Automation_Fader_2.png" >}}

You can also draw automation lines freely in the Draw mode. Just click, hold,
and draw a free automation line:

{{< figure alt="Drawing automation freely, before releasing mouse button" src="en/ardour8-draw-automation-freely-pre-release.png" >}}

Once you release the mouse button, you see a lot of automation control points,
because Ardour tries to preserve the exact movement you made when drawing
the line.

{{< figure alt="Drawing automation freely, after releasing mouse button" src="en/ardour8-draw-automation-freely-post-release.png" >}}

You can see that when you zoom in:

{{< figure alt="Drawing automation freely, zoomed in" src="en/ardour8-draw-automation-freely-zoomed.png" >}}

You can also press **Ctrl** and click to create straight lines:

{{< figure alt="Drawing straight segments of automation lines, pre-release" src="en/ardour8-draw-automation-lines-pre-release.png" >}}

This will create this automation line:

{{< figure alt="Drawing straight segments of automation lines, post-release" src="en/ardour8-draw-automation-lines-post-release.png" >}}

It's also possible to combine free automation drawing with drawing lines.
Simply press **Ctrl** when you need to draw straight segment and release the
button when the straight segment has to end, then keep drawing a free line:

{{< figure alt="A combination of free and straight segments" src="en/ardour8-draw-automation-freely-with-lines-pre-release.png" >}}

### Automation States

The automation curve will not play, however, until you set the automation state
to _Play_.

{{< figure alt="automation state" src="en/Ardour4_Automation_Fader_3.png" >}}

**Manual**
: When set to _Manual_, the track will ignore any automation data. It will just
play with whatever volume is the fader is set to. In this mode, you are able to
move the track fader by hand to set a new fixed level. That's the default
behavior of a track when it's first created.

**Play**
: When set to _Play_, the track will automatically change the gain levels
following the automation curve drawn in the automation lane. You will no longer
be able to move the track fader by hand. During playback, you will see the track
fader moving up and down according to the curve. 

**Write**
: This mode will continuously record user changes to the automated parameter as
the transport plays, creating an automation line. For instance, you may start
playback and then make real-time changes in gain using the fader of your track.
All the changes you make will be written (recorded) as an automation line, which
then you can play back later by switching the automation mode back to _Play_.

**Touch**
: This mode is similar to the _Write_ mode, but it won't record over existing
automation data unless the parameter is being changed.

**Latch**
: This mode is similar to the _Touch_ mode, but it will also change automation
when the control is changed in some way during session playback. It will also
overwrite the automation curve with the last value it was changed to until
playback is stopped.

If these concepts are new to you, focus now on just the first two modes
(_Manual_ and _Play_) and practice creating automation by drawing automation
curves by hand.

## Creating a Plugin for Automation

You may add automation to any plugin which has already been added to a track. In
the example below, we have the _AM pitchshifter_ plugin added to a track.

{{< figure alt="pluginautomation1" src="en/Ardour4_Automation_Plugin1.png" >}}

In order to select a plugin parameter for automation, click the button on the
track marked _a_. The menu will appear. Under _Processor Automation_ you will
find a listing of the plugins you have added for that track.

{{< figure alt="pluginautomation2" src="en/Ardour4_Automation_Plugin2.png" >}}

Within each listed plugin, you may choose which parameter you want to automate
from a list. In the example, we chose the _Pitch shift_ parameter of the _AM
pitchshifter_ plugin. An automation lane for that parameter appears. Note that
as you open several automation lanes, they will appear one after the other
below the main parent track. 

Draw an automation curve for that parameter. Don't forget to set the automation
state to _Play_.

{{< figure alt="pluginautomation3" src="en/Ardour4_Automation_Plugin3.png" >}}

In the image above, the pitch shift of the sound is now changing over time,
controlled by the curve.

{{% notice tip %}}
You can hide an automation lane by clicking on the "X" at the upper left corner
of the automation lane. Note that a hidden automation lane continues to function
even when it is not visible. 
{{% /notice %}}

## Adding Better Visual Resolution to Automation 

You can achieve a greater amount of vertical precision by increasing the height
of the automation lane. Move your cursor near the lower edge of the automation
track. The pointer turns into a vertical double arrow. Drag it down to increase
the height of the automation lane. Notice that the parent track and the
automation lane heights are independent, so while working in your automation
curves you might set them up like this:

{{< figure alt="pluginautomation5" src="en/Ardour4_Automation_Plugin4.png" >}}

{{% notice tip %}}
Remember that you can also zoom in and out to increase resolution in the
horizontal axis.
{{% /notice %}}

## Working with Automation Points 

There are several ways to adjust automation points, depending on the editing
mode you are in:

- An automation point can be dragged in any direction with the mouse (works in
_Grab_, _Draw_, and _Edit_ modes).
- To remove an automation point, hold down the **Shift** key while
right-clicking on it (works in _Grab_, _Draw_, and _Edit_ modes).
- _Edit_ mode only: any segment of the automation line between automation points
may be dragged vertically, affecting both end points at once, without affecting
their horizontal position. Simply click somewhere on the line between two
points, and drag up and down.
- How to delete multiple automation points at once (_Grab_ mode and _Edit_ mode
only): select multiple automation points by dragging a box starting on the track
background around the points. Then the selected points may be deleted by hitting
**Delete** (_not_ **Backspace**). If you are on a Mac and do not have a true
**Delete** key, try **Function + Backspace**.

After an automation curve ends, its value will stay at that level for all
subsequent regions, whether or not you have drawn a continuation of the curve.

{{< figure alt="end point" src="en/Ardour4_Automation_Fader_End.png" >}}

In the example above, the last point of the curve is at -23dB. That same level
will be kept for the remainder of the track, even though the line is not drawn
until the end.

## Moving Automation

Moving a region to a new location will automatically move the automation data
that might be aligned with it, as we can see in the following screen shots.

Before moving:

{{< figure alt="mv1" src="en/Ardour4_Automation_Moving_1.png" >}}

After moving:

{{< figure alt="mv2" src="en/Ardour4_Automation_Moving_2.png" >}}

You can change this behavior if you like. In other words, if you want automation
curves to stay where they are even when you move regions around, go to `Edit >
Preferences > Editor` and uncheck _Move relevant automation when audio regions
are moved_.

## Region-specific Gain Automation

There is a way to create a gain automation directly bound to a region. When you
select the _Draw_ mode, you should see a flat line on the top half of each
region rectangle:

{{< figure alt="gain-automation" src="en/Ardour4_Automation_Region_Specific_1.png" >}}

Click directly on that line to create automation points. These will be drawn
directly on the region itself, unlike fader automation which is drawn or
recorded in the automation lane. Region gain automation is separate from, and
in addition to, fader automation.

{{< figure alt="gain-automation2" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

As with the automation lanes, a _gain automation point_ can be dragged in any
direction with the mouse. To remove a gain automation point, hold down the
**Shift** key while right-clicking on it.

### Deactivating and Removing Gain Automation

Gain automation can be reset or deactivated from the region context menu, which
is reached by right-clicking on the region.

{{< figure alt="gain-automation3" src="en/Ardour4_Automation_Gain_Tool_Reset.png" >}}

Here, the gain automation is referred to as the _envelope_:

- _Reset Envelope_ removes the gain automation points you have drawn in the
region.
- _Envelope Active_ toggles the gain automation envelope on and off.

### When should I use region Gain Automation or Track Fader Automation?

As seen above, both are very similar. With practice you will notice situations
in which one is more convenient than the other. Here are two examples:

* If all you need to do is a little touch up (cut or boost gain) in a specific
portion of a region, and you are otherwise happy with the level for the rest of
the passage or entire track, use the region-specific automation.

{{< figure alt="gain-example1" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

* If you have a more complex track with crossfades over regions, and/or need to
shape a longer dynamic curve across several regions on the same track, use fader
automation.

{{< figure alt="gain-automation2" src="en/Ardour4_Automation_Gain_Comparison.png" >}}

The screenshot above shows a simple gradual fade starting from the first region
in the track, and ending at the last region. It's very straightforward to do
this with fader automation, but it would be much harder to do it using
region-specific automation.

## Continuing

Once you have your automation in place, you are just about ready to export your
stereo mix to an audio file which you can listen to or share on a website.
Please continue on to the next section to learn the different ways of doing
this.

Next: [EXPORTING A SESSION](../exporting-a-session)
