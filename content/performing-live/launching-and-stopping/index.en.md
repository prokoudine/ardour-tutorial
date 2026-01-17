---
title: Launching and stopping
description: To start playing a single clip, just click the button with the triangle icon to the left of its name
weight: 3
cascade:
  type: docs
---

{{< details title="Watch the video" closed="true" >}}

{{< youtube EaNW104iEkM >}}

{{< /details >}}

Let's learn how to start and stop single clips and entire cues.

## Starting clip playback

To start playing a single clip, just click the button with the triangle icon to the left of its name.

![launch from grid](en/launch-from-grid.png)

Transport will start rolling. Once the playhead reaches the next launch quantize unit, which is 1 bar by default, Ardour will start playing the clip. By default the clip will be played on repeat until you stop it.

## Stopping clip playback

There are two ways to stop the playback of a single clip:

1. Stop the transport. This will also stop the playback immediately.

2. Stop the clip’s playback by clicking on any empty clip in the track with a square icon.

![Stopping from grid](en/stop-from-grid.png)

The clip will stop playing, but the transport will keep rolling.

## Starting cue playback

Playing and stopping an entire cue works similarly. To play an entire cue, click the cue header:

![Launch entire cue](en/launch-entire-cue.png)

If some of the trigger slots have a shorter or a longer launch quantize unit, the respective clips may start sooner or later than the other ones.

## Stopping cue playback

To stop the playback of a cue, press the stop button right below the list of cues.

![Stop entire cue](en/stop-entire-cue.png)

This will stop the playback of clips in the cue, but the transport will keep rolling. Or stop the transport, in which case the playback of clips will also stop immediately.
