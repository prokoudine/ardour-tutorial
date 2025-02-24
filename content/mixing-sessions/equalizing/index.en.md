---
title: Equalizing
description: Applying equalization to audio in Ardour
weight: 7
cascade:
  type: docs
---

An _equalizer_ (or _EQ_) allows you to separately control the gain of different
frequency ranges of a sound.

This can be useful not only to sculpt the timbre of an isolated sound (for
example, to make it sound "sharper" or "smoother"), but also to make sounds of
various timbres to integrate better into the mix. 

Often, even after adjusting levels and panning, different tracks with similar
frequency content (for example, a bass guitar and a kick drum) may be
difficult to tell apart in the mix. An equalizer is a good tool to address
this.

## 3-Band Equalizer

The simplest kind of equalizer is the one familiar to us from analog mixers. It
has three parameters, which adjust the levels of three _bands_, or frequency
ranges: one for the _bass_ (low frequencies), one for the _middle_ range
frequencies, and one for the _treble_ (high frequencies). The _DJ EQ_  plugin on
the screenshot below is just such an EQ. If you don't have this particular
plugin on your computer, explore the ones you have that have "EQ" in the name;
you will likely find something similar.

![DJ EQ](en/ardour7-dj-eq.png?width=400)

## Multi-Band (or Graphic) Equalizer

A more complex _multi-band_ (or _graphic_) equalizer often has a lot more bands.
Each band is centered on a frequency, and the level of each band can be
independently adjusted. In some multi-band EQs, such as the _LSP Graphic
Equalizer_ plugin shown below, the center frequency of each band can be defined
by the user. This allows you to either attenuate (or remove) an unwanted
frequency, or to reinforce (boost) a desired one.

{{< figure alt="tap eq" src="en/ardour7-lsp-graphic-16-band-eq.png" >}}

The overall "curve" of the bands can also be used to determine the general tone
of your track or mix. In the example above, the lower part of the mid-range
frequencies have been "scooped out" a bit (note how bands 1,2 and 15,16 are left
untouched at 0 dB, while intermediary bands 3 through 14 draw an attenuation
curve, with band 7 at -13.5 dB as the lowest point).

## Parametric Equalizer

The _parametric equalizer_ is the most versatile type of EQ used for mixing
because of its extensive control over all types of EQ parameters. Ardour ships
with a parametric equalizer plug-in called the _ACE EQ_. It looks like this:

![ACE EQ](en/ardour7-ace-eq.png?width=500)

Others may have shinier graphical interfaces like the _x42 EQ_ by Robin Gareus,
but they all essentially do the exact same thing. You may have EQ plugins on
your computer that look a bit different than these screenshots, but the
parameters you can control are likely very similar.

{{< figure alt="x42 eq" src="en/ardour7-x42-eq.png" >}}

In both screenshots above (_a-EQ_ and _x42 EQ_), there are options you can
adjust for each frequency band. Each of the three bands has a _level_ (dB)
adjustment to cut or boost frequencies, a _frequency_ (Hz) adjustment to select
center frequency, and a some form of _Q_ adjustment which determines how wide
the range of frequencies to be affected will be.

#### High Shelf, Low Shelf

Both plugins shown above (_a-EQ_ and _x42 EQ_) also contain a _high shelf_ and
_low shelf_. A _shelf_ cuts or boosts everything above (high shelf) or below
(low shelf) a specific frequency. For example, a low shelf can be used to remove
unwanted rumbling sounds, and a high shelf can be used to reduce hiss. The
frequency control of a shelf determines the cut-off frequency. for example,
a low shelf with cut off frequency 200 Hz means that the equalizer will
attenuate everything below that frequency. The amount of attenuation is
controlled by the level knob.

Note that for ACE EQ, there's no _Q_ parameter for either the high shelf or the
low shelf, but _x42 EQ_ has it.

## An Example of Using an Equalizer

In order to achieve a better separation of two instruments in the mix through
the use of EQ, you first need to find out where the two instruments overlap.

Here's one approach.

1. Using _ACE EQ_ or any equivalent EQ plugin, select an appropriate band for
one of the instruments. In the case of a bass guitar, it would be a low
frequency band (start at, say, 100 Hz).

2. Boost the gain to 10dB, change the _Q_ (also called "bandwidth")  so that is
a narrower range, and then adjust the frequency upwards and downwards slowly.
You'll hear a pitch move up and down.

3. Bring it down slowly until you hear the frequency range where the two
instruments overlap. Now simply reduce the gain to -5dB, and you will hopefully
hear the instruments a bit clearer. Next, apply the same process to the other
instrument.

There are many approaches to EQ. Hopefully this will provide one example of
how to begin EQ'ing tracks in your mix. But most importantly, when it comes to
EQ, it is better to use too little than too much, unless you're intentionally
using extreme EQ as a compositional parameter.

## Continuing

You should have enough tools now to create a clean, well-balanced stereo mix of
your session. However, if you want the parameters of your faders, panning or
plugins to change over time, then you will want to explore the next chapter on
automation. If not, then skip ahead to learn how to _export sessions_ in the
next section.

Next: [USING AUTOMATION](../using-automation)
