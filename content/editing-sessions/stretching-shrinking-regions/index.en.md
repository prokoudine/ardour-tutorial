---
title: Stretching & shrinking regions
description: Stretching and shrinking regions in Ardour
date: 2025-02-25T00:41:04+03:00
weight: 9
cascade:
  type: docs
---

Regions can be stretched or shrunk in length without changing their pitch by
using the _Stretch/Shrink Regions_ tool (**T** shortcut, for "Time-stretch").

![Stretch/Shrink Regions tool](en/ardour7-stretch-shrink-edit-mode.png?width=20vw)

A small adjustment to the length of a region may not cause noticeable sound
_artifacts_. However, the more extreme the change in length, the more obvious
the effect of processing on the sound.

To use _Stretch/Shrink Regions_, place your cursor on top of the region, and
then click-drag left or right. While dragging, you will see a highlighted area
which represents the new duration to which the region will be shrunk or
stretched when you release the mouse at the current position. Ardour will also
display the new duration of the region next to the highlighted area in units of
the primary clock.

{{< figure src="en/ardour7-stretch-shrink-highlight.png" alt="Stretching highlight" >}}

## Time-Stretching a Region to Fit the Loop

In the image below, we've added another sound sample—this time, a [synthesizer
line from freesound.org](https://freesound.org/people/walkerbelm/sounds/1168/)
to the rhythmic passage we composed in the _Creating Looped Sections_ chapter.

After importing this synth line, you will see that the length of the new region
doesn't match the existing rhythm we've already created. It's too long to be one
bar and too short to be two bars. More importantly, while the first note matches
the beginning of the kick drum's sound above, the second note is clearly
off-beat.

{{< figure src="en/ardour7-stretch-shrink-1.png" alt="Non-matching regions" >}}

We can correct this by using the _Stretch/Shrink_ tool. Select the region you
wish to stretch, switch to the tool, click on the right side of the region, then
drag the cursor until the newly created highlight area matches the new length,
that is, all the way to the second bar (again assisted by the _Grid_ settings).

{{< figure src="en/ardour7-stretch-shrink-action.png" alt="Stretching" >}}

When you release the mouse button, the _Time Stretch Audio_ dialog appears. You
can experiment with different settings for the _Time Stretch_ operation. Each
will affect the sound in a different way. It's a good idea to try different
stretch settings to find out which one gives you the result you're most happy
with.

![Time Stretch Audio dialog](en/ardour7-stretch-shrink-2.png?width=30vw)

Click **Stretch/Shrink** in the _Time Stretch Audio_ dialog to start the
operation.

When the operation is complete, the region of the synthesizer line will now be
exactly two bars long and should fit in with the rhythm we already created with
the drum samples.

{{< figure src="en/ardour7-stretch-shrink-3.png" alt="Stretched audio region" >}}

## Continuing

Now let's talk about editing MIDI regions.

Next: [EDITING MIDI REGIONS](../editing-midi-regions/)
