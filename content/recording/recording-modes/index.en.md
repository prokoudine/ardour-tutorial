---
title: Recording modes
description: You have a choice over what Ardour does when it overdubs existing material
weight: 3
cascade:
  type: docs
---

When you do overdubbing with punch in and out, all changes happen non-destructively. You do however have a choice over what Ardour does when it overdubs. For that you have three recording modes that you can select in the main toolbar: **Layered**, **Non-Layered**, and **Sound-on-Sound**.

![List of recording modes](en/recording-modes-list.png)

## Layered

The **Layered** mode is used by default. When you overdub in layered mode, it creates a new opaque region on top of the existing one.

To see all takes stacked as layers, open the right-click menu above the track's header and switch from the **Overlaid** mode to the **Stacked** mode. When the playhead is above this new region, you only hear the sound from the top layer and you don’t hear the sound from the bottom layer.

![MIDI overdubs in Layered mode, stacked view](en/layered-mode-stacked.png)

**When to use it**: you want to have easy access to multiple takes when overdubbing.

## Non-Layered

In the **Non-Layered** mode, Ardour trims the existing region so that the new one fits right in:

![Audio overdub in Non-Layered mode](en/non-layered-mode.png)

Both regions are opaque. If you didn’t like the take, you can still undo it. Or if you made multiple changes after overdubbing and you want to undo, you can select the newer region, delete it from the timeline, and then tweak the edge of either of the two regions to reveal original audio or MIDI.

**When to use it**: you don’t want to preserve individual takes when overdubbing.

## Sound-on-Sound

When you overdub in the **Sound-on-Sound** mode, Ardour creates a new region in a new layer at the top, but it makes this region transparent. This means that Ardour will play audio or MIDI from all takes at the same time.

![Drum overdubs in Sound-on-Sound mode](en/sound-on-sound-overlaid.png)

**When to use it**: a common use is progressively building up a drum track by adding kick drum, toms, snares, and hi-hats in each individual take.

> [!TIP]
> You can toggle the opacity of stacked regions at any time later. To do that, select a region, go to the main menu and use the `Region > Gain > Opaque` toggle. You can do the same in the right-click menu above the region. Or you can just press **Alt+0**.

**Continuing**

In the next chapter, we'll talk about helping yourself to perform in sync with the rest of the session material, whether you are using a MIDI keyboard to record a lead synth part or a bass guitar.
