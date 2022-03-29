+++
title = "Cue window"
description = "Basics of Ardour's cue window"
chapter = false
weight = 4
#pre = "<b>1. </b>"
+++

The _Cue_ window provides tools to set up live performance using Ardour. We are not going to use _Cue_ in this tutorial, so this is just a quick overview to give you a basic idea what all this is about.

## User interface elements

The user interface is pretty much standard for this type of a feature set.

{{< figure src="en/ardour7-cue-window-sections.png" alt="" >}}

Here are the main UI parts:

1. A grid of clip launchers
2. A browser for reusable clips
3. Clip settings

From left to right you get tracks that contain clips (not visible on the timeline when you switch to the _Editor_ window). From top to bottom you get 8 rows called scenes, _A_ to _H_.

The browser on the right allows easily dropping pre-recorded clips onto clip slots for playback. You can use both audio and MIDI clips. Dropping a clip on the empty space will create a new track and automatically fill the first slot (scene _A_) with that clip.

Settings below allow customizing how a clip is played, whether it is stretched to match certain bpm value, whether it triggers playback of a certain other clip etc.

## Non-linear workflow

Working with clip launchers is commonly referred to as non-linear workflow, because it is based on looped playback of pre-recorded clips where you don't have to go from scene A to scene H directly.

You can set up your clip launchers in a way that a clip in scene _B_ will play 4 times, trigger a clip in scene _A_ that will play 2 times, then jump to clip _C_ and play it 6 times, then go back to clip _B_, which will repeat the entire cycle again and again until you stop it manually. And all that without ever pressing the **Play** button in the transport to play a song from start to finish.

## Combining linear and non-linear workflows

While you can play an entire song live without ever getting out of the _Cue_ window — especially when you have a hardware grid controller and all pre-recorded clips you might need — you can integrate clip launchers into regular linear workflow in the _Editor_ window. To do that, you need to add markers in the _Cue Markers_ timeline.

Here is a simple example of that:

{{< figure src="en/ardour7-linear-and-nonlinear.png" alt="Combining linear and non-linear workflow" >}}

Ardour plays two bars of a regular MIDI track that uses a sampled instrument, then launches scene _A_ at bar 3, scene _B_ at bar 4, and stops all scenes at bar 5. You can trigger and stop scenes at any time in your otherwise linear project, as many times as you like.

## Continuing

Now that you are familiar with main Ardour's windows, let's jump to the next
section where we create a new track and then import some audio file.

Next: [Creating tracks and busses](../../creating-tracks-and-busses)