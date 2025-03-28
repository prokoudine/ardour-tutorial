---
title: Setting launch options
description: Ardour provides several options that define how a clip is triggered, when it starts playing after you trigger it, etc.
weight: 5
cascade:
  type: docs
---

{{< details title="Watch the video" closed="true" >}}

{{< youtube TuZvUn311MQ >}}

{{< /details >}}

Ardour provides several options that define how a clip is triggered, when it starts playing after you trigger it, and whether it responds to triggering the playback of an entire cue it belongs to.

![Launch Options](en/launch-options.png)

## Launch styles

Let’s say we have a default setup where velocity sense is set to zero, the launch style is set to _Trigger_, the launch quantize unit is 1 bar, both _Legato_ and _Cue Isolate_ options are disabled, and the transport is rolling.

<!-- FIXME SCREENSHOT -->

When you click the trigger button, Ardour will wait for the start of the next bar and start playing back the clip. In this case, the trigger button will not respond to any new clicks or MIDI events sent to it. And because velocity sense is set to zero and you are using a mouse, the clip will be played at its regular loudness.

But if you set it to the maximum value and use an external MIDI controller with velocity-sensitive keys or silicon pads, the loudness will depend on how hard you press the key or the pad.

## Launch quantize

When you set the launch quantize unit to 4 bars, Ardour will divide the entire timeline accordingly. So if the playhead is at bar 6 and you’ve just triggered the playback of a clip, Ardour will wait for bar 9 and then start playing the clip. You can also use much smaller units like one-sixteenth of a bar.

<!-- FIXME SCREENSHOT -->

But Trigger is not the only launch style.

_Re-trigger_ will start playing the clip and will respond to new clicks or MIDI events. When you trigger it again, Ardour will stop playing the clip, wait for the next launch quantize unit, and then play the clip from the beginning. You can repeat this as many times as you like.

_Gate_ will play the clip as long as you hold down the mouse button or the MIDI key or pad.

With _Toggle_, you can just click the trigger button once and it will keep playing the clip until you click it again or send a MIDI event to it.

## Legato

_Legato_ is useful when you often switch between clips of the same track. Let’s say you have a drum loop playing that is 8 bars long. And you have two variations of a bass line loop that are also both 8 bars long. So when you are two bars into the new repeat cycle and you trigger the second bass line, without legato mode, your bass line starts from the beginning and thus you get a 2 bars long offset, and your drum loop and your bass line loop are now out of sync. But when you enable the Legato mode, Ardour will start playing the second bass line loop from the third bar. And so your rhythm section will be perfectly in sync.

<!-- FIXME SCREENSHOT -->

## Cue Isolate

The _Cue Isolate_ mode is useful when you don’t need to play a particular clip when you launch the entire cue. Typically this is because you programmed a complex follow sequence for a certain track and you don’t want it to be jeopardized by launching cues.