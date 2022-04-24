+++
title = "Creating looped sections"
chapter = false
weight = 8
+++

You can easily repeat sections of audio in your Ardour session.

Here, we take the short rhythmic passage we created in _Working with Regions_
and duplicate it to make a loop.

Before duplicating the passage, it is a good idea to combine individual regions
in the same track into a single one: it is easier to move them around this way,
and it prevents you from accidentally moving a single hihat out of place, for
example. There are two ways of doing this: _Combine Regions_ (allows you to
"uncombine" later on), and _Consolidate Range_ ("writes it in stone", does not
allow you to separate them later).

If you are still planning on making alterations to the rhythm (adding, removing,
or moving individual regions), it may be better to use the _Combine_ regions
option. If you like the sequence the way it is and don't want or don't care to
have the ability to separate them later, use _Consolidate Range_ option.

## Combine Regions

Simply select all the regions you want to combine:

{{< figure alt="combine" src="en/ardour7-combine-regions-1.png" >}}

Then go to menu *Region > Edit > Combine* (or right-click on the
selected regions and find the same option through the context menu, as
shown below):

{{< figure alt="combine2" src="en/ardour7-combine-regions-2.png" >}} 

The combined regions will look like this (note the word "compound"
appended to the name):

{{< figure alt="combine4" src="en/ardour7-combine-regions-3.png" >}} 

Should you need to separate them again in the future, simply select the
compound region and go to the same menu and choose the option _Uncombine_. 

## Consolidating the Range

A more permanent alternative to _Combine_ is to use the _Consolidate_. When
you've arranged your regions into a single "loop cycle" and you're satisfied
with the sound, create a _range_ with all the regions that will make up the
loop.

First, make sure every track used in the loop is selected. Unselected tracks are
gray, and selected ones are colored (depending on UI theme). If any of the
tracks you used are not selected, hold down the **Shift** key while clicking on
them to add them to the selected group. Finally, use the Range tool to select
the entire loop. 

Once again, the _Grid_ setting will help you to set the range precisely to the
start and end points of your metric bar. Once you have the entire loop selected,
right-click on the range and select _Consolidate range_. If you would like any
automation or plugin effects you have added to the loop to be included, select
_Consolidate range with processing_.

{{< figure alt="consolidate" src="en/ardour7-consolidate-range-1.png" >}} 

When the range is consolidated, new regions will appear in each track, each
containing all the repetitions of the samples which you set up in the previous
steps. Remember, once the range is consolidated, there is no way to undo this
operation. In any case, if you find that you need to alter the rhythm in any
way, you can always retrieve the original individual samples from the region
List and rebuild the pattern with them.

{{< figure alt="consolidate2" src="en/ardour7-consolidate-range-2.png" >}}

## Duplicating the Range

After you have merged individual regions that form your pattern (using
either _Combine_) or _Consolidate)_), it's time to duplicate the
pattern to make it loop for several bars.

The _Multi-Duplicate_ feature (seen in the [Working with
regions](../working-with-regions/) chapter) is a good way to accomplish this.
Go back to _Grab_ mode (**G**) , select all regions,  and hit
**Shift+D**. Choose how many times you want to duplicate the pattern (for
example, 16). After duplication our session looks something like this:

{{< figure alt="multi-dup" src="en/ardour7-multi-duplicate.png" >}} 

Just for review, other options you could have used for duplication are:

- The _Fill Track_ command from menu `Region > Duplicate > Fill Track`. This
would fill the entire track with copies of the selected regions, all the way up
to the_End Marker_. 

- The single _Duplicate_ command from the same menu (**Alt+D**). This
lets you make a single copy at a time. 

- The single duplicate action with **Ctrl+Click** on the region + _Drag a copy_.

## Continuing

In the next tutorial we will learn about stretching/shrinking regions that are
longer or shorter than one bar in order to fit the rhythm of our passage.

Next: [STRETCHING/SHRINKING REGIONS](../stretching-shrinking-regions)
