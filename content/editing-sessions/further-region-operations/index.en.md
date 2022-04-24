+++
title = "Further region operations"
chapter = false
weight = 6
+++

In this section you will learn a few more things you can do with regions.

Right-clicking a selected region reveals a context menu. The first item
in the menu (labeled with the region's name) contains a large sub-menu.
All of these operations are also available from Ardour's main *Region*
menu.

This section describes a few of the most commonly used operations
accessible from these menus.

{{< figure alt="Region menu" src="en/ardour7-region-menu.png" >}}

**Play**
: Play back from the beginning to the end of that region (**H** shortcut).

**Tag**
: Give a region some meaningful tag, e.g. "Good" that helps distinguishing it
from others in the _Regions_ list

**Loop**
: Set the loop range to fit that region's duration, and start looping it right
away.

**Rename**
: Change a region's name.

**Properties**
: Lots of information on the region, plus the ability to change its gain.

**Position**
: Among other options, in this sub-menu you will find the _Lock_ toggle box: it
locks the region so that it cannot be moved or trimmed. It can still be split,
however, and the resulting regions will be unlocked.

**Edit**
: This submenu contains useful tools such as _Pitch Shift_ (**Alt+8**) and
_Reverse_ (**Alt+4**). _Pitch Shift_ alters the pitch of a region without
changing its duration. _Reverse_ makes the region play backwards.

**Gain**
: Has useful options such as _Mute_ (**Alt+1**), _Normalize_ (**Alt+3**),
_Boost Gain_ (**Alt+6**), and _Cut Gain_ (**Alt+7**).

**Duplicate**
: Includes _Duplicate_ (shortcut **Alt+D**), _Multi-Duplicate_, and _Fill Track_.
These were explained in detail in the
[Working with Regions](../working-with-regions) chapter.

**Loudness Analysis**
: Estimates loudness of a region in LUFS, as well as _Peak_ and _True Peak_
values.

**Spectral Analysis**
: Window displaying the overall frequency content of the region.

Feel free to explore by yourself other submenus not mentioned above. Many of
them are mirrors of the options you find under Ardour's *Region* menu. Below we
go into a bit more details on some of the most useful functions. 

## Pitch Shifting

The _Pitch Shift_ (**Alt+8**) function alters the pitch of a region without 
changing its duration. The function applies a pitch-shifting algorithm to
create a new audio clip based on the source clip.

The _Pitch Shift_ window allows the user to specify the amount and direction of
transposition desired. The window includes a _Preserve Formants_ option. When
pitch shifting by large amounts, the preserve formants option can give results
that sound slightly more natural, particularly when used on vocal material.

{{< figure alt="Pitch Shift" src="en/ardour7-pitch-shift-window.png" >}} 

## Normalize

The _Normalize_ function (**Alt+3** shortcut) non-destructively boosts the level
of the  selected region so that the _peaks_ are at 0 dB or less. When
normalizing  to 0.0, the region will be as loud as possible while avoiding
clipping.  Sometimes you may find useful to normalize a region to a value less
than 0,  such as -1.0, -3.0, or -6.0 decibels, so it doesn't become too loud. 

{{< figure alt="normalize" src="en/ardour7-normalize-window.png" >}} 

Two other useful gain operations for regions are _Boost Gain_ (**Alt+6**) and
_Cut Gain_ (**Alt+7**), both incrementing gain by 1dB upwards or downwards.
Be sure to try them out.

## Reverse

The _Reverse_ (**Alt+4**) function reverses the selected region of audio, in 
effect causing it to play backwards. Reversing a region creates a new audio
file "behind the scenes".

## Operations On Two Or More Selected Ranges

If more than one range is selected, the operation will apply to all of them (for
example, _Normalize_, _Reverse_, etc.)

### Combine

Some operations from the context menu will only become available when two or
more regions are selected. For example, let's take a look at the _Combine_
function, under the sub-menu _Edit_. First we select two adjacent regions:

{{< figure alt="combine" src="en/ardour7-region-combine-1.png" >}}

Then we choose _Combine_ from the right-click context menu, or from Ardour's
main menu `Region > Edit > Combine`: 

{{< figure alt="combine 2" src="en/ardour7-region-combine-2.png" >}}

As a result, the selected regions are combined into one. This is particulary
useful when you have found an exact sequence of regions that works just as you
want, and then you would like to copy and/or move the whole sequence as group.

Notice that the resulting combined region has the word "compound" attached to
its name. 

{{< figure alt="combine 3" src="en/ardour7-region-combine-3.png" >}} 

## Continuing

In the following chapter, we will learn a bit more about the powerful
tools Ardour has available by changing **Edit Modes**.

Next: [CHANGING EDIT MODES](../changing-edit-modes)
