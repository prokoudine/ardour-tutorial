+++
title = "Using plugins"
chapter = false
weight = 4
+++

_Plugins_ can be used to enhance or transform the sound of individual tracks.

They can be applied directly to a single track, or to a group of tracks using
a _send_. Later in this tutorial, we will discuss some plugins specific to the
Mixing process, such as _Compressors_, _Limiters_, _Parametric Equalizers_,
_Reverbs_ and others.

## Processor Box 

In Ardour terminology, a _processor_ is anything which gets plugged
into a Mixer Strip, and treats the signal in some way. Ardour provides
several built-in processors such as the fader or panners. Processors can
also be plugins used for effects or as instruments, as well as sends or
inserts which affect signal routing. The arrangement of processors is
arbitrary, and there is no limit to how many there can be.

![mixer strip 2](en/Ardour4_Mixer_Strip_2.png) 
 
The main space shown in the screenshot above is the **processor box**. The blue
box fader is in fact a _processor_ that comes by default inside the processor
box. It represents the fader that you use to control the track's volume. All
Processors are shown as colored rectangles, with a small "LED" beside them that
lights up when the processor is enabled. The colour of the processor depends on
its location in the sequence; processors that are pre-fader are colored in red,
and post-fader processors are colored green. 

## Adding a Plugin to a Track or a Bus 

Plugins can be added by right-clicking in the processor box of the track or
bus. A menu of options is presented. From the menu, new processors can be
inserted. 

![plugins1](en/Ardour4_Plugins_1.png) 

The _Plugin Selector_ is a convenient way to browse and choose plugins:

![plugins2](en/Ardour4_Plugins_2.png)

From the _Plugin Selector_, you can search them by name, type, or other
criteria available from the drop-down menu. For example, we will add the
reverb plugin called "ACE Reverb":

![pSelecting ACE Reverb](en/ardour7-select-ace-reverb.png)

Once selected, click **Add** and the plugin will show up in the bottom list of
"Plugins to be connected". Then click **Insert Plugin(s)** and they will show
up in the processor box.

![plugins reverb](en/ardour7-ace-reverb-added-to-processor-box.png)

## Editing Plugin Parameters

Double-click a plugin to edit its parameters. In this example, we double click
the "Freeverb" green box and get this window:

![freeverb settings](en/ardour7-ace-reverb-settings.png) 

Here you can control reverb parameters such as Room Size, Damping,
amount of Wet and Dry signal, and Width. The effect will apply to all
sounds contained in the track. 

## Bypassing Plugins

To bypass the plugin, press the *Bypass* button in the plugin settings
window, or simply click the "LED" of the plugin in the processor box.
This turns the plugin off and allows the signal to pass by it
unaffected. This is useful when you want to compare how a track sounds
with and without the plugin. 

![bypass](en/ardour7-ace-reverb-bypass-in-mixer-strip.png) 

Bypassed plugins are shown with the LED turned off. 

Right-clicking the plugins will give a menu with several options, including
_Delete_. 

## Pre-Fader vs Post-Fader

You have a choice whether you would like to add your plugin before or
after the fader rectangle in the **processor box**. Pre-fader plugins
are inserted in the signal path *before* the fader, so that the fader
controls the level of the signal coming out of the plugin. Post-Fader
Plugins are inserted *after* the fader: the fader controls the level of
the signal going into the plugin. For some plugins, Pre- or Post-fader
placement does not matter. For others, the difference is subtle. For
others still, inserting them in the right place is absolutely essential 
(for more details, see for example 
[this thread](https://discourse.ardour.org/t/fader-before-or-after-plugins/100666)
at the Ardour discussion forum).

## Plugin Formats

For those interested in learning more about plugin formats, here's a quick
overview:

**LADSPA plugins** are a somewhat obsolete plugin format mainly used on Linux.

**LV2** is an extensible successor to LADSPA. LV2 plugins are available on
Linux, Windows, and macOS, should respective developers choose to build them
for these systems.

**AU plugins** are the native plugin format for macOS and will only work in
that operating system.

**VST plugins** is a fairly common on both Windows and macOS. Some VST plugins
can be used on Linux, however they may not function correctly, or even cause
Ardour to crash. Using these plugins requires manually **Compiling** the Ardour
application, a task which is outside the scope of this manual.

More information about using plugins with Ardour can be found
[in the user manual](http://manual.ardour.org/working-with-plugins/).

## Continuing

In this chapter, we learned how to add a plugin to a single track. This is
useful if that track needs a specific plugin, but if you have a plugin which is
used for many tracks at the same time, you should continue to the next chapter
about using sends. You can also continue to the various, plugin-specific
chapters such as _Dynamics_ and _Equalizing_.

Next: [USING SENDS](../using-sends)
