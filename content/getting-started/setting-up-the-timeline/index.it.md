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

Questi sono chiamati orologi di trasporto. Quello a sinistra è l'orologio di trasporto primario e quello a destra è 
l'orologio di trasporto secondario. Il vantaggio di avere due orologi di trasporto è che è possibile vedere la posizione
della testina di riproduzione in due diverse unità di tempo senza dover modificare alcuna impostazione.

Se non hai mai bisogno del secondo orologio, puoi disattivarlo completamente. Vai su 
`Modifica > Preferenze > Aspetto > Barra` e deseleziona la casella _Mostra orologio secondario_.

Per ulteriori informazioni sugli [orologi](http://manual.ardour.org/ardours-interface/using-ardour-clock-displays/), 
consultare il manuale di Ardour.

## Modalità allineamento (Snap)

Le impostazioni di allineamento si trovano appena sotto gli orologi sulla destra. Esse controllano la divisione 
della griglia temporale, ovvero in quali unità è suddivisa la griglia della timeline e in che misura le regioni audio e 
le note MIDI vengono agganciate quando l'allineamento è abilitato. Ad esempio, è possibile agganciare a secondi interi 
quando si trascina una regione audio o agganciare a una nota da 1/16 quando si creano o si modificano note MIDI.

È presente un interruttore globale, _Allineamento_, e un elenco a discesa di impostazioni predefinite per la 
divisione della griglia: _Battuta_, _1/4 note_, _1/8 note_ ecc., _Terzine_, _Timecode_, _Minuti e secondi s_,
_CD frames_ e altro ancora.

{{< figure alt="Allineamento" src="it/Ardour8_Snap_Options_and_Nudge_Controls.png" >}}

Quando è selezionata l'impostazione predefinita _Nessuna Griglia_, non viene visualizzata alcuna divisione della griglia
sulle tracce/bus. In tal caso, con la modalità allineamento disattivo, nulla verrà allineato. Con l'allineamento attivo,
le regioni e le note verranno allineate solo ai marcatori di posizione.

## Timeline

La _timeline_ si trova sotto le impostazioni di aggancio, appena sopra lo spazio di lavoro principale. Facendo clic con 
il tasto destro del mouse sulle etichette della timeline (ovvero, facendo clic con il tasto destro del mouse sull'area a
sinistra dove sono visualizzati "Timecode, Battute:Battiti, Tempo" ecc.), è possibile selezionare le caselle di 
controllo per mostrare o nascondere i diversi tipi di informazioni temporali.

{{< figure alt="Timeline" src="it/ardour8-timeline-rulers.png" >}}

**Minuti/Secondi** 
: per visualizzare i minuti e i secondi sulla timeline, clicca con il tasto destro sulle etichette della timeline e 
seleziona _Mins:Secs_.

**Battiti/Battute**
: Per visualizzare le battute e i battiti sulla timeline, clicca con il tasto destro sulla timeline e seleziona 
_Battute:battiti_.
: È possibile impostare un tempo e un'indicazione di tempo per l'intera sessione di Ardour, nonché modificarli in diversi
punti della stessa sessione. Per ulteriori informazioni al riguardo, consultare il capitolo _Impostazione del tempo_.

**Timecode**
: Per lavorare con il timecode video SMPTE, è necessario innanzitutto impostare il _timecode fps_ (fotogrammi al secondo). 
Questa impostazione è disponibile nella scheda timecode della finestra _Proprietà della sessione_ 
(`Sessione > Proprietà` nel menu o con la scorciatoia **Alt+O**).

{{< figure alt="Timecode" src="it/Ardour8_Timecode.png" >}}

Una volta fatto, assicurati di rendere visibile il righello _Timecode_ facendo clic con il pulsante destro del mouse 
sulla timeline e selezionando _Timecode_.

Esistono altri tipi di righelli: tempo, indicazione metrica, marcatore di posizione e altro ancora.

## Continua

Ora che hai impostato la timeline, passa al capitolo sull'installazione dei plugin. Ti tornerà utile nel prossimo 
capitolo, quando imparerai a registrare MIDI.
