+++
title = "Non-destructive editing"
description = "What is non-destructive editing and how does it work in Ardour?"
chapter = false
weight = 1
+++

In one of the previous chapters we already discussed that Ardour operates on
sessions that encompass all material you have: audio clips, MIDI clips, all
effects applied to tracks and busses etc. Before we get to actual editing, let's
talk about basics of non-destructive editing, how it's implemented in Ardour,
and why it should give you peace of mind when you do some heavy editing.

## What does non-destructive editing actually mean?

In a nutshell, a non-destructive approach to editing means this: whatever you
do, your source material always stays intact. Instead of writing to original
files, a program would rather describe changes you applied, store them in a
project file, and then "replay" them when loading that project.

## How does it work in Ardour?

Here is a quick example. Let's record a short audio clip, cut it in half and
then drag the right half to the right creating a gap:

{{< figure src="en/non-destructive-editing-cut-move-example.gif" 
alt="Cutting and moving a audio region" >}}

Here is what actually happens here. Ardour creates a region that references the
original audio file and uses all of its data, from the first to the last sample.

When you split the file in two, Ardour creates two regions, and they both
reference the original file. But now the project file says: the left region
starts at this point in time, begins with the first sample of the original file
and stops at that sample in the middle, and the second region starts at a
different point in time with that sample in the middle of the original file, and
then it stops at the last sample of the original file.

You can cut an audio region into as many smaller clips as you like, move them
around tracks, change their start/end points, stretch or contract them etc. The
original audio file will never change on the disk.

When you save a project, all that information is preserved in the session file.
When you reopen the session, Ardour reads all these references, loads original
files and recreates all edited audio regions from original audio files. That's
what "replaying changes" really means.

If you don't like the way you edited an original take and you are way too far
into editing to undo the changes, you can start all over again without recording
a new take. For that, you can open the right sidebar by pressing **Shift+L**, go
to the _Sources_ tab, grab the name of the original audio file of the take, drop
it on any track and then move it around, cut etc.

{{< figure src="en/non-destructive-editing-redo-all-over-again.gif" 
alt="Redo the editing all over again" >}}

Moreover, any effects you apply to a track are also non-destructive. Ardour will
apply them to original audio stream and play the result on-the-fly.

In case of MIDI clips played through a synthesizer, Ardour will use the
synthesizer to render a stream of audio data while the playhead is rolling,
capture that audio stream, apply effects to it, and then play the resulting
audio stream as you go. 

## Differences between audio and MIDI regions

As you already know, audio files are always intact. But MIDI regions are
different: you can actually edit their contents, and the changes are saved to
MIDI files on the disk.

One case where this matters is when you want to combine multiple regions into
one. You can do that with audio regions by selecting the ones you want to merge
and them use `Region > Edit > Combine`. This will create a kind of a meta-region
that references N audio files on the disk.

However you cannot do the same with MIDI regions primarily because they are
editable on disk, and thus combining something that can physically change can
wreak havoc on data continuity.

## Where does Ardour store source material?

Consider this generic project. You have here several audio tracks representing
drums, two audio tracks for bass and solo guitar, and a MIDI track for electric
piano.

{{< figure src="en/session-example.png" alt="Session example" >}}

If you go to the session folder, you'll find there a number of subfolders,
including these two:

- 'interchange', this is where source audio and MIDI files are stored;
- 'plugins', here Ardour saves the state of every instance of every plugin 
used in the project.

When you record one instrument, every take you do is represented by one physical
audio file per channel. So if you did three takes in a stereo track, you'll have
6 audio files.

## Does Ardour ever change audio data on disk?

The only time Ardour does anything to actual audio files on the disk is when you
explicitely it you to remove audio files that aren't used anywhere in the
project. Typically this is done when you did dozens of takes, you made your
choice and you don't want these files on the disk anymore because they take
space.

Even then, you do it in two steps. First you go to `Session > Clean-up >
Clean-up Unused Sources` to put unused original files into a trash bin, then you
separately go to `Session > Clean-up > Flush Wastebasket` to actually tell
Ardour to remove unused files physically.

## Continuing

Now that you are familiar with basics of non-destructive editing, let's do some
actual arranging and editing.

Next: [ARRANGING TRACKS](../arranging-tracks)
