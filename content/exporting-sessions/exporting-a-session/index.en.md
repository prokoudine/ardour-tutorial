---
title: Exporting a session
description: How to export sessions in Ardour
weight: 1
cascade:
  type: docs
---

_Exporting_ is the process of saving a region, track, or entire session to a
file on your computer which you can listen to, burn as a CD-R, or convert
to an MP3 to share on a website.

## Export the Entire Session

Once you have finished your composition, the most common export operation is to
export the entire session to an audio file. 

### Bird's Eye View of Entire Session

At this point it's a good idea to zoom out and take a look at your whole session
before exporting.

* Select "All" from the "Number of visible tracks" menu:

{{< figure alt="track heights" src="en/ardour7-track-height.png" >}}

* Click on the **Zoom to Session** button (third button in the zoom options):

![zoom options](en/ardour7-session-zoom-all.png?width=200)

* You should now have a nice overview of your whole session, like this:

{{< figure alt="birds eye view" src="en/ardour7-birds-eye-view.png" >}}

Listen to your piece one last time and make sure you hear everything the way you
want (any **Solo** or **Mute** button you forgot to deactivate? Any volume
adjusment left to do? etc.)

#### Start and End Markers

Finally, make sure the _start_ and _end_ markers on the location markers
timeline are in the right place.

Everything included between the _start_ and _end_ markers will be exported, so
you have to set the markers first if they are not in the correct position. In
the image below, clearly the _end_ marker is too far to the right in the
timeline. This will result in a huge silence after the end of the piece (that
is, between the last region and the _end_ marker).

{{< figure src="en/ardour7-end-marker-too-far.png" alt="The end marker is too far" >}}

If your _end_ marker is too far after the end of your piece, click and drag it
to the left until it is pretty close to the end of the very last region of your
composition.

## Export it!

To export a session, use the top menu:
`Session > Export > Export to Audio File(s)...`. This will open up a dialog box
with a number of options.

{{< figure alt="Export Session dialog" src="en/ardour7-exporting-settings.png" >}}

**Preset**
: This is *NOT* where you write the file name. Don't worry about this field now.

**Format**
: This allows you to choose the file format (WAV, MP3, OGG, FLAC, etc.). The
default is CD (Red Book), which will give you a 16-bit WAV file with 44.1kHz
sample rate.

**Add another format**
: If you'd like to export in more than one format at the same time, click on
this tab.

**Location**
: This is the place where you will find the file after it is saved. By default,
it is in the `export` folder that lives inside your main session folder. You
could also click **Browse** and select the Desktop, for example.

**Label**
: _This_ is where you can create a unique name for the file. Ardour will
automatically append the session name to the exported file, so if you don't
write anything here the name may end up something generic like `my-session.wav`.
Use this field to give a unique name to your file.

Having chosen your options, click **Export**. After the operation is finished,
you can find the file using your file browser.

{{< callout type="info" >}}
Export is handled through the Master bus, so the final file will include all
the sounds from tracks and busses that were routed to it. This will include any
normalizing, fading, panning, and automation you have created, along with the
individual edits made to the regions as well. If any of the tracks have the
**Mute** or **Solo** buttons engaged, this will also affect which tracks will be
heard in the exported file.
{{< /callout >}}

## Normalization

Sometimes the rendered audio is either too loud or too quiet to match demands
imposed by various popular streaming services like YouTube or Spotify. Ardour
provides a tool called _Loudness Assistant_ to help with that.

In layman terms, it analyzes everything that goes through the _Master_ bus,
estimates how loud the signal is, and then suggests correcting it upwards or
downwards so that overall loudness would be just about right for this or that
popular streaming service.

While you can apply loudness (gain) correction directly to the _Master_ bus's
output and benefit from having more manual control over the result, the most
convenient way is to apply normalization at the exporting stage. You can do
that two ways:

1. Just pick a popular service in the drop-down list under _Formats_. Ardour has
presets for Apple Music, Deezer, Spotify, YouTube etc.

2. If the service is not listed in the presets, click the **Edit** button to
open a dialog with advanced exporting settings, enable _Normalize_, choose
_Loudness_ rather than _Peak_, and then set the desired LUFS value.

{{< figure src="en/ardour7-edit-exporting-format.png" alt="Edit the exporting Format" >}}

## Continuing

At the end of this chapter, you now have an exported stereo mix representing
your entire session. You may also want to know how to export individual regions
or selected ranges from your session. This will be covered briefly in the next
two chapters.

Next: [EXPORTING REGIONS](../exporting-a-region)
