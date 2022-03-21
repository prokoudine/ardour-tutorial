+++
title = "Starting a session"
chapter = false
weight = 1
#pre = "<b>1. </b>"
+++

Ardour groups your work in **Sessions**. A Session is a group of
**Tracks** which eventually may be mixed down into a single Mono, Stereo
or multi-channel sound file. Sessions are essentially projects; all your
data is saved in a single Session folder.

When you start Ardour, you are asked if you want to start a new Session
or open an existing one. When creating a new Session you must choose a
name for it.

{{% notice tip %}}
Avoid using any characters other than letters and numbers when naming your session. Avoid white spaces, accented letters, !@#$%*()+, periods, commas, etc. Use dashes or underscores if you like. For example, instead of "My Great Session!", prefer "My_Great_Session", or "MyGreatSession", or "my-great-session". Instead of "Açaí", write "Acai" (without accented letters), etc. Once you have created your Ardour session, do **not** manually rename any folders or files that belong to the Session.
{{% /notice %}}

You also need to tell Ardour where you would like the
Session folder to be stored.

When you are ready, click '*Open*'. Ardour
will create the new Session and then open it.

![New Session](en/Ardour6_Session_Setup_2.png)

Depending on the sound settings of your computer, you may see a window like this before your session launches:

![New Session Set-Up](en/Ardour6_Session_Audio_MIDI_Setup.png)

The main options are:

**Audio System** — probably your computer's default audio system (ALSA for Linux, CoreAudio for Mac, etc), or JACK if you are on Linux and have it installed.

**Device** — it's either your built-in sound card, or an external sound card if you have one (such as a USB interface).

**Sample Rate** — 48K or 44.1K are common choices.

To create an Ardour session after Ardour has already started, select
`Session > New` in the menu.

Continuing
----------

Once you've started a Session, you will most likely want to learn about
setting up the timeline to match the kind of musical meter or other
timeframe which you will use. Please continue to the next chapter. 

Next: [SETTING UP THE TIMELINE](../setting-up-the-timeline)
