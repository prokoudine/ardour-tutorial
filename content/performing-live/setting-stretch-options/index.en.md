---
title: Setting stretch options
description: Sometimes a drum loop that you would really like to use in a song has slower or faster tempo than your session’s tempo
weight: 4
cascade:
  type: docs
---

Sometimes a drum loop that you would really like to use in a song has slower or faster tempo than your session’s tempo. Fortunately, Ardour has a way to keep it perfectly in sync with the rest of the song.

<!-- {{< youtube _Pc7CHzewQ0 >}} -->

## How Ardour handles clip tempo by default

By default, Ardour will estimate the actual tempo in an audio file. Then when you play it back, it will stretch or compress that audio file on the fly to match the current session tempo. This works even within a tempo ramp, so the clip’s tempo will follow acceleration and deceleration.

You can override this default behavior for artistic purposes and play a clip at its original tempo by disabling the stretching of this clip.

<!-- FIXME SCREENSHOT -->

## Overriding clip's tempo

You can also easily make the clip’s tempo two, four, eight or more times faster or slower by clicking these two buttons.

<!-- FIXME SCREENSHOT -->

Let’s say your original clip’s tempo is 120 bpm and your session’s tempo is 140 bpm. This means that the clip will play only 14% faster. But if you make Ardour assume that the original tempo is 60 bpm, then Ardour will have to make up for the 80 bpm of difference rather than 20 bpm. And thus it will play the clip more than two times faster.

You can increase or decrease the clip’s tempo in smaller steps by editing the amount of beats this clip is measured in. So if you want this clip to play in 14 bars, its new assumed tempo will become 105 bpm.

<!-- FIXME SCREENSHOT -->

## Material-specific options

You can’t stretch or compress drum loops and piano loops the same way, so Ardour provides three options.

<!-- FIXME SCREENSHOT -->

- The _Crisp_ preset works best with drum loops and other material where you have fast attack, high decay, and then fast sustain and release.
- The _Smooth_ preset works best with long sustained notes that have a slow attack, like a synth pad or bowed strings.
- And the _Mixed_ preset is for something between those two cases, like vocals or piano chords.
