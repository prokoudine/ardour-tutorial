+++
title = "Routing between applications"
chapter = false
weight = 7
#pre = "<b>1. </b>"
+++

Sometimes you may need to record the audio output of another program into Ardour (for example, the sound of a 
YouTube video playing in Firefox, or the output of SuperCollider or PureData). This chapter shows how to accomplish that.

The examples on this page were created on a computer running Ubuntu
Linux. Beware that things may work differently if you are on another OS
(in particular if you are using a Mac, in which case you will be using
JackPilot). The general principles are always the same, though.

### From your browser to Ardour

Web browsers (Firefox, Chromium, etc) are not JACK-aware applications.
Luckily, systems such as KXStudio and UbuntuStudio come with a bridge
application between regular system audio (like PulseAudio) and JACK. This
tutorial assumes you are using a computer with this bridge already
running and working.

The overall steps to record audio from YouTube (or any other sound
coming from your browser) into Ardour are: 

1.  Create a Stereo Track in Ardour
2.  Disconnect Hardware sources from Track inputs
3.  Connect PulseAudio Jack Sink to Track inputs
4.  Start recording into the Track
5.  Start playing the YouTube video 

For this example, a new session was created with a new Stereo Track
named "*Firefox*":

![YouTube 1](en/Ardour4_YouTube_1.png)

Then we select the Track and click on the Inputs button on the Editor
Mixer strip. In the screenshot above, it's the button just below the track name ("*Firefox*") in the Editor Mixer
strip (it shows only a "-" (dash)in the example above, meaning that there are no connections made yet). We are presented with the Patchbay window specific to that
Track's inputs.

First thing to do is to disconnect any microphone inputs from that track
("*system capture*"), if any. After disconnecting, this part of matrix
for the "*Firefox*" Track should look like this (no green dots):

![YT 2](en/Ardour4_YouTube_2.png) 

Next step is to change tabs in this same window. Choose "*Other*" as the
source. This is where you will find other running applications that can
be sound sources to Ardour. On a Linux computer with PulseAudio Jack
bridge, you will see "*PulseAudio JACK Sink*" as a source. Click on the
appropriate empty squares to create connections (green dots) between
"*front-left*" and "*front-right*" to the Left and Right inputs of the
"*Firefox*" Track. It should eventually look like this: 

![YT 3](en/Ardour4_YouTube_3.png) 

Now you are ready to go. Simply follow the same recording procedures
explained in the **Recording Audio** chapter: record-enable (arm) the
Track (small red circle on the track), arm Ardour to record (big red
button; it starts blinking), then hit the Play button. Go back to your
browser and start playing the YouTube video.

![YT 4](en/Ardour4_YouTube_4.png) 

### From JACK-aware applications to Ardour

Other music software like SuperCollider, Hydrogen, and PureData are
JACK-aware. This means they will show up directly as source and
destination options in Ardour's Audio Connection Manager. You don't need
to worry about any PulseAudio / Jack bridge as in the YouTube example
above.

The procedure is essentially the same: create a Mono or Stereo Track to
record the audio, set that Track's inputs to the desired source, and
record as usual. 

![Hydrogen](en/Ardour4_Hydrogen.png) 

The screenshot above was taken while recording a drum pattern from
Hydrogen directly into an Ardour track named "*from Hydrogen*".
Hydrogen's window is on the right. Ardour's Patchbay window was left
open for demonstration: notice that the application "*Hydrogen*" shows
up as a source under the "*Other*" tab. It is connected directly to the
inputs of the track. Also notice that SuperCollider (another jack-aware
application) happened to be open at the same time, though its window is
not visible in this screenshot. SuperCollider provides 8 default sound
outputs, all of which show up as potential sources in Ardour's Patchbay.


Continuing
----------

This concludes the **Getting Started** chapters. Now that you have
some audio imported, recorded from a line or microphone input, or even
from another application, proceed to the **Arranging Tracks** section and learn how to arrange your composition.

Next: [ARRANGING TRACKS](../arranging-tracks)
