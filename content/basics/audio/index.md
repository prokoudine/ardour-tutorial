---
title: What is digital audio?
description: Let's learn the basics of audio?
weight: 1
cascade:
  type: docs
---

**Ardour** is a digital audio workstation (DAW). Before using it to
record and edit sound, it might be useful to review how digital audio
works.

## Frequency and Gain

Imagine a loudspeaker. To move the air in front of it and make sound,
the membrane of the speaker must vibrate from its center position (at
rest) backwards and forwards.

The number of times the membrane vibrates each second determines the
_frequency_ (the note, or _pitch_) of the sound you hear. The distance the 
membrane travels from its resting point determines the _amplitude_ (the 
volume, or _loudness_) of the sound. Normally, we measure frequency in
_Hertz_ (Hz) and amplitude in _decibels_ (dB).

A microphone works like a loudspeaker in reverse: vibrations in the air 
cause its membrane to vibrate. The microphone turns these acoustic
vibrations into an electrical current. If you plug this microphone into a
computer's sound card and start recording, the sound card makes thousands 
of measurements of this electric current per second and records them as
numbers. The number of _samples_ (i.e. measurements) made per second is
called the _sample rate_, and the number of possible values each sample can 
have is called the _bit depth_. The combination of sample rate and bit
depth indicates how closely the digital signal can reproduce the sound it
has recorded.

## Peaks and Clipping

When Ardour displays the samples which have been recorded, they appear as
the _waveform_ we see below. The center horizontal line indicates the
membrane of the speaker at rest, and the _peaks_ of the waveform indicate
the maximum _amplitude_.

{{< figure src="en/waveform.png" alt="Waveform" >}}

If we take a waveform and increase its amplitude a lot, some of the peaks
may now fall outside the range that the computer can represent digitally.
The computer's inability to represent peaks outside the range of amplitude
is called _clipping_, which results in a permanent loss of digital
information, as well as a change in the sound quality which is recognizable
as _distortion_. Ardour marks clipped peaks with the color red, as can be
seen in the image below.

{{< figure src="en/clipping.png" alt="Clipping" >}}

In the image above, one can also see the _mixer strip_ on the far left,
which gives a running measurement of the peaks, as well as an indication
at the top of the _peak meters_ showing the maximum peak so far. The red
number indicates clipping has occurred.

{{< callout type="info" >}}
Clipping often can happen at the time of recording if you set your 
microphone levels too high.
{{< /callout >}}

The range of decibels between the region's maximum peak and the clipping
point is commonly referred to as _headroom_, and common recording practice
is to keep approximately 3 to 6 decibels of headroom between the maximum of 
your signal and the clipping point, with the clipping point itself being
represented as 0 dB (zero decibels). In other words, an audio region with a
comfortable amount of Headroom would have its maximum peaks between −6 dB 
and −3 dB.

Also, because the peaks of audio signals add together, care must be taken when
_mixing_ several sources together to keep the combined signals from clipping.

## Sample Rate and Bit Depth

To make audio playable on a compact disc, for example, the computer must
generate 44,100 samples per second. The sample rate determines the highest
frequency which can be recorded or played back by the computer. A sampling
rate of 44.1 kHz means that the highest frequency which can be represented is
just under 22.05 kHz. Since normal human hearing lies within the range of
approximately 20 Hz to 20 kHz, this is commonly accepted as a reasonable
sample rate. Other commonly used sample rates include 48 kHz (e.g.
multi-effects pedals) or 96 kHz (DVD audio).

Each sample is recorded as a 16-bit number. One _bit_ is a piece of
information which is either 0 or 1. If there are 16 bits together to make one
sample, then there are 2^16 (65,536) possible values for each sample.

Thus, we can say that CD-quality audio has a sample rate of 44.1 kHz and
a _bit depth_ of 16 bits. Professional music recordings are usually mixed
using 24 bits to preserve the highest amount of detail before being mixed down
to 16 bits for CD. Older computer games have a distinctively rough sound,
using only 8 bits. By increasing the sample rate, we are able to record higher
sonic frequencies, and by increasing the bit depth, we are able to use a
greater _dynamic range_ (the difference between the quietest and the loudest
sounds possible to record and play).

**Continuing**

Audio isn't the only way to store musical information. In the next chapter,
we'll explore the basics of MIDI.