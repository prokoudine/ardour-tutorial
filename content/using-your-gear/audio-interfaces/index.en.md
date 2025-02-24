---
title: "Audio interfaces"
description: "What you need to know about audio interfaces and Ardour"
chapter: false
weight: 1
---

This page explains what audio engines are and how to set up Ardour for production.

## How to pick the right engine

### Linux engines

On Linux, there are multiple audio systems (or _backends_) available.

_ALSA_ is suggested by default. It is currently the recommended way to use Ardour in production. With ALSA, there are no convenience wrappers or abstractions. You connect to physical audio and MIDI ports directly.

This means Ardour will take over the audio interface of your choice and won't share it with any other applications. As long as Ardour is running, any other desktop applications you are running too won't be able to connect to  the audio interface and play any sound.

<!-- ![Audio/MIDI setup](en/ardour7-alsa-backend-settings.png?width=40vw) -->

The _PulseAudio_ backend currently only supports playback. This means you won't be able to record any audio as long as you use PulseAudio, but you can edit, mix, and export while listening in Bluetooth headphones on the go. It's also the most convenient option when you want to follow a mixing or mastering tutorial on YouTube and be able to listen to the output from Ardour.

<!-- ![PulseAudio settings](en/ardour7-pulse-audio-settings.png?width=40vw) -->

<!-- ### Windows engines -->

<!-- ### macOS engines -->

### JACK audio

The JACK audio backend was designed with a client-server architecture pattern in mind. JACK captures all physical ports of an audio interface and routes signal between its clients (e.g. a digital audio workstation, a software synthesizer, a drum sequencer etc.) and various ports. It is available on both Linux, Windows, and macOS.

Today, the use of JACK audio server is discouraged by Ardour developers except for particular use cases like sophisticated signal routing, e.g. recording from physical audio interface ports and other applications at the same time.

For simple multichannel recording your user experience will be vastly better when relying on native audio engine available in your operating system, like ALSA on Linux and CoreAudio on macOS. If you absolutely need JACK, it's best to start and control it from a separate program like [Qjackctl](https://qjackctl.sourceforge.io/) or [Cadence](https://kx.studio/Applications:Cadence).

## How to set up the engine

Most supported audio backend have a few common settings:

- _Device_ — it's either your built-in sound card, or an external sound card if
you have one (such as a USB interface).
- _Sample Rate_ — 48K or 44.1K are common choices.
- _Buffer Size_ — especially for external USB audio, try picking an option that
results in a latency that is a multiple of 1ms (4ms, 6ms etc.) to produce less glitches.
- _Periods_ — it's often suggested to use 3 for an external USB audio interface,
but you should see if you can get a multiple of 1ms with 3 or if you should dial
back to 2.

<!-- ## How to calibrate the audio interface -->