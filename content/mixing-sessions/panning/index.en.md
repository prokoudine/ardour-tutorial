+++
title = "Panning"
chapter = false
weight = 3
#pre = "<b>1. </b>"
+++

Panning helps to establish a **Stereo Field**, a relative space between the speakers in which to
place your sounds and instruments.

Once you have established a good balance of levels on all the Tracks,
you can begin to think about panning.

## The Panning Interface

The **Panning** control in Ardour is located in the middle of the mixer
strip.

A Mono Track will have a Mono Panner. It looks like this:

![monopan](en/Ardour4_Panning_MONO.png)

A Stereo Track will have a Stereo Panner, like this:

![stereopan](en/Ardour4_Panning_STEREO.png)

### Mono Panner

The default Mono Panner distributes 1 input to 2 outputs. Its behaviour
is controlled by a single parameter, the *position*. By default, the
panner is centered. You can change the position by clicking and dragging
directly on the Mono Panner. Right-click on the panner to access other
options.

### Stereo Panner

The default Stereo Panner distributes 2 inputs to 2 outputs. Its
behaviour is controlled by two parameters, *width* and *position*. By
default, the panner is centered at full width.

Click and drag either the Left or the Right button to change the
*width*. For example, if you bring them closer together it will look
like this:

![stereo width](en/Ardour4_Panning_STEREO_WIDTH.png) 

With a narrower width, you can also drag the top handle to change the
relative center position, like this:

![stereo panner example](en/Ardour4_Panning_Stereo_example.png) 

If we make the Left and Right buttons to overlap completely (that is,
width is reduced to zero), the handles turn into a single signal
indicator marked "M" (for mono):

![stereo mono example](en/Ardour4_Panning_Stereo_Mono.png) 

## Panning Tricks

A more extensive discussion of panning philosophy and techniques is beyond the scope of this tutorial,
but here are some general rules of thumb:

* Guitars tend to be Panned to the left and right.
* Vocals and bass tend to placed in the center. You want to create
a balance so that one side is not louder then the other.
* Headphones may be helpful in determining how instruments should be panned, and whether the mix feels lopsided because one side is too loud.

Two other tools that are useful in creating a "spatial" or Stereo Field
are **Reverb** and **Delay**. These effects can be used together with
sends to create a drum send which would be further back in the mix with
more Reverb, and a vocal send which might have a little more Delay but
sound closer than the drums. Please see the chapter on **Using Plugins**
and **Using Sends** for more information.

{{% notice tip %}}
Always keep an eye on your Levels while Panning Tracks! Panning
a Track to one channel increases the Level of that channel. This
may change the balance of Levels you set up in the previous chapter, and
in extreme cases can result in Clipping. When this happens, reduce the
overall Levels of that Track and check again how it sits in the Mix.
{{% /notice %}}

## Continuing

By now, you should have a collection of Tracks which are both Mixed well
and have an exciting Stereo Image. In the following chapters, we will
learn about **Using Plugins** to enhance the sound of your Mix.

Next: [USING PLUGINS](../using-plugins)
