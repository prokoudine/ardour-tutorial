---
title: Starting Ardour
description: Launching Ardour on Ubuntu Linux, first steps
weight: 2
cascade:
  type: docs
---

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

> [!NOTE]
> Once you saved at least one session, the _Session Setup_ dialog will look 
differently: there will be a list of recently opened sessions and a way to 
open an existing session that is not on that list.

## Choosing the audio system and its settings

At the next step, you will need to choose and configure the _audio system_.

For details on selecting the audio backend, please see [this chapter](/using-your-gear/audio-interfaces/).

Once you've chosen, configured, and started the audio/MIDI backend, Ardour will
try to discover any new plugins, and then you will be greeted with Ardour's main
window:

![Main Ardour window, empty session](en/ardour7-ardour-empty-session.png)

**Continuing**

In the next chapter you'll familiarize yourself with Ardour's user 
interface and its main windows: Editor, Mixer, Recorder, and Cue.