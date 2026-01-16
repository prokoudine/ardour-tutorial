---
title: Impostazione della timeline
#description: FIXME
weight: 6
cascade:
  type: docs
---

Una volta importati alcuni file audio in Ardour, riproducili e inizia a familiarizzare con l'interfaccia utente. 
Potresti voler mettere a punto varie parti dell'interfaccia utente in base alle tue esigenze. Le impostazioni della 
timeline sono una delle opzioni più ovvie, perché ciò che desideri vedere sulla timeline dipende in gran parte dal tipo 
di materiale su cui lavori.

Gli utenti che creano audio, documentari, reportage o paesaggi sonori potrebbero preferire utilizzare minuti e secondi 
come unità di misura, mentre chi registra gruppi musicali o produce musica elettronica utilizzerà molto probabilmente 
battute e battiti. I produttori video troveranno utile il Timecode in fotogrammi al secondo, mentre chi desidera una 
precisione estrema potrebbe persino voler utilizzare i campioni. Tutti questi elementi possono essere visualizzati in 
Ardour e utilizzati come mezzo per organizzare le regioni e le modifiche.

Parliamo di come impostare gli orologi, lo snapping e i righelli della timeline.

## Orologi primari e secondari

Nella parte superiore della finestra _Editor_ sono presenti due orologi che possono visualizzare l'ora in diversi 
formati: *Timecode*, *Battute:Battiti*, *Minuti:Secondi*, *Secondi* e *Campioni*. Fare clic con il tasto destro del mouse 
per modificare il formato di ciascuno dei due orologi.

{{< figure src="it/Ardour8_Clock_Units.png" alt="Unità orologio" >}}

These are called the transport clocks. The left one is the primary transport clock and the right one is the secondary transport clock. The advantage of having two transport clocks is that you see the playhead position in two different time units without having to change any settings.

If you never need the second clock, you can disable it entirely. Go to  `Edit > Preferences > Appearance > Toolbar` and disable the _Display Secondary Clock_ checkbox.

Please check the Ardour manual for more information on [clocks](http://manual.ardour.org/ardours-interface/using-ardour-clock-displays/).

## Snap Modes

Snapping settings are located just below the clocks to the right. They control the _quantization_ of the time grid, i.e., to which units the timeline grid is divided and to what extent audio regions and MIDI notes get snapped when snapping is enabled. E.g. you can snap to whole seconds when you drag an audio region around or you could snap to a 1/16 note when creating or editing MIDI notes.

There is one global switch, _Snap_, and then a drop-down list of grid quantization presets: _Bar_, _1/4 note_, _1/8 note_ etc., _Triplets_, _Timecode_, _Minutes and Seconds_, _CD frames_, and more.

![Snap](en/Ardour6_Snap_Options_and_Nudge_Controls.png?width=20vw)

When _No Grid_ quantization preset is selected, there is no grid displayed on the tracks/busses canvas. In that case, with snapping off, nothing will snap. And with snapping enabled, regions and notes will only snap to location markers.

## Timeline

The _timeline_ is located below the snapping settings, just above the main canvas. By right-clicking on the timeline labels (i.e., right-click on the left-side area where the words "Timecode, Bars:Beats, Meter" etc are displayed), you can set the check boxes to show or hide the different types of time information.

{{< figure alt="Timeline" src="en/ardour7-timeline-rulers.png" >}}

**Minutes/Seconds**
: To view minutes and seconds on the timeline, right-click the timeline labels and select _Mins:Secs_.

**Bars/Beats**
: To view bars and beats on the timeline, right-click the timeline and select _Bars & Beats_.
: It is possible to set a time signature and tempo for the entire Ardour session, as well as to change them at different points in the same session. For more information on this, please see the _Setting Up The Time Signature_ chapter.

**Timecode**
: To work with SMPTE video timecode, first you need to set the _timecode fps_ (frames per second). This can be found in the timecode tab of the _Session Properties_ window (`Session > Properties` in menu or the **Alt+O** shortcut).

{{< figure alt="Timecode" src="en/Ardour6_Timecode.png" >}}

Once you have done that, make sure you make the _Timecode_ ruler visible by right-clicking in the timeline and checking the _Timecode_ box.

There are other types of rulers: tempo, time signature, location markers, and more.

## Continuing

Now that you've set up the timeline, continue on to the chapter on installing plugins. This is will come in handy in the next chapter when you learn how to record MIDI.