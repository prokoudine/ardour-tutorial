---
title: Using MIDI Learn
description: How to control Ardour with MIDI Learn
weight: 4
cascade:
  type: docs
---

{{< details title="Watch the video" closed="true" >}}

{{< youtube USa4HMZS27k >}}

{{< /details >}}

Ardour allows creating per-session bindings between a MIDI device and native controls in the program such as gain faders. This feature is typically called MIDI learn.

A very common example of a binding is mapping an encoder on your MIDI keyboard to an LFO or a filter in a virtual synth or mapping a fader on your MIDI keyboard to a gain fader in a track.

## How to learn a binding

1. Create a new Ardour session or load an existing one. Make sure that your MIDI device is connected to the control port. You can do that in **Preferences**, in the **Control Protocol Settings** settings dialog for the **Generic MIDI** control surface.

{{< figure src="en/midi-learn-control-protocol-settings.png" alt="Control Protocol Settings" >}}

Alternatively, you can do the mapping in the **MIDI Connections** dialog:

{{< figure src="en/midi-learn-midi-connection-manager.png" alt="MIDI Connections" >}}

---

2. Add a new track with a virtual synth. This guide assumes using TAL Noisemaker.

---

3. Select the track’s header, point your mouse on the gain fader and do **Ctrl+Middle-Click**. You will see a tooltip that says “operate control now”.

{{< figure src="en/midi-learn-operate-controller-now.gif" alt="Operate Control Now" >}}

---

4. Touch the fader on your MIDI keyboard. It will be immediately mapped to the gain fader in that track. You can use it now.

---

5. Now let’s map another encoder to LFO1 rate parameter in TAL-NoiseMaker. Right-click on the plugin’s name and select **Edit with generic controls**.

{{< figure src="en/midi-learn-edit-with-generic-controls.png" alt="Edit with generic controls" >}}

6. Now, **Ctrl+Middle-Click** and touch the encoder. After that, you can open the regular window of the plugin, and you will see the control rotating as you use the encoder.

{{< figure src="en/midi-learn-plugin-generic-operate-controller-now.gif" alt="Operate Control Now" >}}

There are two more ways to do the same:

1. **Faders in inline controls**. Let’s right-click on the plugin, go to **Inline Controls**, and select **LFO1 Amount**. Now hover the newly added inline control in the mixer strip, **Ctrl+Middle-Click**, and rotate another encoder.

2. **Faders on automation lanes**. Click **A** in the track header, select `Processor Automation > TAL Noisemaker > Filter Cutoff`. Then, hover the fader for the plugin’s parameter, **Ctrl+Middle-Click**, touch the encoder.

---

Because complex plugins tend to have a ton of parameters, it's sometimes difficult to navigate them in the generic controls view. In that case it's best to enable this toggle in the main menu: `Edit > Show automation lane on touch`.

Now when you open the custom user interface of the plugin and touch a control, Ardour will automatically add an automation lane for that control. And now you can **Ctrl+Middle-Click**, and touch an encoder or a fader.

## How to unlearn a binding

To unlearn a binding, hover a control in the user interface again, **Ctrl+Middle-Click**, then left-click the “operate control now” message to make it disappear. That’s all.

## What controls are MIDI-learnable

Ardour only exposes a subset of controls that you can find in the user interface. The general idea is that you should be able to use MIDI learn for functions that are rather session-specific. This is because you might want to map the same control to different parameters of different virtual instruments even within the same session as you work on your project.

The list of supported controls includes:

- transport controls,
- all faders and panners,
- mute and solo buttons,
- input trim in tracks and busses,
- **Mono**, **Dim** and **Mute** toggles,
- all the rotary buttons, e.g. **Solo Boost** in the monitor section.

## Keyboard modes

Some MIDI keyboards send a different set of control messages from the same controls depending on the mode.

For example, Arturia MiniLab 3 has a regular mode called Arturia that is best for using encoders and faders to control plugins. There is also a DAW (digital audio workstation) mode that is best to control things like gain faders and panners.

## MIDI learn vs MIDI maps

MIDI Learn bindings override any bindings defined in the MIDI map of your choice. So even if an encoder or a fader is already mapped to something in the MIDI map that you use, you can temporarily redefine that with MIDI Learn.

Now, as you remember, all bindings made with MIDI Learn are per-session. This means that any bindings you create this way will be stored as part of a particular session rather than globally. If you want these bindings to be permanent, you have two options.

If your bindings include mappings between hardware controls and plugin parameters, you should save your session as a template for reuse. In that case you get a template that has all the predefined tracks and plugins, all the routing between them and the hardware, and all the bindings you created with MIDI Learn.

If there are no bindings between hardware controls and plugin parameters, it’s best to create a MIDI map instead. See out [this video tutorial](https://www.youtube.com/watch?v=B9t-ZubUGHM) for details on how to do that.

**Continuing**

The next section explains the basics of using various control surfaces.