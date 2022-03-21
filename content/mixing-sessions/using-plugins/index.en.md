+++
title = "Using plugins"
chapter = false
weight = 4
#pre = "<b>1. </b>"
+++

**Plugins** can be used to enhance or transform the sound of individual
Tracks.

They can be applied directly to a single track, or to a group of Tracks using a **Send**. Later in
this tutorial, we will discuss some Plugins specific to the Mixing
process, such as **Compressors**, **Limiters**, **Parametric
Equalizers**, **Reverbs** and others.

## Processor Box 

In Ardour terminology, a **Processor** is anything which gets plugged
into a Mixer Strip, and treats the signal in some way. Ardour provides
several built-in processors such as the Fader or Panners. Processors can
also be plugins used for effects or as instruments, as well as sends or
inserts which affect signal routing. The arrangement of processors is
arbitrary, and there is no limit to how many there can be.

![mixer strip 2](en/Ardour4_Mixer_Strip_2.png) 
 
The main space shown in the screenshot above is the **Processor Box**.
The blue box Fader is in fact a **Processor** that comes by default
inside the Processor Box. It represents the Fader that you use to
control the Track's volume. All Processors are shown as colored
rectangles, with a small "LED" beside them that lights up when the
processor is enabled. The colour of the processor depends on its
location in the sequence; processors that are pre-fader are colored in
red, and post-fader processors are colored green. 

## Adding a Plugin to a Track or a Bus 

Plugins can be added by right-clicking in the Processor Box of the Track
or Bus. A menu of options is presented. From the menu, new processors
can be inserted. 

![plugins1](en/Ardour4_Plugins_1.png) 

The Plugin Manager is a convenient way to browse and choose plugins:

![plugins2](en/Ardour4_Plugins_2.png)

From the Plugin Manager, you can search them by Name, Type, or other
search parameters available from the drop-down menu. For example, we
will add the reverb plugin called "Freeverb":

![plugins3](en/Ardour4_Plugins_3.png)

Once selected, click "*Add*" and the plugin will show up in the bottom
list of "Plugins to be connected". Then click "*Insert Plugin(s)*" and
they will show up in the Processor Box.

![plugins reverb](en/Ardour4_Plugins_Freeverb.png)

## Editing Plugin Parameters

Double-click a Plugin to edit its parameters. In this example, we double
click the "Freeverb" green box and get this window:

![freeverb settings](en/Ardour4_Plugin_Freeverb_Settings.png) 

Here you can control reverb parameters such as Room Size, Damping,
amount of Wet and Dry signal, and Width. The effect will apply to all
sounds contained in the Track. 

## Bypassing Plugins

To bypass the Plugin, press the *Bypass* button in the Plugin settings
window, or simply click the "LED" of the plugin in the Processor Box.
This turns the plugin off and allows the signal to pass by it
unaffected. This is useful when you want to compare how a track sounds
with and without the plugin. 

![bypass](en/Ardour4_Plugins_Bypass.png) 

Bypassed plugins are shown greyed out and with the "LED" turned off. 

Right-Clicking the Plugins will give a menu with several options,
including *Delete*. 

## Pre-Fader vs Post-Fader

You have a choice whether you would like to add your Plugin before or
after the Fader rectangle in the **Processor Box**. Pre-fader plugins
are inserted in the signal path *before* the Fader, so that the Fader
controls the level of the signal coming out of the Plugin. Post-Fader
Plugins are inserted *after* the Fader: the Fader controls the level of
the signal going into the Plugin. For some Plugins, Pre- or Post-fader
placement does not matter. For others, the difference is subtle. For
others still, inserting them in the right place is absolutely essential 
(for more details, see for example 
[this thread](https://discourse.ardour.org/t/fader-before-or-after-plugins/100666)
at the Ardour discussion forum).

## Plugin Formats

For those interested in learning more about plugin formats, here's a quick overview:

**LADSPA Plugins** are the "native" Plugin format for Ardour.  They were
initially developed for Linux, but since have been ported to OS X as
well.

**LV2** is a simple but extensible successor of LADSPA, which can be
used to display sound characteristics in a graphical manner. LV2 Plugins
can be used on OS X and Linux.

**AU Plugins** are the "native" Plugin format for OS X. They will only
work in Ardour if you have made a donation when you downloaded the
program. See the **Installing OS X** chapter for details. AU Plugins
will not work on Linux at all.

**VST Plugins** is a Plugin format common to Microsoft Windows. Some
VST Plugins can be used on Linux, however they may not function
correctly, or even cause Ardour to crash. Using these Plugins requires
manually **Compiling** the Ardour application, a task which is outside
the scope of this manual.

More information about using plugins with Ardour can be found here:
[http://manual.ardour.org/working-with-plugins/](http://manual.ardour.org/working-with-plugins/)

## Continuing

In this chapter, we learned how to add a Plugin to a single Track. This
is useful if that Track needs a specific Plugin, but if you have a
Plugin which is used for many Tracks at the same time, you should
continue to the next chapter about **Using Sends**. You can also
continue to the various, Plugin-specific chapters such as **Dynamics**
and **Equalizing**.

Next: [USING SENDS](../using-sends)
