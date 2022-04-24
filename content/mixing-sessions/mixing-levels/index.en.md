+++
title = "Mixing levels"
chapter = false
weight = 2
+++

_Levels_ are the volumes of each track relative to the others.

If you can't hear a bass line above the other instruments, one obvious option
would be to raise the bass line volume. Levels can be adjusted using the fader
in the mixer strip or in each track, just below the track name. The first step
in mixing is to listen to everything that has been recorded and adjust the
levels of all tracks so you can hear everything clearly, but in a manner that is
appropriate for the song. For example, the vocal track is normally louder than
the rhythm guitar because the voice is the focal point of the song.

## Using the Fader

The fader is the primary control of levels for each track. The exact value of
the track's levels are displayed in the small rectangular field above the fader.
You can change the levels by either dragging the slider or typing in a new
number directly into the rectangle with the number.

By default the fader is set to −0.0 dB, meaning that the levels of the track are
not changed. In the screenshot below, the fader for the track named "kick" is
set to -0.0, and the peak meter indicates that the highest peak so far was
-5.1dB.

{{< figure alt="levels1" src="en/Ardour4_Mixing_Levels_1.png" >}} 

## Avoiding Clipping

One other important task in mixing is to avoid _clipping_. The peak value on
the mixer strip turns red when the signal has peaked above 0.0dB. You can use
this tool to monitor the highest levels of your track while mixing. 

In the screenshot below, the synth track has just clipped to +5.9. You can also
see little red edges on the waveform itself, indicating the exact locations
where the recorded sound clipped. 

{{< figure alt="levels2" src="en/Ardour4_Mixing_Levels_2.png" >}}

Click on the red number in the peak meter to reset it.

{{% notice tip %}}
For the sake of the exercise, try to record your voice so that it clips. Hear
how the playback is distorted.
{{% /notice %}}

You should make sure that anything that you send to your sound card or that you
will eventually export as a sound file (such as for CD mastering) **never** goes
above 0.0dB to avoid actual clipping.

If the clipping occurs in a very percussive sound and it is almost unnoticeable,
you may be able to hide it by decreasing the gain (for example, normalize the
region to 0.0dB, or a lower number like -1.0dB). However, often the clipping
results in audible distortion of the recorded sound. The best solution in this
case is to just record again with lower levels.

## Continuing

When you are finished with this chapter of the tutorial, you should have a
collection of tracks whose levels are well adjusted to each other and do not
clip when added together in the _Master_ bus. Once this is accomplished, we can
proceed to learn about panning in the next chapter, so that our mix takes on a
strong feeling of stereo space.

Next: [PANNING](../panning)
