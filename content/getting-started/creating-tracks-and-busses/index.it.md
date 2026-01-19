---
title: Creazione di tracce e bus
#descrizione: Nozioni di base sulla finestra cue di Ardour
weight: 4
cascade:
  type: docs
---

## Cosa sono le tracce?

Una traccia rappresenta in genere una parte suonata con uno strumento o cantata con la voce. Tale parte può iniziare 
all'inizio e terminare alla fine di un brano. Oppure possono esserci più occorrenze dello stesso strumento/voce 
all'interno di un brano, nel caso ci saranno probabilmente più _regioni_ o _clip_ all'interno di una traccia.

Una regione è semplicemente una porzione di dati audio o MIDI. Ad esempio, una traccia "Chitarra solista" può avere 
diverse regioni, una per ogni assolo. Mentre, una traccia "Batteria" potrebbe essere solo una regione MIDI per l'intera 
canzone.

Una traccia _audio_ è solitamente autonoma in quanto contiene tutti i dati necessari per riprodurre la musica.
Una traccia _MIDI_, invece, è composta da istruzioni che devono essere interpretate ed eseguite per fornire il suono 
effettivo da ascoltare.

Una regione rappresenta una clip audio, ovvero uno dei tuoi file audio o solo una parte di un file audio.
Nell'immagine sottostante, le aree orizzontali contrassegnate con "*MyTrack*" e "*short-drone-mono*" sono tracce.
I rettangoli contenenti informazioni audio sono chiamati regioni (ad esempio, la regione "*wheels-mono.1*" è contenuta 
all'interno di *MyTrack*).

{{< figure src="en/Ardour6_Tracks.png" alt="Tracce" >}}

## Cosa sono i bus?

Un _bus_ è simile a una traccia, tranne per il fatto che non contiene regioni proprie. Non è possibile registrare 
direttamente in un bus né trascinarvi regioni. Tuttavia, è possibile aggiungere plugin a un bus e quindi inviare 
l'uscita di più tracce a quel bus (vedere sotto per i dettagli).

Un bus MIDI è simile a un bus audio: non ci sono regioni, ma solo l'elaborazione del flusso di dati in entrata e 
l'uscita dei dati elaborati.

L'area contrassegnata con _Master_ nella tua sessione è un esempio di bus. In genere ogni sessione ha un bus _Master_.
Tutto l'audio da esportare dalla tua sessione verrà inviato al bus Master.

## Come vengono utilizzate le tracce e i bus?

I _plugin_ di elaborazione audio e le _automazioni_ possono essere applicati sia alle tracce che ai bus.

Le tracce audio possono essere indirizzate ai bus. Infatti, molte tracce possono essere indirizzate contemporaneamente a
un unico bus. I bus sono tradizionalmente utilizzati come un modo pratico per applicare qualsiasi tipo di elaborazione 
del segnale a più tracce contemporaneamente. Ad esempio, potrebbe essere utile indirizzare tutte le tracce che 
contengono suoni di batteria a un unico bus che potresti chiamare "*bus batteria*". Quindi, se ritieni che tutte le 
tracce di batteria siano troppo rumorose, puoi regolare rapidamente il livello del "*bus batteria*" invece di regolare 
ogni singola traccia che lo alimenta.

Un altro utilizzo di un bus potrebbe essere quello di avere un plugin di riverbero comune, in modo che qualsiasi traccia
audio che richiede l'effetto riverbero possa essere indirizzata a un unico bus.

## Aggiunta di tracce e bus

**Click-Destro** nell'area vuota sotto le tracce e i bus esistenti. In alternativa, clicca sul menu 
`Traccia > Aggiungi traccia, Bus o VCA...` (scorciatoia **Ctrl+Shift+N**). Apparirà la seguente finestra:

{{<figure src="it/Ardour8_Add_Track_or_Bus.it.png" alt="Aggiungi traccia" >}}

Ardour offre diversi tipi di tracce a seconda del tipo di dati che contengono. Questo tutorial tratterà solo le tracce 
audio e i bus. (vedi il [manuale di Ardour](http://manual.ardour.org/working-with-tracks/track-types/) per i dettagli su
tutti i tipi di traccia o la loro breve spiegazione nella sezione sottostante).

Scegli _Tracce audio_ o _Bus audio_ per specificare se desideri creare tracce audio o bus.

La casella _Aggiungi_ consente di specificare il numero di tracce (o bus) che si desidera creare.

È possibile assegnare un _Nome_ alla traccia o al bus che si sta creando. Il menu a tendina _Configurazione_ consente di
specificare il numero di canali audio che la nuova traccia o il nuovo bus dovrà gestire. Ad esempio, se si intende 
registrare la propria voce su questa traccia utilizzando un singolo microfono, selezionare _Mono_. Se si intende 
importare un clip da un brano esistente e inserirlo in questa traccia, selezionare _Stereo_. La scelta effettuata in 
questa fase influirà anche sui plugin che è possibile utilizzare sulla traccia (le tracce mono non possono utilizzare 
plugin stereo e viceversa).

> [!NOTE]
> Quando crei una nuova traccia MIDI, il nome viene automaticamente preso dallo strumento virtuale che hai selezionato 
> come predefinito.

Il menu _Posizione_ consente di scegliere dove posizionare la nuova traccia o il nuovo bus: all'inizio, alla fine, prima
o dopo la selezione.

Per ora puoi tranquillamente ignorare le altre opzioni. Per saperne di più su ciascuna di esse, consulta 
[questa pagina del manuale completo di Ardour](http://manual.ardour.org/working-with-tracks/adding-tracks-and-busses/).

Fai clic sul pulsante **Aggiungi e chiudi** per creare le tracce o i bus appena configurati e chiudere automaticamente 
la finestra _Aggiungi traccia_. Le tracce appena create appariranno come nuove righe nell'area di lavoro principale. Se 
desideri aggiungere più tracce con configurazioni diverse, seleziona invece **Aggiungi e continua** (e la finestra di 
dialogo resterà aperta).

## Altri tipi di tracce e bus

Quando aggiungi tracce e bus al tuo progetto, vedrai più opzioni disponibili.

I **Bus foldback** sono destinati a mix di monitoraggio sul palco, dove potresti voler fornire a ciascun artista un mix 
personalizzato che arriva direttamente al suo auricolare. Ad esempio, più sezione ritmica e meno sezione fiati nel mix 
per un chitarrista solista. [Vedi qui](https://manual.ardour.org/ardours-interface/foldback-strip/) per maggiori 
dettagli.

I **Controlli VCA** sono un altro modo per raggruppare le tracce. Queste strisce del mixer forniscono un unico fader per
più tracce. Per ulteriori informazioni, consultare il 
[manuale utente](https://manual.ardour.org/ardours-interface/control-masters/).

**Continua**

Una volta aggiunte una o più tracce, vorrai inserirvi del materiale audio su cui lavorare. Continua con i capitoli 
**Importazione audio** e **Registrazione audio** per imparare come farlo.