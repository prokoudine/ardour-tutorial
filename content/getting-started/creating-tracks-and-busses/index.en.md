+++
title = "Creating tracks and busses"
chapter = false
weight = 3
#pre = "<b>1. </b>"
+++

## What are tracks?

A track typically represents a part played with one instrument or sung with
voice. That part can start in the very beginning and finish at the very end of
a song. Or there can be multiple occurences of that instrument/voice within a
song, in which case there will likely be multiple _regions_, or _clips_,
inside a track.

A region is just a portion of audio or MIDI data. For example, a 'Lead guitar'
track can have several regions, one per each solo. Meanwhile, a 'Drums' track
could be just one huge MIDI region spanning the entire song.

An _audio_ track is usually self-contained as it has all the data to play back
music. A _MIDI_ track, however, is comprised of instructions that need to be
interpreted and executed to provide actual sound to listen to.

A region represents an audio clip, i.e., one of your sound files or just a
portion of a sound file. In the image below, the horizontal strip areas marked
"*MyTrack*" and "*short-drone-mono*" are tracks. The rectangles containing audio
information are called regions (for example, the region "*wheels-mono.1*" is
contained within *MyTrack*).

![Tracks](en/Ardour6_Tracks.png?width=30vw)

## What are busses?

A _bus_ is similar to a track except that it does not contain its own regions.
You cannot record directly into a bus or drag regions into it. However, you
can add plugins to a bus and then feed the output of multiple tracks into that
bus (see below for details).

A MIDI bus is similar to an audio bus: no regions, just processing incoming
stream of data and outputting processed data.

The area marked _Master_ in your session is an example of a bus. Typically
every session has a _Master_ bus. All the audio to be exported from your
session will be sent to the Master bus.

## How are tracks and busses used?

Audio-processing _plugins_ and _automation_ can be applied to both tracks and
busses.

Audio tracks can be routed to busses. In fact, many tracks can be simultaneously
routed to one bus. busses are traditionally used as a convenient way to apply
any kind of signal processing to many tracks at once. For instance, you might
find it useful to route all tracks that contain drum sounds to a single Bus that
you would call '*drum bus*'. Then, if you decide that all your drum tracks are
too loud, you can quickly adjust the level of the '*drum bus*' rather than
adjusting each separate track that feeds into it.

Another use of a bus would be to have a common reverberation plugin, so that any
audio track which requires the reverb effect could be routed to a single bus.

## Adding tracks and busses

**Right-click** in the empty area beneath any existing tracks and busses.
Alternatively, click on the menu `Track > Add track, Bus, or VCA...` (**Ctrl+Shift+N** shortcut). The following window will appear:

![Add track](en/Ardour7_Add_Track_or_Bus.png?width=45vw)

Ardour offers different track types depending on the type of data they contain.
This tutorial will only cover audio tracks and busses. (see the [Ardour
manual](http://manual.ardour.org/working-with-tracks/track-types/) for details
on all track types or their brief explanation in a section below).

Choose _Audio tracks_ or _Audio busses_ to specify whether you want to create audio
tracks or busses.

The _Add_ numeric input box lets you specify how many tracks (or busses) you would
to like to create.

You can optionally give a _Name_ to the track or bus being created. The
_Configuration_ drop-down menu allows you to specify how many channels of audio
you'd like the new track or Bus to handle. For example, if you will be recording
your voice on this track using a single microphone, choose _Mono_. If you plan
to import a clip from an existing song and place it on this track, choose
_Stereo_. The choice made here will also affect which plugins you can use on the
track (mono tracks cannot use stereo plugins and vice versa).

{{% notice tip %}}
When you create a new MIDI track, the name is automatically taken from
whatever virtual instrument you pick by default.
{{% /notice %}}

The _Position_ menu lets you choose where you want the new track or bus to be
placed: first, last, before or after the selection.

You can safely ignore the other options for now. To learn more about each of
them, please check [this page of the complete Ardour
manual](http://manual.ardour.org/working-with-tracks/adding-tracks-and-busses/).

Click the **Add and Close** button to create the tracks or busses you have just
configured, and automatically close the _Add Track_ window. The tracks you just
created will appear as new rows in the main canvas. If you want to add multiple
tracks with different configuration, opt for **Add selected items (and leave
dialog open)** instead.

## Other types of tracks and busses

When adding tracks and busses to your project, you'll see more options
available.

**Foldback busses** are meant for stage monitoring mixes where you might want
giving each performer a customized mix that goes right into their earpiece.
E.g. more rhythm section and less brass section in the mix for a solo
guitarist. [See
here](https://manual.ardour.org/ardours-interface/foldback-strip/) for more
details.

**VCA masters** are another way to group tracks. These mixer strips provide
a single fader for multiple tracks. Please refer to the [user
manual](https://manual.ardour.org/ardours-interface/control-masters/) for more
information.

## Continuing

Once you've added one or more tracks, you will want to put some audio material
into them to work with. Continue on to the **Importing Audio** and **Recording
Audio** chapters to learn how to do this.

Next: [IMPORTING AUDIO](../importing-audio)
