---
title: Using MIDI maps
description: How to control Ardour with MIDI keyboards using MIDI maps
weight: 3
cascade:
  type: docs
---

Many MIDI keyboards come with faders, encoders, and transport keys. You can use those to control various aspects of Ardour. The way to do that is by using a MIDI map.

## What is a MIDI map?

A MIDI map file instructs Ardour how to interpret incoming control change (CC) messages from a MIDI device. Consider this scenario:

- Your MIDI device has faders which you want to map to gain faders in Ardour.
- The first fader sends values in the range of `0..127` over Control Change 14.
- Your MIDI map says "read CC14 message and apply them to gain fader in the first track".

If that is your setup, moving the fader up and down will move the gain fader in the track.

## Where to get MIDI maps

Ardour ships with over 50 MIDI maps for keyboards by various manufacturers including Akai, Novation, M-Audio, and Arturia.

If your specific device doesn't have a ready-made MIDI map, you can create one yourself. We have a [tutorial](https://www.youtube.com/watch?v=B9t-ZubUGHM) on that.

## How to use a MIDI map

Let’s learn how to enable a generic MIDI control surface and select the right predefined map for it.

<!-- {{< youtube 56BDrtZNhY0 >}} -->

1. Attach a MIDI keyboard to your computer.

---

2. Launch Ardour and create a new session or open an existing one.

---

3. Go to `Edit > Preferences > Control Surfaces`.

---

4. Make sure that the ‘Generic MIDI” surface is enabled, then double-click it to open its settings.

---

5. Choose the port for incoming MIDI events. In our case this will be `MiniLab3 MIDI In`. Then select MIDI bindings in the drop-down list.

---

6. Close the protocol settings dialog and then the Preferences dialog.

---

7. Go to `Window > MIDI Connections`. Select the Hardware tab on top and Ardour Misc on the right.

---

8. Make sure that the `MiniLab3 MIDI In` port is connected to the `Generic MIDI Control In` port.

---

Now that Ardour listens to control events from the keyboard, you can use transport keys on your MiniLab3 keyboard to enable recording mode and start or stop playback. Encoders and faders will be reserved for use with virtual synths. This is different for each of over 50 other existing MIDI maps that Ardour ships with.

**Continuing**

In the next step we will learn about using MIDI Learn to quickly maps physical controls to software controls in Ardour and plugins.