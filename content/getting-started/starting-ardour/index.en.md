+++
title = "Starting Ardour"
description = "Launching Ardour on Ubuntu Linux, first steps"
chapter = false
weight = 1
+++

Ardour supports both Linux, Windows, and macOS. There is very little
difference about how it works on all these operating systems. So while this 
tutorial assumes using Ubuntu Linux, you should expect it to work the same 
way on other operating systems and Linux flavors.

## First-launch wizard

When you first start Ardour, it will ask you a few questions to make a 
basic customization: user interface and font scale (if you have a HiDPI 
display), default folder where new sessions would be created, preferred way 
to monitor signal being recorded etc.

![GUI and font scaling](en/ardour7-gui-and-font-scaling.png?width=40vw)

This dialog will never be shown again, unless you wipe all settings. You 
can change all the preferences you set there at any time later in the 
_Preferences_ dialog.

## Create new session

Once you get past the first-launch wizard, Ardour will suggest you create a 
new _session_ from one of a few available templates.

![New session templates](en/ardour7-new-session-templates.png?width=40vw)

A session encompasses all the material you have: tracks with audio and MIDI 
data, effects associated with tracks and busses etc. Thus, a session is 
essentially a project file from which you can render a mono or a stereo 
audio file to deliver to a client, use in a video, or upload to a streaming 
service.

For simplicity's sake let's go with an empty session as shown above.

Ardour will always automatically suggest storing a new session in the 
default folder that you set at the previous step.

When giving a new session a name, please avoid using any characters other 
than letters and numbers, like white spaces, accented letters, `!@#$%*()+`, 
periods, commas, etc. Use dashes or underscores if you like. For example, 
instead of "My Great Session!", prefer "My_Great_Session", or 
"MyGreatSession", or "my-great-session". Instead of "Açaí", write "Acai" 
(without accented letters), etc.

The default time domain setting mostly affects rulers and markers. With "Audio
Time", it will enable the set of rulers with minutes, seconds, and timecode.
With "Musical Time", it will enable musical time rulers — Bars:Beats, Time
Signature, Tempo.

Name your new project and click **Open** .

Once you have created your Ardour session, do _not_ manually rename any 
folders or files that belong to the session. Otherwise, Ardour will fail to 
locate the files inside those folders and will ask you to point to them.

{{% notice tip %}}
Once you saved at least one session, the _Session Setup_ dialog will look 
differently: there will be a list of recently opened sessions and a way to 
open an existing session that is not on that list.
{{% /notice %}}

## Choosing an audio system and its settings

At the next step, you will need to choose and configure the _audio system_.

On Linux, you have multiple audio systems (or _backends_) available. _ALSA_
is suggested by default. It is currently the recommended way to use Ardour
in production. With ALSA, there are no convenience wrappers or
abstractions. You connect to physical audio and MIDI ports directly. This
means Ardour will take over the audio interface of your choice and won't
share it with any other applications. As long as Ardour is running, any 
other desktop applications you are running too won't be able to connect to 
the audio interface and play any sound.

![Audio/MIDI setup](en/ardour7-alsa-backend-settings.png?width=40vw)

The _PulseAudio_ backend currently only supports playback. This means you won't
be able to record any audio as long as you use PulseAudio, but you can edit,
mix, and export in e.g. Bluetooth headphones on the go. It's also the most
convenient option when you want to follow a mixing or mastering tutorial on e.g.
YouTube and be able to listen to the output from Ardour.

![PulseAudio settings](en/ardour7-pulse-audio-settings.png?width=40vw)

Finally, there's JACK audio backend. It is designed following a client-server
architecture pattern. JACK captures all physical ports of an audio interface and
routes signal between its clients (e.g. a digital audio workstation, a software
synthesizer, a drum sequencer etc.) and various ports. It is available on both
Linux, Windows, and macOS.

Today, the use of JACK audio server is discouraged by Ardour developers except
for particular use cases like sophisticated signal routing. For simple
multichannel recording your user experience will be vastly better when relying
on native audio engine available in your operating system, like ALSA on Linux
and CoreAudio on macOS. If you absolutely need JACK, it's best to start and
control it from a separate program like
[Qjackctl](https://qjackctl.sourceforge.io/) or
[Cadence](https://kx.studio/Applications:Cadence).

Most supported audio systems have a few common settings:

- _Device_ — it's either your built-in sound card, or an external sound card if
you have one (such as a USB interface).
- _Sample Rate_ — 48K or 44.1K are common choices.
- _Buffer Size_ — especially for external USB audio, try picking an option that
results in a latency that is a multiple of 1ms (4ms, 6ms etc.) to produce less glitches.
- _Periods_ — it's often suggested to use 3 for an external USB audio interface,
but you should see if you can get a multiple of 1ms with 3 or if you should dial
back to 2.

Once you've chosen, configured, and started the audio/MIDI backend, Ardour will
try to discover any new plugins, and then you will be greeted with Ardour's main
window:

![Main Ardour window, empty session](en/ardour7-ardour-empty-session.png)

## Continuing

In the next chapter you'll familiarize yourself with Ardour's user 
interface and its main windows: Editor, Mixer, Recorder, and Cue.

Next: [OVERVIEW OF THE INTERFACE](../overview-of-the-interface)
