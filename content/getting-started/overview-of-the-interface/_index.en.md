+++
title = "Overview of the Interface"
description = "Basics of Ardour's user interface"
weight = 2
+++

This section will give you a basic overview of Ardour's user interface.

We will take a look at shared elements of the interface, main windows, and focus
on the _Editor_ window and the _Mixer_ window. Later chapters will give more
detailed information on each feature listed here.

## Ardour's window

Here is a typical view of a project opened in Ardour:

![Main window of Ardour 7](en/ardour7-main-window-parts.png)

There are two larger parts of the user interface:

1. Static part that contains program's menu, transport panel, clocks, navigation
timeline, and various controls. We'll talk about it later on this page.

2. Dynamic part that changes depending on the currently opened window. We'll
talk about that on further pages covering every window (Editor, Mixer, Recorder,
Cue).

Let's get on with the static part and focus on features that will be of
immediate use to you.

## Program's menu

This is a fairly straightforward way of accessing features in any program, you
shouldn't have any problems navigating it. Session-specific commands are in the
_Session_ menu, everything that is related to playing and recording is in the
_Transport_ menu, most editing features are in _Edit_ and so on.

![Ardour program menu](en/ardour7-program-menu.png?width=50vw)

For convenience, item-specific features are duplicated in the right-click menu.
For instance, you'll find the contents of the _Region_ menu in the right-click
menu for a selected region (a clip that you can see on the timeline, see further
pages of the tutorial).

## Info Panel

This panel displays useful information about the currently opened project
(sampling rate, latency, DSP load) as well as how many estimated minutes of
recording are available given the current amount of free disk space.

![Ardour info panel](en/ardour7-info-panel.png?width=50vw)

If you right-click on it, you will see more options such as name of the current
project snapshot (more on that later) and wall clock (as seen on the screenshot
above).

## Transport panel

The transport panel allows easily navigating the project: going to session
start/end, playing entire session or just a selection (called 'range' in
Ardour), initiating recording.

![Transport Panel](en/ardour7-transport-panel.png?width=15vw)

The bottom of the panel has jog/shuttle controls for skipping backward and
forward at various speed while playing back the contents of the session.

In case you want the transport panel sans jog-shuttle controls somewhere else on
the screen, you can open a floating window called _Transport Controls_
(`Window > Transport Controls`). You can move this window anywhere on the
screen and resize it.

## Clocks

![Clocks](en/Ardour6_Clocks.png?width=30vw)

The main _clocks_ are located next to the transport controls. Clocks in Ardour
can display time in 4 different formats: Time Code, Bars:Beats, Minutes:Seconds,
and Samples. Right-click on the clock to select a format. You can also turn the
clock off. The reason for having two transport clocks is that it allows you to
see the playhead position in two different time units without having to change
any settings.

If you are working in a home studio where you use a footswitch to toggle
recording and you are a few meters away from the screen, you might want a bigger
clock. Use `Window > Big Clock` to open a clock window that will float on top of
all other windows and resize it to your liking.

![Big Clock](en/ardour7-big-clock.png?width=50vw)

Please see the [Setting Up the Timeline](../setting-up-the-timeline) chapter
for more details on the clocks.

## Navigation timeline

To the right of these two clocks you can see the _mini-timeline_, also called
_Navigation Timeline_. It's a convenient way to be reminded of cues and location
markers, especially when you are in the _Recorder_ window where the timeline
doesn't have those rulers.

![Navigation timeline](en/ardour7-navigation-timeline.png?width=40vw)

Please check the Ardour manual for more information on the
[mini-timeline](https://manual.ardour.org/ardours-interface/mini-timeline/).

## Switching Between Windows

To the right of the global toolbar, right after the _Navigation Timeline_ and
the master bus output meter, you'll find a convenient widget to switch between
major Ardour windows — Editor, Mixer, Recorder, and Cue.

![Window switcher](en/ardour7-window-switcher.png?width=6vw)

Alternatively, you can use **Ctrl+PageUp/PageDown** to cycle through windows,
much like in any web browser.

You can also use the **Alt+M** shortcut to switch between _Editor_ and _Mixer_
windows. If you are currently in either _Recorder_ or _Cue_ window, pressing
that shortcut for the first time will take you to the _Mixer_ window, and the
another one will take you to the _Editor_ window.

**Continuing**

The next sections will explain basics of main Ardour's windows:

[Editor](editor-window) | [Mixer](mixer-window) | [Recorder](recorder-window) |
[Cue](cue-window)
