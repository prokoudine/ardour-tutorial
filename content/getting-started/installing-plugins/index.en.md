+++
title = "Installing plugins"
description = "How to install plugins for Ardour"
chapter = false
weight = 6
+++

While Ardour already ships with some plugins, chances are that you will need
more than that: a more sophisticated compressor or reverb, a sampler that
can play a high-quality orchestra library, a polyphonic synthesizer etc.

Ardour supports mutiple plugins APIs:

- **Linux**: LADSPA, LV2, VST2.x, VST3
- **Windows**: LADSPA, LV2, VST2.x, VST3
- **macOS**: LADSPA, LV2, VST2.x, VST3, AU

You can find a list of recommended free/libre plugins
[in the appendix](../../appendices/plugins/).

## Installing plugins

### LADSPA and LV2

These plugins mostly don't have binary builds for Windows and macOS, so on
those systems, most of the time you will be dealing with VST2, VST3, or AU.

On Linux, LV2 is a very popular option. If you only install plugins from your
distribution's repository, there is nothing else you should do. Ardour will
pick up new plugins easily. But if you do build a plugin from source code, the
build script will typically attempt to copy a `plugin-name.lv2` folder either
to `/usr/local/lib/lv2` or to `~/.lv2`.

### VST2.x

VST2 plugins do not have vendor-recommended location for installation, so what
you can do is:

1. Unpack all your VST2.x plugins to the same folder. (On Linux, `~/.vst` is
commonly suggested.)

2. In Ardour, go to _Edit > Preferences > Plugins > VST_ and in the VST2.x
section, click the **Edit** button to add a new path to VST2.x plugins.

3. Add the path to the folder you created in step 1. Ardour will ask if you
want to rescan plugins. Say 'yes'.

This approach works on each supported operating system.

### VST3

The VST3 specification has hardcoded system paths for storing plugins. On
Windows and macOS, most of the time, you get your plugins installed to the
right folder, so all you need to do is re-scan plugin folders.

On Linux, in many cases you get a ZIP archive with a `plugin-name.vst3` folder
inside. That folder needs to go to `~/.vst3` or, should you want all users on
that computer to have access, to `/usr/local/lib/vst3`.

### AU

These macOS-specific plugins get installed from DMG to the correct folders.
All you need to do is re-scan those folders.

## Re-scanning folders for installed plugins

Upon installation it is recommended to re-scan available plugins. This is
typically done with the _Plugin Manager_ (_Window > Plugin Manager_).

{{< figure src="en/plugin-manager.png" alt="Plugin manager" >}}

If you only installed new plugins, discovering those will be sufficient. In
the left sidebar of the _Plugin Manager_, click **Discover New/Updated**, the
wait for the scan to finish.

If you removed some of the previously installed plugins, it's best to do a
full re-scan. Click **Re-scan All** instead and wait for the scan to finish.

## Continuing

Now that you know what to do if you want to install an effect plugin or a
software synthesizer, let's learn how to record audio and MIDI to Ardour.

Next: [RECORDING AUDIO](../../recording/recording-audio/)