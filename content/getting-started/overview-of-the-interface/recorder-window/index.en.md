+++
title = "Recorder window"
description = "Basics of Ardour's recorder window"
chapter = false
weight = 3
#pre = "<b>1. </b>"
+++

The _Recorder_ window is streamlined for one particular use case: recording to multiple tracks. The interface is pointedly simplified to remove all distraction.

{{< figure src="en/recorder-window-sections.png" alt="Sections of the Recorder window" >}}

There are three major sections in the Recorder window as outlined above:

1. Window-specific toolbar
2. The timeline and the tracks representation
3. Inputs control

## Window-specific toolbar

The toolbar has specific commands and information: arming and disarming all
tracks for recording, discarding the last take, automatically switching all
inputs for signal monitoring, estimation of the time you can record to the disk
until it's out of free space etc.

{{< figure src="en/recorder-toolbar.png" alt="Recorder toolbar" >}}

## The timeline and the tracks representation

The timeline only displays timecode, and the tracks view has no waveform
rendering at all. This helps with the use of system resources when recording
dozens of tracks simultaneously.

{{< figure src="en/recorder-timeline-tracks.png" alt="Recorder timeline and tracks" >}}

## Inputs control

The bottom part of the window is where you control inputs: you can both monitor
input volume and rename physical ports for convenience. To do the latter, just
click on the input port name and give a new name.

{{< figure src="en/recorder-input-renaming-dialog.png" alt="" >}}

E.g. if you have two mic inputs, one for vocal and one for guitar, naming them
accordingly will simplify picking the right one for the right track. This will
be even more convenient for audio interfaces with e.g. 18 inputs.

{{< figure src="en/recorder-input-new-names.png" alt="" >}}

## Continuing

Finally, in the next section we'll take a quick look at the _Cue_ window that is
new in Ardour 7.0 and provides a familiar user interface to launching audio and
MIDI clips.

Next: [Cue window](../cue-window)