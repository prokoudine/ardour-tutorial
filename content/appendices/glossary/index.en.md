+++
title = "Glossary"
chapter = false
weight = 2
#pre = "<b>1. </b>"
+++

This glossary offers brief definitions for many or the terms used throuhout the Ardour3 FLOSS Tutorial.

**Aggregate Device** (Mac OS X)
: An Aggregate Device is one virtual soundcard made of of two or more
physical soundcards. PowerBooks and MacBooks made in 2007 or later will
need this set up in order for **JACK** to have both input and output
channels. This is set up in the **Audio MIDI Setup** application.

**AIFF**
: A sound file format developed by Apple and commonly used for lossless
and uncompressed audio. AIFF files are compatible with Windows,
Macintosh and Linux operating systems.

**ALSA** (Linux)
: Advanced Linux Sound Architecture. ALSA provides audio and MIDI
functionality to the Linux operating system.

**Amplitude** (mixing)
: The strength of an audio signal. The scale of amplitude is
**logarithmic**, since it expresses the physical ratio of power between
one sound and another. Levels in digital audio systems are usually
represented as the number of Decibels below the clipping point of 0 dB.
See also **loudness**. 
**Arm** (Track to record/Ardour to record)
: Action that makes Ardour ready to start recording. Before recording in
Ardour, one or more tracks need to be armed first, and then Ardour needs
to be armed itself.

**Artifacts** (sound)
: Perceivable distortion or decrease in sound quality generated as a
by-product of certain signal processing operations. Artefacts are
usually seen as undesirable or unexpected results of an otherwise
intentional sound transformation.

**Attenuation**
: Reducing the **level** of an audio signal, usually measured using a
**logarithmic** scale. See also **gain**. 

**Audio MIDI Setup** (Mac OS X)
: The Audio MIDI Setup utility is a program that comes with the Mac OS X
operating system for adjusting the computer's audio input and output
configuration settings and managing MIDI devices.

**Audio Unit Plugins**
: Audio Unit (AU) is a plugin architecture in Mac OS X computers. It may
be thought of as Apple's equivalent to the popular VST plugin format by
Steinberg. Mac OS X comes with a collection of AU plug-ins such as EQ
filters, dynamic processors, delay, reverb, time stretch, among others.

**Audition**
: The auditioner is a hidden mixer strip which auditioned regions are
played back through. Auditioning a region will play only that region,
without processing sends or plugins.

**Automation**
: Automation is the automatic adjustment of various parameters such as
gain, panning or plugin settings. Changes can be made once and then will
be repeated every time the mix is replayed. Automation in Ardour is
controlled by automation lines linked to each Track or Bus.

**Auxiliary Controls**
: Buttons on the top right side of the controls found in the Editor
Window: Punch In/Out, Auto Play, Auto Return, Auto Input, Click, Solo,
and Audition.

**Amplitude**
: The level or magnitude of a signal. Audio signals with a higher
amplitude usually sound louder.

**Bands** (equalization)
: The particular frequency regions to be boosted or attenuated in the
process of **Equalization**.

**Bars** (music)
: Same as 'measure', a bar is a metrical unit. In Western notation, it is
the space comprised between two vertical lines drawn through the staff.
The specific duration of a bar depends of its **time signature** and the
current **Tempo** of the music.

**Bass** (Frequencies)
: A generic way of referring to the lower frequencies of the **Spectrum**
of a sound.

**Beat**
: The basic pulse underlying a piece of music.

**Beats per Minute**
: Beats per minute (BPM) is a measure of Tempo in music. A rate of 60
beats per minute means that one beat will occur every second; 120 bpm
equals two beats per second, and so on. BPM indications usually appear
at the beginning of a traditional musical score as a metronome mark (for
example, "quarter note equals 60", meaning one quarter note per second).

**Bit**
: A bit (**bi**nary dig**it**) is a single number with a value of either 0
or 1. 

**Bit Depth**
: Refers to the number of bits used to write a **sample**. In the CD
standard, each sample of audio is represented by a 16-bit number. This
gives 2\^16 (two to the power of sixteen = 65,536) possible values that
a sample can have. A higher bit depth means a greater possible **dynamic
range**. Studio recordings are usually first made recorded with a bit
depth of 24 (or even 32) to preserve as much detail before transfer to
CD. DVDs are made at 24 bit, while video games from the 1980s remain
famous for their distinctively rough "8 bit sound". Bit depth is also
referred to as **word length**. 

**Buffer Size** (JACK)
: The buffer is a section of memory specifically allotted to temporary
signal data. Small buffer sizes allow a lower latency and so are needed
when using audio applications that require real-time interaction. The
drawback is that CPU consumption for the system is higher with smaller
buffer sizes. Larger buffers (like 512 or 1024) can be used when there
is no such requirement.

**Built-in Input and Output**
: These are the default interfaces for getting sound in and out of your
computer if you don't have an external sound card. In a laptop, they are
the common input (mic) and output (headphone) connections.

**Bus**
: A bus is similar to a **Track** except that it does not contain its
own regions. You cannot record directly into a bus or drag regions into
it. The Mixer Strip vertically represents the signal flow of a bus,
whereas the Main Canvas horizontally displays time-based information for
each bus (such as automation lines).

**BWF**
: Broadcast Wave Format (BWF) is an extension of the popular Microsoft
WAVE audio format and is the recording format of most file-based
non-linear digital recorders used for motion picture and television
production. This file format allows the inclusion of metadata to
facilitate the seamless exchange of sound data between different
computer platforms and applications.

**CAF**
: CAF (Core Audio Format) is a file format for storing audio, developed by
Apple. It is compatible with Mac OS X 10.4 and higher. The Core Audio
Format is designed to overcome limitations of older digital audio
formats, including AIFF and WAV. Just like the QuickTime .mov file
format, a .caf file format can contain many different audio formats,
metadata tracks, and much more data.

**Center Frequency**
: In some EQ plugins, the user has the possibility of choosing the center
frequency for each of the Frequency Bands. The center frequency of a
Band will be the one most sharply attenuated or reinforced by the
equalizer for that specific band. Frequencies surrounding the center
frequency will be less affected. 

**Click** (Mouse)
: In this manual, it specifically means to click on the left button of
your mouse. Whenever the right button is required, the action is
referred to as "right-click".

**Clipping**
: Clipping occurs when a signal is too high in level to be reproduced. Any
samples too high in level will simply be truncated, resulting in
**distortion**, loss of audio detail, and artefact **frequencies** which
were not present in the original sound.

**Clipping Point**
: The clipping point of a digital system is referred to as 0 dB, and
the level of any sound is measured in how far below the clipping point
it is (-10 dB, -24 dB, etc).

**Clocks**
: The two big numerical displays near the top of the Editor Window. They
can display the time in a number of formats: Timecode, Bars:Beats,
Minutes:Seconds, and Samples.

**Compile**
: FLOSS applications are distributed as source code, which is
human-readable but cannot be run as an actual application. To turn this
source code into a running application, it must first be Compiled. When
you download a disk image for Mac OS X or a software package from your
distribution (such as Ubuntu, Debian or Fedora), it has been compiled
for you already. However, if you wish to add features (such as support
for **VST Plugins**) which your distribution does not provide, then you
must Compile the application from source code yourself. 

**Compression**(DSP)
: Essentially, compression makes the quiet parts of a signal louder
without changing the level of 
the louder parts. This entails a reduction of the actual dynamic range:
a compressed sound is less dynamic (has a smaller range of levels) 

**Compression** (data)
: Like any other data, audio data can be compressed so that it uses less
hard disk space. Compression such as FLAC, ALAC, or MLP reduce the size
of audio files compared to WAV or AIFF without changing the data, which
is referred to as lossless compression. Audio can be compressed to a
still smaller size by using lossy compression such as MP3, Ogg Vorbis or
AAC but this is achieved by removing data which can have an audible
effect. 

**Connections Manager**(JACK)
: The window in Jack that allows to manage all connections between audio
inputs and outputs.

**CoreAudio**(Mac OS X)
: CoreAudio provides audio functionality to the Mac OS X operating system.

**Cursor Modes**
: These are the six buttons just below the Transport commands in the
Editor Window. The six different functions that the mouse pointer can
have in Ardour are: Select/Move Objects, Select/Move Ranges, Select Zoom
Range, Draw Gain Automation, Stretch/Shrink Regions, Listen to Specific
Regions.

**Decibels**
: Decibel is a logarithmic scale used to measure many quantities,
including the **gain**, **level** or **loudness** of a signal. Decibel
is usually abbreviated to dB and in digital audio usually denotes how
far under 0 dBFS (the **clipping** point of a system) a signal is. 

**Delay**(effect)
: The amount of time between one event and another. As an audio effect, a
delay takes an incoming sound signal and delays it for a certain length
of time. When mixed with the original sound, an "echo" is heard. By
using **feedback** to return the delayed signal back into the delay
(usually after lowering its **gain**), multiple echos with a **decay**
result.

**Destructive Editing/Recording**
: Destructive actions are those that permanently modify or erase the
original data (sound files) in the course of editing or recording. 

**Distortion**
: Distortion occurs when an audio signal is changed in some way that
produces **frequencies** not present in the original. Distortion can be
deliberate or unwanted, and can be produced by driving the signal to a
**clipping**point, or by using mathematical transformations to alter the
shape (or "waveform") of the signal (usually referred to as
"waveshaping").

**Disk Image (.dmg)**
: A disk image is a single file containing the complete contents and
structure representing a data storage medium or device. By
double-clicking on a .dmg file on a Mac, a virtual device will be
mounted to your Desktop (it will look as if you had inserted a USB
device or a DVD, for example). Many software installers in OS X are
available as .dmg files. 

**Driver**(JACK)
: Software written to control hardware. CoreAudio is the Mac sound driver.
ALSA is the most common Linux driver.

**DSP**
: Digital Signal Processing.

**Dynamic Range**
: Used to refer to the difference between the loudest and the quietest
sound that can possibly recorded, as well as the amount of detail which
can be heard in between those extremes. Sounds which are too quiet to be
recorded are said to be below the **noise floor**of the recording system
(microphone, recorder, sound card, audio software, etc). Sounds which
are too loud will be **distorted**or **clipped**. 

**Edit** **Modes**
: The three available Edit Modes (**Slide Edit**, **Slice Edit**, and
**Lock Edit**) control the behavior of editing operations in the **Main
Canvas**.

**Edit Point**
: The point in the Main Canvas where an action such as Paste takes place.
This can be the Mouse, the Playhead or a Marker.

**Editor Window**
: Ardour provides two ways of viewing a session: the Editor and the Mixer.
The Editor represents the time based aspects of a session: it shows
tracks and busses as horizontal timeline displays, with material within
the tracks (audio, MIDI, video, automation data, etc.) arranged along
the horizontal (time) axis.

**EQ**
: See Equalization.

**Equalization**
: Equalization (EQ) is the process of adjusting the relative levels of
different frequencies in a recording or signal. In other words, it is
the process of boosting or attenuating the various frequency bands of a
sound according to a chosen artistic goal.

**Filter**
: A type of signal processing that supresses some frequencies. 

**Floating Point Numbers**
: It is simply a number with a decimal point. "Floating Point" refers to
the specific technique the computer uses to represent a larger range of
integer and non-integer values.

**FLAC**
: An open source lossless audio format generally compatible with Linux,
Windows and Macintosh. Unlike AIFF and WAV, FLAC is a compressed format,
allowing file sizes to be reduced. 

**FLOSS**
: FLOSS stands for Free Libre Open Source Software. FLOSS Manuals is a
collection of manuals about free and open source software together with
the tools used to create them and the community that uses those tools.
They include authors, editors, artists, software developers, activists,
and many others.

**Format** (audio file)
: The types of sound file that sounds are saved as. Among the most common
are AIFF, WAV, FLAC, mp3 and Ogg Vorbis. 

**fps**
: Frames Per Second. Frame rate, or frame frequency is the frequency
(rate) at which an imaging device produces unique consecutive images
called frames. The term applies equally well to computer graphics, video
cameras, film cameras, and motion capture systems. Frame rate is most
often expressed in frames per second (FPS). 

**Frequency**
: Refers to the number of times an oscillation occurs in one second.
Frequency is measured in **Hertz**, and is correlated to the **pitch**
of a sound. Frequency is a **linear** scale, while pitch is
**logarithmic**. The pitch 'A' above the middle C has a frequency of 440
Hz. The 'A' one octave above is twice that frequency (880 Hz).

**Gain**
: Increasing the **level**of an audio signal, usually measured using a
**logarithmic** scale. See also **attenuation**.

**Grid**
: The Grid is a system of points that a Region might snap to while editing
it. The Grid can be "No Grid", "Grid" or "Magnetic". 

**Grid Points**
: The points in the **Grid** which Regions will snap to when it is active.
Grid Points may be minutes, seconds, video frames, bars, beats or some
multiple of beats. 

**Hertz**
: A term used to describe the number of times something occurs in one
second. In digital audio, it is used to describe the **sampling rate**,
and in acoustics it is used to describe the **frequency** of a sound.
Thousands of Herz are described as kHz (kilo Herz). 

**High Shelf**
: In an **Equalizer**, a **Shelf** cuts or boosts everything above (High
Shelf) or below (Low Shelf) a specific frequency.

**Headroom**
: The range of **Decibels** between the region's maximum **Peak**and the
**Clipping Point** is commonly referred to as **Headroom**. It is common
recording practice to keep approximately three to six Decibels of
Headroom between the maximum of your signal and the Clipping Point.

**Jack Audio Connection Kit (JACK)**
: JACK is a low-latency audio system which manages connections between
Ardour and the soundcard of your computer, and between Ardour and other
JACK-enabled audio programs on your computer. You must install JACK for
Linux or JackOSX before you can use Ardour.

**JackOSX** (OS X)
: The name of the version of **JACK** that runs on Mac OS X. See **JACK**
for more details. 

**JackPilot**
: The control interface that comes with JackOSX. 

**Jack Server**
: The Jack Server is the "engine" or "backend" of the Jack Audio
Connection Kit. 

**Jack Router**
: The Jack Router allows audio to be routed from one application to
another using the **Jack Server**. 

**JAMin**
: JAMin is the Jack Audio Connection Kit Audio Mastering interface. JAMin
is an open source application designed to perform professional audio
mastering of stereo input streams. It uses **LADSPA** for digital signal
processing (DSP).

**LADSPA Plugins**
: Linux Audio Developer Simple Plugin API (LADSPA) is a standard that
allows software audio processors and effects to be plugged into a wide
range of audio synthesis and recording packages. For instance, it allows
a developer to write a reverb program and bundle it into a LADSPA
"plugin library." Ordinary users can then use this reverb within any
LADSPA-friendly audio application. Most major audio applications on
Linux support LADSPA.

**Latency**
: Latency is the amount of time needed to process all the samples coming
from sound applications on your computer and send it to the soundcard
for playback, or to gather samples from the sound card for recording or
processing. A shorter latency means you will hear the results quicker,
giving the impression of a more responsive system. However, with a
shorter latency you also run a greater risk of **glitches** in the audio
because the computer might not have enough time to process the sound
before sending it to the soundcard. A longer latency means fewer
glitches, but at the price of a slower response time. Latency is
measured in milliseconds.

**Limiting**
: The process by which the amplitude of the output of a device is
prevented from exceeding a predetermined value.

**Linear**
: A scale of numbers which progresses in an additive fashion, such as by
adding one (1, 2, 3, 4...), two (2, 4, 6, 8...) or ten (10, 20, 30,
40...). Multiplying an audio signal, for example, by either a linear or
a logarithmic scale will produce very different results. The scale of
**frequency** is linear, while the scales of **pitch** and **gain** are
logarithmic.

**Linux kernel**
: The core of the GNU/Linux operating system. In a **Real-time System**,
this kernel is usually **Compiled**with new parameters which speed up
the use of audio applications in the system. 

**Lock Edit**
: One of the three available **Edit Modes**, Lock Edit is similar to
**Slice Edit**, but regions will remain at their original positions
regardless of any edit operation performed.

**Logarithmic**
: A scale of numbers which progresses according to a certain ratio, such
as exponentially (2, 4, 8, 16, 256...). Both scales of **pitch** and
**gain** are logarithmic, while the scale of **frequency** is linear.

**Lossless**
: See **Compression** (data) 

**Lossy**
: See Compression (data)

**Loudness**
: Unlike **amplitude**, which expresses the physical power of a sound,
loudness is the perceived strength of a sound. Tones at different
frequencies may be perceived as being at different loudnesses, even if
they are at the same amplitude.

**LV2** 
: LV2 is an open standard for plugins and matching host applications,
mainly targeted at audio processing and generation. LV2 is a simple but
extensible successor of LADSPA, intended to address the limitations of
LADSPA which many applications have outgrown.

**Main Canvas**
: In the Editor Window of Ardour, the Main Canvas is the space just below
the timeline rulers where Tracks and Busses are displayed horizontally.

**Master Out**
: A master out is a bus to which all (or most) tracks and other busses
send their output. It provides a convenient single point of control for
the output of Ardour, and is a typical location for global effects.
Master out use is enabled by default, and the master out bus is set up
to be stereo.

**Meter**
: The grouping of strong and weak beats into larger units called bars or
measures. 

**Mixing**
: Audio mixing is the process by which a multitude of recorded sounds are
combined into one or more channels, most commonly two-channel stereo. In
the process, the levels, frequency content, dynamics and panoramic
position of the source signals are commonly manipulated and effects such
as reverb may be added. 

**MIDI**
: MIDI is an industry-standard protocol defined
in^[](http://en.wikipedia.org/wiki/Musical_Instrument_Digital_Interface#cite_note-0)^
1982 that enables electronic musical instruments such as keyboard
controllers, computers and other electronic equipment to communicate,
control, and synchronize with each other. MIDI allows computers,
synthesizers, MIDI controllers, sound cards, samplers and drum machines
to control one another, and to exchange system data. MIDI does not
transmit audio signals, but simply messages such as note number (pitch),
velocity (intensity), note-on, and note-off.

**Mixer Strip**
: Each track and bus is represented in the Mixer Window by a vertical
Mixer Strip** that contains various controls related to signal flow.
There are two places in Ardour in which you can see mixer strips. The
mixer window is the obvious one, but you can also view a single mixer
strip on the left hand side of the Editor (shift + E to hide/view) 

**Mixer Window**
: The Mixer shows the session by representing tracks vertically as Mixer
Strips, with controls for gain, record enable, soloing, plugins etc. The
Mixer represents the signal flow of Tracks and Busses in an Ardour
session. The mixer window provides a view that mimics a traditional
hardware mixing console.

**Monitoring**
: Monitoring is the process of routing a specific mix or submix of your
session into separate outputs (like headphones). For example, a musician
being recorded may want to listen to existing material while performing.
Ardour and JACK make it easy to setup monitor outs since any incoming
signal can then be delivered back to any output, optionally mixed
together with other signals and with any kind of sound processing added.

**Mono**
: A mono sound file contains only one channel of audio. A mono track in
Ardour has only one input and handles mono sound files. 

**MP3**
: A lossy, size-compressed sound file **Format**. 

**Graphic Equalizer/Multi-Band Equalizer**
: A Graphic (or Multi-Band) Equalizer consists of a bank of sliders for
boosting or attenuating different frequency of a sound. 

**Non-destructive Editing/Recording**
: This is a form of editing where the original content is not modified in
the course of editing. Behind the scenes, the original sound file is
kept intact, and your edits are in fact a list of instructions that
Ardour will use in order to reconstruct the signal from the original
source when you play it back. For example, creating fade-ins and
fade-outs on your Regions is a type of non-destructive editing. 

**Normalize**
: To normalize an audio signal means to adjust its **Gain** so that it
peaks at the maximum the sound card allows before **Clipping**.

**Normal Mode**
: See **Track Mode**. 

**Note value**
: The proportional duration of a note or rest in relation to a standard
unit. For instance, a 'quarter note' (crotchet) is so-called because its
relative duration is one quarter of a whole note (semibreve). 

**Octave** (music) 
: A distance of 12 semitones between two notes. In **Hertz**, the ratio of
an octave is 2:1. For example, the note 'A' above the middle C has a
frequency of 440 Hz. The note 'A' one octave above is 880 Hz, and one
octave below is 220 Hz. 

**Ogg Vorbis**
: An open source lossy, size-compressed sound file format. 

**Panning**
: Panning is the location of sounds in the **Stereo Field**. 

**Parametric Equalizer**
: The Parametric Equalizer is the most versatile type of**EQ** used for
**Mixing** because of its extensive control over all the parameters of
filtering. 

**Peaks**
: Peaks are a graphical representation of the maximum **Levels** of a
**Region**. 

**Peak Meters**
: Peak Meters are a running representation of the maximum Levels of a
Region, and are located next to the Fader in the Mixer Window, and also
in the Track Mixer, of each Track. 

**Pitch**
: Pitch represents the perceived fundamental frequency of a
sound.^[](http://en.wikipedia.org/wiki/Pitch_(music)#cite_note-0)^^^It
is one of the three major auditory attributes of sounds along with
loudness and timbre. In MIDI, pitch is represented by a number between 0
and 127, with each number representing a key on a MIDI keyboard. The
relation of pitch to **Frequency** is **Logarithmic**. This means that a
sound which is heard as one **Octave**(+12 MIDI notes) above another one
is twice the frequency in Hz, while a sound one octave below (-12 MIDI
notes) is half the frequency.

**Playhead**
: In Ardour, the Playhead is the red line that moves in time (i.e., left
to right) to indicate the current playback position. 

**Plugin**
: In computing, a plugin consists of a computer program that interacts
with a host application (in this case, Ardour) to provide a certain
function "on demand", usually a very specific one. Reverb, filters, and
equalizers are examples of plugins that can be used in Ardour in
association with Tracks or Busses.

**Portaudio**
: A free and open source set of **audio drivers**for Linux and Mac OS X.

**Post-Fader** (Plugin or Send)
: In the Mixer Strip, the post-fader area is the black space below the
gain slider, to which plugins or sends can be added. The input of these
plugins and sends will be the signal *after* any manual or automated
gain change (thus "post-fader"). 

**Pre-Fader** (Plugin or Send)
: In the Mixer Strip, the pre-fader area is the black space above the gain
slider, to which plugins or sends can be added. The input of these
plugins and sends will be the incoming signal *before* it is affected by
any manual or automated gain changes controlled by the slider (thus
"pre-fader").

**Quantization**
: In signal processing, quantization may refer to bit depth (see **bit
depth** definition). In MIDI, quantization refers to the process of
aligning notes to a precise temporal grid. This results in notes being
set on beats or exact fractions of beats. MIDI sequencers typically
include some type of quantization function.

**Range**
: A segment of time. Ranges are created with the Select/Move Ranges tool
and may include one or more tracks. Loop and punch ranges are special
types of ranges that are created and manipulated with the loop/punch
ranges meter.

**Real-time System**(Linux)
: In a **Real-time System**, the **Linux kernel** is usually recompiled
(rebuilt) with new parameters, and other settings in the system are
optimized which speed up the use of audio applications in the system.

**Regions**
: Regions are the basic elements of editing and composing in Ardour. Each
region represents all or part of an audio file. Removing a region from a
track does not remove the audio file from the disk.

**Region List**
: The region list is located at the right hand side of the Editor Window
and it shows all the regions associated with the session. 

**Reverberation**
: Reverberation is the persistence of sound in a particular space after
the original sound source is
removed.^[](http://en.wikipedia.org/wiki/Reverberation#cite_note-0)^^^A
reverberation, or reverb, is created when a sound is produced in an
enclosed space causing a large number of echoes to build up and then
slowly decay as the sound is absorbed by the walls and air. Digital
reverberation can be added to a sound in Ardour through the use of
plugins. 

**Right Click** (mouse)
: Click on the right button of your mouse.

**Routing**
: Routing is sending an audio signal from somewhere to somewhere else.
Signals can be routed not only from the outside world into Ardour and
vice-versa, but also within Ardour itself (for example, from a Track to
a Bus).

**Rulers**
: Rulers are the thin horizontal bars that display the time line, helping
to see when exactly a region or sound starts or stops. Also displayed
with the rulers are the meter and tempo markers, the location markers,
the range markers and the loop/punch ranges. 

**Sample** (data)
: In digital audio, a sample is the smallest possible segment of a
recorded sound. In CD audio, for example, it takes 44,100 samples to
make one second of recorded sound, and so we can say that the **sampling
rate** is 44,100 **Hertz**. Samples also have a **bit depth** which
determines the **dynamic range** that is possible to record and
playback. Common bit depths are 16 (for CD audio), 24 (for studio
recording and DVDs) or 32 (for sounds inside the computer).

**Sample** (music) 
: In electronic music, the word sample can mean any portion of sound
extracted from an existing piece of music to be reused in a new
composition.

**Sampler**
: An electronic music instrument or software which plays back a recorded
sound (or **sample**) whenever it is sent a **note** message. The
**pitch** of the note determines how fast or slow the sample is played
back, which emulates the pitch changes in other instruments. Samples can
be looped (played over and over) and one-shot (played once).

**Sampling Rate**
: The rate at which the computer records and plays back sound, which is
measured in **Hertz**representing the number of **samples**per second.
CD audio is recorded and played at 44,100 Hz (or 44.1 kHz), while DVD
audio runs at 96,000 Hz (96 kHz) and cheap consumer gadgets like voice
recorders, video games, mobile phones, toys and some MP3 players often
use a rate of 22,050 Hz (22.05 kHz) or even less. The sampling rate
determines the highest **frequency** that can be recorded or played,
which is expressed by the Nyquist number (half the sampling rate).
Playing back sounds at a different sampling rate then they were recorded
at will result in hearing that sound at the "wrong speed".

**Send**
: An optional auxiliary output for a track or bus.

**Session**
: A session is all of the information that constitutes one project in
Ardour. Each session is saved in its own folder containing all the
audio, region and parametric data, and a master file with the .ardour
extension.

**Shelf**
: In an **Equalizer**, a **Shelf** cuts or boosts everything above (High
Shelf) or below (Low Shelf) a specific frequency.

**Slice Edit**
: One of the three available **Edit Modes**, Slice Edit does not allow
dragging regions around, but still allows you to perform slice
operations (such as cut, paste, and split). Space between regions will
be kept constant after any edit operation that affects it. If you delete
the second half of a region, for example, any subsequent regions on the
same track will automatically move back in the time grid.

**Slide Edit**
: Another one of the three available **Edit Modes**, Slide Edit is the
default mode. It allows you to drag regions around horizontally (within
the same track) and vertically (between tracks).

**SMPTE timecode**
: : A set of cooperating standards to label individual frames of video
or film with a timecode defined by the Society of Motion Picture and
Television Engineers. Timecodes are added to film, video or audio
material, and have also been adapted to synchronize music. They provide
a time reference for editing, synchronization and identification.

**Snap Mode**
: The **Snap Mode** menus are found just below the **Clocks**. They
control the amount **Quantization** of the time grid, i.e., the amount
of "snap" an audio **Region** has to the type of grid you have chosen.

**Snapshots**
: Saving a snapshot in Ardour is similar to saving the session to a new
file to avoid overwriting the original session file. A snapshot contains
the current state of your work, while sharing all the audio and data
files of the Session. If you were trying to find a "Save As" function in
Ardour, saving a snapshot is probably what you are looking for. 

**Solo**
: Toggle switch found in track controls and mixer strips. When toggled on,
only solo tracks will send output. Several tracks can be marked solo at
once. The general Solo button (top row of controls in the Editor Window)
can be used to un-solo all soloed tracks at once.

**Spectrum**
: The representation of a signal in terms of its frequency components. 

**Stereo**
: A stereo sound file contains two channels of audio (usually known as
Left and Right channels). A stereo track in Ardour has two inputs and
outputs, in order to record and playback stereo files.

**Stereo Field**
: Stereo field is the perception of spatial location of sounds based on a
sound reproduction system of 2 channels (Left and Right). 

**Take**(recording)
: A sequence of sound recorded continuously at one time.

**Tape Mode**
: See **Track Mode**. 

**Tempo**(music)
: The rate at which beats occur. Precise Tempo indications are measured in
**bpm** (beats per minute), although subjective indications are also
common in scores (Allegro, Adagio, Very Fast, etc). 

**Terminal**
: A "terminal" is the text-based interface that allows to operate a
computer by typing commands into it. Most computer users today rely
solely on a graphical interface to control their systems. Both Mac OS X
and Linux though, include a terminal which may make some tasks easier
for some users. 

**Timecode**
: A time code is a sequence of numeric codes generated at regular
intervals by a timing system. The SMPTE family of timecodes is almost
universally used in film, video and audio production.

**Time Signature** (music) 
: A sign placed at the start of a piece of music (after the clef and key
signature) or during the course of it, indicating the meter of the
music.

**Track**
: A Track is the place to where you can drag a **Region** from your
**Region List**and where you can record sounds coming from an
outside source. The Mixer Strip vertically represents the signal flow of
a track, whereas the Main Canvas horizontally displays time-based
information for each track. 

**Track Mode**
: **Track Mode** gives you a choice between **Normal Mode** and **Tape
Mode**. Normal Mode creates a new Region for each Recording **Take**,
while **Tape Mode** destructively records--in other words the previous
Take of a Track is eliminated with each new Take.

**Transport**
: The buttons located on the upper left corner of the Editor Window, with
controls such as Rewind, Play, Stop. 

**Treble**(frequencies)
: Generic way of referring to high frequencies of the **Spectrum** of a
sound.

**VST (Virtual Studio Technology)**
: [Steinberg](http://en.wikipedia.org/wiki/Steinberg) VST is an
interface for integrating software audio synthesizer and effect plugins
with audio editors and digital workstations such as Ardour. VST and
similar technologies use digital signal processing to simulate
traditional recording studio hardware with software. Thousands of
plugins exist, both commercial and freeware. VST was created by
Steinberg. 

**WAV**
: A sound file format developed by Microsoft and IBM and commonly used for
lossless and uncompressed audio. WAV files are compatible with Windows,
Macintosh and Linux operating systems.

**Waveform**
: The time-domain visual representation of a sound. Waveforms are drawn
inside the colored rectangles representing Regions in the Main Canvas.

**Word length**
: See **Bit Depth**. 
