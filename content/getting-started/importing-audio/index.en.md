+++
title = "Importing audio"
description = "Importing audio to Ardour tracks"
chapter = false
weight = 4
#pre = "<b>1. </b>"
+++

Sections of audio are known as **Regions** in Ardour. A Region can be an entire
sound file or a portion of it. Here you will learn how to import audio files
from the hard drive of your computer so they can be used in your Ardour session.

To import an audio file into your session, you will use the *Add existing media*
 dialog. Use the shortcut **Ctrl+I** to get to this window, or alternatively go
to the `Session > Import` menu).

On the left side of this dialog you will see a file browser which allows you to
search your hard drive for appropriate sound files to add (preferably, start
with a common file format, such as WAV or AIFF).

![Add Media](en/Ardour5_Add_Existing_Media.png) 

At the lower left corner there is a menu which indicates how these files will be
added. "*Add files as new tracks*" will import audio files and place them on a
newly created track. "*Add files to region list*" will simply import audio files
into the Region List, without creating any new tracks. **Choose this option
now**, as we don't want Ardour to create any tracks at this point.

![Add Media](en/Ardour5_Add_Files_To_Region_List.png) 

{{% notice tip %}}
If you do not have any suitable audio files on your hard drive to follow these
steps, visit [freesound.org](http://www.freesound.org/)), where you can find a
large collection of Public Domain and Creative Commons–licensed samples in a
variety of sample rates and formats.
{{% /notice %}}

On the right side of the **Add existing media** dialog you will see a section
allowing you to inspect the properties of the file you selected. Here you will
see the name, number of channels, sample rate, format and length of the sound
file, along with any tags you have chosen to add to the file.

The **Play** button allows you to preview the file. You can also select
**Auto-play** if you would like to hear a sound file immediately as soon as you
click on it in the file browser (without having to push the Play button).

You will notice that the option **Copy Files to Session** is checked by default.
This will make a copy of the imported file(s) into the folder of the current
session. This is safer, but it uses more disk space. If you uncheck this option
(not recommended!), Ardour will use the sound file from its current location on
the hard drive. In this case, if the file is moved to a new location on the hard
drive, you will run into trouble, because Ardour won't be able to find it the
next time you open this session. **It is highly recommend that you leave this
box checked ("Copy files to session")**. 

Click **OK** to proceed.

{{% notice tip %}}
The file(s) you have imported will appear listed in your Region List. The Region List is located at the far right of the editor window. If you don't see it, make sure "*Show Editor List*" is checked under the "*View*" menu.
{{% /notice %}}

![Editor List](en/Ardour4_RegionList_EditorList.png) 

{{% notice tip %}}
An alternative method to access the **Add Existing Media** window is actually to
Right-Click directly on the **Editor List** box. Make sure the **Regions** tab
is selected. Right-Click on an empty part of the Editor List, then choose
*Import to Region List* to open the same **Add Existing Media** dialog box that
you have seen before.
{{% /notice %}}

![Region List](en/Ardour4_Import_To_Region_List.png) 

Once you have successfully embedded your audio files in the Region List, they
should all be listed there. In the screenshot below, three files were imported:
"*toaster\_8*", "*short-drone-mono*", and "*wheels-mono*". The number \[2\]
right after "*toaster\_8*" indicates it is a stereo file. The other files
without the number \[2\] are mono files.

![Toaster](en/Ardour4_Region_List_Stereo_File.png) 

By dragging and dropping an audio file listed on the Region List onto the Main
Canvas, you can insert it in an existing track. If you drag it into an existing
track, it will be added there. If you drag onto the empty space beneath existing
tracks, a new track will be automatically created to accommodate it.

Release the mouse-click to complete the drag-and-drop operation. The Region will
be inserted at the exact time point where you dropped it.

{{% notice tip %}}
If a sound file is selected in the Editor List (i.e., if it is highlighted in
blue), the next time you click on that file name Ardour will think you are
trying to rename the Region (the name will become editable). More likely you
were just trying to click to drag and drop the file onto a track. In order to
click and drag a previously **highlighted** region from the list, you need to
point and click in the empty space right before or after the name.
{{% /notice %}}

Important: always make sure you are placing Stereo Regions on Stereo
Tracks. If you drag a Stereo file onto a Mono Audio Track, only the left
channel will be used. In the screenshot below, a stereo file with very
distinct left and right channels was dragged onto a Stereo Track and a
Mono Track. Notice that in the Mono Track only the left channel is
displayed (and played back).  

![Stereo Mono](en/Ardour4_Stereo_Mono_Comparison.png) 

### Importing Audio Directly to a Track

As mentioned earlier, the **Add existing media** dialogue also allows you
to import audio files directly onto tracks.

Choose **Add files: as new tracks** in order to automatically create
a new track and add the selected file to it. The track will be named
after the sound file name.

![Add as New Tracks](en/Ardour4_Add_As_New_Track.png) 

If you have previously selected one or more tracks, the menu will display the
additional option **Add files: to selected tracks** in order to add a sound
file into the already existing selected track.

When adding files as new tracks, note that the **Mapping** options lets you choose between **one track per channel** or **one track per file**. For the purpose of this tutorial, choose **one track per file**, otherwise the left and right channels of a Stereo file will be split into two separate tracks.

#### Choose Insert Point

When using either one of the options above ("add as new track" or "add to selected tracks"),
you should also specify where in the track you want the
new Region to be placed. In the screenshot below, we are choosing
"*session start*".

![Insert At](en/Ardour4_Insert_At.png) 

The Region appears in a new track in the session. The new track
automatically receives the name of the imported sound file.

The sound file will also appear in the Region List so that it can be
inserted into other tracks as well (drag and drop).

### Remove Regions from Tracks

To remove a region from a track, one can select it with the mouse and
use the *Cut* function from the menu, the *Control* (or *Apple*) key and
the *X* key, the *Delete* key or the key combination of *fn* and
*Backspace* (which is used, for example, on a laptop keyboard that does
not have a proper *Delete* key).

{{% notice warning %}}
**Save your work often!** The shortcut "Control" + "S" is your friend. Use it a lot, all the time.
{{% /notice %}}

## Continuing

Now that you have some material in your session, you might want customizing the timeline to better suit your needs or jump to recording new material live.

Next: [Setting up the timeline](../setting-up-the-timeline) or [Recording audio](../../recording-audio)
