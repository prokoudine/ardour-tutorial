+++
title = "What is digital audio?"
description = "What is digital audio?"
chapter = false
weight = 3
#pre = "<b>1. </b>"
+++

**Ardour** is a Digital Audio Workstation (DAW). Beforing using it to record and edit sound, it might be useful to review how digital audio works.

![analogue-digital](en/Ardour4_Digital_Audio_1.png)

{{<mermaid align="center">}}
graph TD;
    A(fa:fa-microphone Analog input) --> B(Analog to digital conversion)
    B --> | digital numeric data, samples | C(Digital system)
    C --> D(Digital to analog conversion)
    D --> E(fa:fa-headphones Analog output)
{{< /mermaid >}}

The diagram above shows how sound travels to and from your computer. The
"Analogue to Digital Conversion" (ADC) and the "Digital to Analogue
Conversion" (DAC) are done by the sound card or audio interface. The "Digital
System" in this case is your computer running **Ardour.**

## Frequency and Gain

Imagine a loudspeaker. To move the air in front of it and make sound,
the membrane of the speaker must vibrate from its center position (at
rest) backwards and forwards. The number of times the membrane vibrates
each second determines the **Frequency** (the note, or *pitch*) of the
sound you hear. The distance the membrane travels from its resting point
determines the **Amplitude** (the volume, or *loudness*) of the sound.
Normally, we measure Frequency in **Hertz** (Hz) and Amplitude in
**Decibels** (dB).

![speaker](en/Ardour4_Digital_Audio_2.png)

Check out the great animation on this page illustrating this process:

{{< youtube RxdFP31QYAg >}}

A microphone works like a loudspeaker in reverse: vibrations in the air
cause its membrane to vibrate. The microphone turns these acoustic
vibrations into an electrical current. If you plug this microphone into
a computer's sound card and start recording, the sound card makes
thousands of measurements of this electric current per second and
records them as numbers. The number of **Samples** (i.e. measurements)
made per second is called the **Sample Rate**, and the number of
possible values each Sample can have is called the **Bit Depth**. The
combination of Sample Rate and Bit Depth indicates how closely the
digital signal can reproduce the sound it has recorded.

## Peaks and Clipping

When Ardour displays the Samples which have been recorded, they appear
as the **Waveform** we see below. The center horizontal line indicates
the membrane of the speaker at rest, and the **Peaks** of the Waveform
indicate the maximum **Amplitude.**

![waveform](en/Ardour4_Digital_Audio_Waveform.png)

If we take a Waveform and increase its the Amplitude a lot, some of the Peaks may now fall outside the range that the computer can represent digitally. The computer's inability to represent Peaks
outside the range of Amplitude is called **Clipping**, which results in
a permanent loss of digital information, as well as a change in the
sound quality which is recognizable as **Distortion**. Ardour marks
clipped Peaks with the color red, as can be seen in the image below.

![clipping](en/Ardour4_Digital_Audio_Clipping2.png)

In the image above, one can also see the **Mixer Strip** on the far left,
which gives a running measurement of the Peaks, as well as an indication
at the top of the **Peak Meters** showing the maximum Peak so far. The red number indicates Clipping has occurred.

{{% notice tip %}}
Clipping often can happen at the time of recording if you set your microphone levels too high.
{{% /notice %}}

The range of decibels between the region's maximum peak and the clipping
point is commonly referred to as **Headroom**, and common recording
practice is to keep approximately three to six Decibels of Headroom
between the maximum of your signal and the clipping point, with the
clipping point itself being represented as 0 dB (zero Decibels). In
other words, an audio region with a comfortable amount of Headroom would
have its maximum peaks between −6 dB and −3 dB.

Also, because the Peaks of audio signals add together, care must be
taken when **Mixing** several sources together to keep the combined
signals from Clipping.

## Sample Rate and Bit Depth

To make audio playable on a compact disc, for example, the computer must
generate 44,100 Samples per second. The Sample Rate determines the
highest frequency which can be recorded or played back by the computer.
A sampling rate of 44.1 kHz means that the highest frequency which can
be represented is just under 22.05 kHz. Since normal human hearing lies
within the range of approximately 20 Hz to 20 kHz, this is commonly
accepted as a reasonable Sample Rate. Other commonly used Sample Rates
include 48 kHz (DAT recorders) or 96 kHz (DVD audio).

Each Sample is recorded as a **16-bit number**. One **Bit** is a piece of
information which is either 0 or 1. If there are 16 bits together to
make one sample, then there are 2^16 (65,536) possible values for each
sample.

Thus, we can say that CD-quality audio has a Sample Rate of 44.1 kHz and
a **Bit Depth** of 16 bits. Professional music recordings are usually
mixed using 24 bits to preserve the highest amount of detail before
being mixed down to 16 bits for CD. Older computer games have a
distinctively rough sound, using only 8 bits. By increasing the Sample
Rate, we are able to record higher sonic frequencies, and by increasing
the Bit Depth, we are able to use a greater **Dynamic Range** (the
difference between the quietest and the loudest sounds possible to
record and play).

Here is a great video tutorial explaining sampling rate and bit depth in a lot more detail.

{{< youtube zC5KFnSUPNo >}}
