+++
title = "Starting JACK"
description = "What is JACK audio server and how to start it"
chapter = false
weight = 1
#pre = "<b>1. </b>"
+++

Originally, [JACK audio server](http://jackaudio.org/) was designed to provide a
low-latency audio workflow on Linux with complex routing and transport between
audio and MIDI applications as well as physical audio interface ports. JACK is
available on both Linux, Windows, and macOS.

Today, the use of JACK audio server is discouraged by Ardour developers except
for particular use cases like sophisticated signal routing. For simple
multichannel recording your user experience will be vastly better when relying
on native audio engine available in your operating system, like ALSA on Linux
and Core Audio on macOS. If you do not need a sophisticated solution, feel free
to skip this part of the tutorial.

If you do need to use Ardour with JACK backend, you have two options: starting
it separately using either Qjackctl or Cadence, or launching it from within
Ardour. All user interfaces for JACK operate on the same terminology, you can
refer to the [JACK
configuration](https://kx.studio/Documentation:Manual:jack_configuration) page
for details.

## Using Cadence (Linux)

Launch Cadence. If JACK is already running, you will see a window like this:

![cadence](en/Ardour4_JACK_Cadence.png)

More info on Cadence: [Cadence introduction](http://kxstudio.sourceforge.net/Documentation:Manual:cadence_introduction)

## Using Qjackctl (Linux, Windows, macOS)

If using Qjackctl instead, this is how it should look like:

![qjackctl](en/Ardour4_JACK_qjackctl.png)

If not yet running, use the _Setup_ button to configure JACK, and hit _Start_ to start JACK.

## Continuing

Next: [STARTING ARDOUR](../starting-ardour-on-ubuntu)
