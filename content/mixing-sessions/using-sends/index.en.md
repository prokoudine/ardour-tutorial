+++
title = "Using sends"
description = "Using sends in Ardour"
chapter = false
weight = 5
+++

A _Send_ is just an extra output for a track or bus with its own separate
fader that can be used to route the signal to other points in Ardour.

Also known as _auxiliary sends_, they tap the signal at a specific point in
the signal flow (pre-fader, post-fader, before or after EQs and other plugins,
etc.) and send a copy of that signal somewhere else, without affecting the
normal signal flow downwards to the channel fader.

In Ardour, you can easily add _sends_ to tracks and busses through the mixer
strip. Sends are processors, just like plugins.

## When is a Send Useful? 

In earlier chapters, we built a drum kit pattern with four separate tracks:
kick, snare, hihat, and clap. Let's say now you'd like to add a reverb to the
drums. You could of course add a separate plugin for each individual track,
and tweak their settings separately, but this method unnecessarily increases
the amount of work. Every time you want to change a reverb setting across the
board for all drums, you'd have to open all four reverb plugins and change
them in the same way.

This is where sends come in handy: you can use them to add a particular
effect to a set of tracks without creating multiple instances of the same
plugin.

Here's the overview of how we will do this:

1. Create a single bus with the desired plugin.
2. Add a send to each drum track to which you want to apply the effect.
3. Route these sends to the bus.

## Creating the Bus and adding a Plugin

Create a bus (`Track > Add Track, Bus, or VCA...` in the menu), name it
appropriately, and add a plugin in the pre-fader region (right-click just
above the fader's blue rectangle in the processor box), as discussed in the
previous chapter, _Using Plugins_.

In this example, we have created a mono bus called _Drums_, and added the
_ACE Reverb_ plugin to the bus.

{{< figure alt="sends1" src="en/ardour7-ace-reverb-in-mixer-strip.png" >}} 

### Bus inputs

The "-" display in the bus input button indicates that nothing is routed to
this bus yet. We will take care of this later.

### Bus output

Before routing a send to this bus, first make sure that the bus outputs are
routed to the _Master_ bus, as shown below (button at bottom reads "*master*").

{{< figure alt="sends2" src="en/Ardour4_Sends_2.png" >}} 

Also, open the plugin window (double click on the _ACE Reverb_ rectangle) and
set the plugin's signal mix to 1.0 _Blend_ value.

{{< figure alt="sends3" src="en/ardour7-ace-reverb-settings.png" >}} 

This ensures that the bus carries all of the processed signal from the plugin,
and none of the unprocessed signal to the _Master_ bus. Remember, the
unprocessed, 'clean' signals are still available from their original tracks,
so there is no need to duplicate them in this bus.

## Creating and Routing Sends

Now we can create sends in the other tracks and route them to the bus inputs.

Like plugins, sends are also created in the processor box. Go to each of your
drum tracks, right-click in empty space of the processor box, and create a
_New Aux Send..._ directed to the appropriate bus (in our case, named _Drums_).

{{< figure alt="sends4" src="en/ardour7-adding-aux-send.png" >}} 

{{% notice tip %}}
If you do *not* see the _New Aux Sends..._ option in the menu, it's probably
because you did not create any bus yet. Go back to the previous step to create
the bus.
{{% /notice %}}

You should now see the send displayed in the processor box:

{{< figure alt="postfader" src="en/ardour7-post-fader-send.png" >}} 

The little _Send_ slider you see just below the green rectangle is the send
fader, which  controls how much sound will be sent from this track to the bus.

### Post-Fader vs Pre-Fader Sends

Notice that the image above shows a post-fader send (it sits _after_ the fader
rectangle). In post-fader sends, the send level is controlled _first_ by both
the track/Bus Fader and _second_ by the send fader.

In a _pre_-fader send, on the other hand, the send level is controlled only by
the send fader, independently of the track/bus fader. A pre-fader send would
look like this:

{{< figure alt="prefader" src="en/ardour7-pre-fader-send.png" >}} 

You can drag the send rectangle up and down the processor box to make it pre-
or post-fader as needed.

{{% notice tip %}}
The choice of pre- or post-fader depending on the type of effect plugin used and
the desired result. For this exercise, either one will work.
{{% /notice %}}

A send behaves just like any other plugin in the processor box. You can
deactivate it temporarily by clicking on the small LED, and you can right click
on the rectangle to access other options, including _Delete_.

### Send Fader

To control the level of each send, simply click and drag the send fader to
increase or decrease its volume.

{{< figure alt="sendfader" src="en/Ardour4_Send_Fader.png" >}} 

The _Drums_ bus is now receiving the sum of all tracks, and applying the effect
to it. A single plugin applied to the bus controls the effect for the mix of all
drum sounds routed there. This way, you have independent control over the "dry"
sound of the original tracks, and the "wet" sound of coming out of the bus. 

Because sends are very useful for this kind of work with effect plugins, they
are also commonly called "Effect Sends".

## Continuing

Now that you know how to add plugins to a track, as well as how to add sends
to tracks to create plugin busses usable by any number of tracks, it might be
helpful to learn about a few other plugins useful in the mixing process.
Please continue on to the following chapters covering _dynamics_ and
_equalizing_.

Next: [DYNAMICS](../dynamics)
