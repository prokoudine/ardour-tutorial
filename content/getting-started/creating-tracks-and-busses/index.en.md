+++
title = "Creating tracks and busses"
chapter = false
weight = 3
#pre = "<b>1. </b>"
+++

## What is an Audio Track?

An **Audio** **Track** is a place where you can drag a **Region**
from your **Region List** and where you can record sounds coming from an
outside source.

A Region represents an audio clip, i.e., one of your sound files or just a
portion of a sound file. In the image below, the horizontal strip areas marked
"*MyTrack*" and "*short-drone-mono*" are Tracks. The rectangles containing audio
information are called Regions (for example, the Region "*wheels-mono.1*" is
contained within *MyTrack*).

![Tracks](en/Ardour6_Tracks.png) 

## What is a Bus?

A **Bus** is similar to a track except that it does not contain its own regions.
You cannot record directly into a bus or drag regions into it. The area marked
"*Master*" in your session is an example of a Bus. Typically every session has a
**Master Bus**. All the audio to be **Exported**  from your Session will be sent
to the Master Bus.

## How are Tracks and Busses Used?

Audio-processing **Plugins** and **Automation** can be applied to both
Tracks and Busses.

Audio tracks can be routed to Busses. In fact, many Tracks can be simultaneously
routed to one Bus. Busses are traditionally used as a convenient way to apply
any kind of signal processing to many Tracks at once. For instance, you might
find it useful to route all Tracks that contain drum sounds to a single Bus that
you would call '*drum bus*'. Then, if you decide that all your drum Tracks are
too loud, you can quickly adjust the level of the '*drum bus*' rather than
adjusting each separate Track that feeds into it.

Another use of a Bus would be to have a common **Reverberation** Plugin, so that
any audio Track which requires the Reverb effect could be routed to a single
Bus.

## Adding Tracks and Busses

Right-Click in the empty area beneath any existing Tracks and Busses.
Alternatively, click on the menu *Track > Add Track, Bus, or VCA...* (shortcut
"*Ctrl*" + "*Shift*" + "*N*"). The following window will appear:

![Add Track](en/Ardour6_Add_Track_or_Bus.png)

**Add** lets you specify how many Tracks (or Busses) you would to like
to create.

Choose **Audio Tracks** or **Audio Busses** to specify whether you want to
create Tracks or Busses. There are also other options such as **MIDI Track** and
more. Ardour offers different track types depending on the type of data they
contain. This tutorial will only cover Audio Tracks and Busses. (see the [Ardour
Manual](http://manual.ardour.org/working-with-tracks/track-types/) for details
on all track types)

You can optionally give a **Name** to the Track or Bus being created.
The **Configuration** drop-down menu allows you to specify how many
channels of audio you'd like the new Track or Bus to handle. For
example, if you will be recording your voice on this track using a
single microphone, choose **Mono**. If you plan to import a clip from an
existing song and place it on this Track, choose **Stereo**. The choice
made here will also affect which Plugins you can use on the track (Mono
tracks cannot use Stereo Plugins and vice versa).

The **Position** menu lets you choose where you want the new track or bus to be
placed: first, last, before or after the selection.

You can safely ignore the other options for now. To learn more about each of
them, please check [this page of the complete Ardour
Manual](http://manual.ardour.org/working-with-tracks/adding-tracks-and-busses/).

Click the **Add and Close** button to create the Tracks or Busses you have just
configured, and automatically close the Add Track window. The tracks you just
created will appear as new rows in the **Main Canvas**. If you still wanted to
add more tracks after this step, you could alternatively have chosen **Add
selected items (and leave dialog open)** instead.

## Continuing

Once you've added one or more tracks, you will want to put some audio material
into them to work with. Continue on to the **Importing Audio** and **Recording
Audio** chapters to learn how to do this.

Next: [Importing audio](../importing-audio)
