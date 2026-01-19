---
title: Registrare audio
description: Come registrare l'audio con Ardour
weight: 1
cascade:
  type: docs
---

Oltre a importare file audio esistenti, un altro modo per creare regioni nella sessione di Ardour è quello di 
*registrare* nuovo audio.

La fonte di questo audio potrebbe essere l'ingresso di linea o microfonico della tua interfaccia audio, oppure potrebbe 
anche essere un suono proveniente da altre applicazioni sul tuo computer che sono state collegate ad Ardour tramite JACK.
Per maggiori dettagli, consulta la [sezione sul routing](../understanding-routing/).

Questa sezione ti mostrerà come registrare l'audio da una fonte esterna (ad esempio un microfono) su una traccia in Ardour.

{{< figure src="it/ardour8-editor-mixer-input.png" alt="Editor Mixer input" >}}

Per prima cosa, è necessario verificare che gli ingressi corretti siano stati indirizzati alla traccia su cui si desidera 
registrare.

1. Seleziona la traccia cliccando sullo spazio vuoto appena sotto il suo nome e il cursore del volume.
2. La traccia viene evidenziata.

{{< figure src="it/ardour8-audio-1-highlight.gif" alt="Evidenziare una traccia" >}}

3. La barra verticale _Mixer Editor_ situata sul lato sinistro della finestra _Editor_ dovrebbe ora mostrare la traccia 
appena selezionata (*Audio 5* nell'immagine sopra). 
4. Appena sotto il nome della traccia nel _Mixer Editor_ troverai un pulsante che ti permette di modificare il routing.
5. Clicca su quel pulsante per esaminare il routing.

> [!NOTE]
> Se non vedi la barra _Mixer Editor_, usa la scorciatoia **Shift + E** per visualizzarla.

Nell'immagine seguente è possibile vedere che l'unico ingresso di questa traccia mono riceve il segnale da 
*Alder Lake... Digital Microphone*. Questo normalmente corrisponde al primo ingresso microfonico della scheda audio. 
I nomi effettivi delle connessioni sul tuo personal computer potrebbero essere diversi a seconda di una serie di 
fattori, tra cui il fatto che tu stia utilizzando un computer macOS, Windows o Linux. Se non vedi una connessione 
denominata *Alder Lake... Digital Microphone*, cerca il nome della connessione che potrebbe essere il tuo microfono di 
ingresso.

{{< figure src="it/ardour8-audio-1-input.png" height="300" >}}

Le schede visualizzate verticalmente sulla sinistra sono le sorgenti disponibili. "*Audio 5 in*" in basso a destra è la 
destinazione. Il punto verde rappresenta una connessione.

Le schede mostrano le connessioni che possono essere effettuate da altre fonti all'interno di Ardour. La scheda
_Altre_ mostra le connessioni audio disponibili da software diversi da Ardour, se presenti. La scheda _Hardware_ mostra 
le connessioni hardware (ad esempio, il microfono integrato nel computer o gli ingressi della scheda audio). Questo 
argomento verrà spiegato più dettagliatamente nel capitolo [Comprendere il routing](../understanding-routing/).

Ai fini di questo capitolo, assicurati semplicemente che _Alder Lake... Digital Microphone_ (o equivalente nel tuo 
computer) dalla scheda _Hardware_ sia collegato alla traccia che desideri utilizzare, in modo da poter eseguire una 
registrazione di prova. Se non vedi un punto verde come nella schermata sopra, clicca sulla matrice per effettuare il 
collegamento manualmente. Ora puoi chiudere questa finestra.

{{< callout type="info" >}}
L'esempio sopra riportato presuppone che si stia registrando una sorgente sonora mono su una traccia mono. Se si 
desidera registrare in stereo, le istruzioni sono praticamente le stesse, ma è necessario creare una traccia stereo. 
Dovrebbero quindi apparire due punti verdi, uno per _capture_FL_ e un altro per _capture_FR_.
{{< /callout >}}

## Armare la traccia

{{< callout type="warning" >}}
Assicurati di abbassare il volume degli altoparlanti prima di procedere con il passaggio successivo.
{{< /callout >}}

"Armare la traccia" significa semplicemente prepararla per la registrazione. Una volta verificato che gli ingressi di 
acquisizione corretti sono stati indirizzati alla traccia, è possibile armarla per la registrazione facendo clic sulla 
piccola icona rossa sulla striscia orizzontale della traccia (non quella grande nei controlli di trasporto).

{{< figure src="it/ardour8-arming-the-track.png" alt="Armare la traccia" >}}

Quando la traccia è correttamente armata, la piccola icona rossa rimarrà evidenziata e sarà possibile vedere il segnale 
in arrivo guardando il _misuratore di picco_ sul _Mixer Editor_ o sulla striscia orizzontale della traccia.

Se utilizzi le cuffie, dovresti essere in grado di ascoltare ("monitorare") i suoni registrati. Se utilizzi gli 
altoparlanti, assicurati di abbassare il volume per evitare il feedback.

{{< callout type="info" >}}
A meno che non sia stato specificato diversamente in Ardour, l'input registrato verrà monitorato (ovvero ascoltato) 
tramite l'uscita _Audition_. Se non si utilizzano le cuffie per monitorare il processo di registrazione, a questo punto 
potrebbe verificarsi un forte feedback!
{{< /callout >}}

## Arma Ardour e avvia la registrazione

Ora che hai armato la traccia per la registrazione, devi armare Ardour stesso per registrare cliccando sul grande 
pulsante rosso nella barra degli strumenti _Trasporto_. Il pulsante lampeggerà in rosso, indicando che Ardour è pronto 
per registrare. Per avviare la registrazione, clicca sul pulsante **Play** nel menu _Trasporto_, oppure premi la barra 
spaziatrice della tastiera del tuo computer. Cliccando nuovamente sul pulsante **Play** (o premendo la barra spaziatrice) 
si interromperà la registrazione.

{{< figure src="it/ardour8-recording.png" alt="Arma Ardour e avvia la registrazione" >}}

Durante la registrazione, la traccia armata catturerà i suoni dall'input. Qualsiasi suono esistente su altre tracce 
verrà riprodotto normalmente durante la registrazione. Ciò consente di suonare, cantare o parlare insieme ad altre 
regioni e tracce già registrate o incorporate nella sessione.

Durante la registrazione, potrai vedere i livelli (l'ampiezza in decibel) del suono in ingresso, nonché i picchi della 
forma d'onda che appaiono man mano che viene registrata.

{{< callout type="info" >}}
Se ti trovi a una certa distanza dal computer su cui è in esecuzione Ardour e devi registrare l'audio, una delle opzioni
possibili è aggiungere il plugin chiamato _Voice/Level Activate_, che fa parte del pacchetto Ardour. Posizionalo 
all'inizio della catena del segnale nella casella del processore, ovvero nella parte superiore. Una volta armata la 
traccia e attivata la modalità di registrazione, battendo le mani davanti a un microfono o pizzicando una corda della 
chitarra si avvierà il trasporto e quindi inizierà la registrazione. Modifica il valore di soglia (misurato in dBFS) per
adattarlo alle tue esigenze.
{{< /callout >}}

## Evitare il clipping

L'audio nella schermata sottostante è stato registrato a un volume troppo alto e ha prodotto del _clipping_ (in altre 
parole, il segnale registrato era al di fuori dei limiti di ciò che poteva essere rappresentato digitalmente), con 
conseguente perdita di informazioni e distorsione udibile. I picchi clippati nella forma d'onda sono contrassegnati in 
rosso.

{{< figure src="it/ardour8-clipping.png" alt="Clipping" >}}

Il modo migliore e più semplice per evitare il clipping è controllare il volume del segnale audio in ingresso prima che 
raggiunga la scheda audio. Ad esempio, è possibile allontanare il microfono dal suono che si sta registrando oppure 
utilizzare un mixer per ridurre il volume del segnale in ingresso.

Quando il segnale audio è stato registrato entro i limiti corretti, non dovrebbero essere visibili picchi rossi e il 
misuratore di livello dovrebbe mostrare un numero negativo come picco massimo (ad esempio, un picco massimo di 
circa −3,0 decibel è una distanza adeguata dal punto di clipping).

L'intervallo di decibel tra il picco massimo della regione e il punto di clipping è comunemente indicato come _margine_ (headroom).
È prassi comune nella registrazione mantenere circa tre-sei decibel di margine tra il massimo del segnale e il punto di
clipping, con il punto di clipping stesso rappresentato come 0dB (zero decibel). In altre parole, una regione audio con 
un margine adeguato avrebbe i suoi picchi massimi compresi tra −6dB e −3dB.

## Elenco delle regioni

L'audio registrato appare come una nuova regione nella traccia di registrazione. Come tutte le regioni, anche quella 
appena registrata sarà disponibile nell'elenco _Regioni_, da cui è possibile trascinarla in altre tracce, se necessario.

La regione appena registrata riceverà automaticamente il nome della traccia in cui è stata registrata, con le diverse 
registrazioni numerate automaticamente. Nella schermata sottostante, "*Take1_Audio 5-1*" e "*Take2_Audio 5-1*" 
rappresentano due diverse registrazioni effettuate su una traccia denominata "*Audio 5*".

{{< figure src="it/ardour8-region-list-recording.png" alt="Elenco delle regioni" >}}

Potresti voler pianificare in anticipo e organizzare la tua sessione di registrazione assegnando nomi appropriati alle 
diverse tracce. Ad esempio, una traccia utilizzata solo per registrare la voce può essere denominata "Voce". In questo 
modo, i file audio registrati saranno denominati di conseguenza e le diverse registrazioni appariranno nell'elenco 
_Regioni_ identificate come "Voce-1", "Voce-2", ecc., anziché con i nomi generici predefiniti, come "Take1_Audio 1".

Per rinominare una traccia, basta fare doppio clic sul suo nome (prima di attivare la traccia per la registrazione) e 
digitare il nuovo nome.

{{< figure src="it/ardour8-rename-track.png" alt="Rinomina traccia" >}}

{{< callout type="info" >}}
Abbiamo già detto quanto sia importante **salvare spesso il proprio lavoro**? Premi subito **Ctrl + S**. Prendi 
l'abitudine di farlo ogni pochi minuti.
{{< /callout >}}

## Registra audio pre-elaborato

A volte è utile registrare audio pre-elaborato con effetti. Il modo più semplice per farlo è utilizzare i plugin I/O. 
Ecco come funzionano:

1. Vai su `Finestra > I/O Plugins` nel menu principale. 
2. Fai doppio clic sulla sezione **Pre-Processo**. 
3. Seleziona il plugin che ti serve dall'elenco. 
4. Fai clic su **Add**, quindi su **Inserisci plugin**.
5. Per il plugin appena inserito, clicca sul pulsante **-** sopra il suo nome per aprire l'elenco a discesa degli 
ingressi hardware disponibili e seleziona l'ingresso da cui registrare. 
6. Se hai già una traccia su cui registrare, clicca sul pulsante **-** sotto il nome del plugin I/O per aprire l'elenco 
a discesa e seleziona l'uscita.
7. Se non hai ancora una traccia su cui registrare, clicca sul pulsante **+** nell'elenco degli ingressi sotto il 
plugin I/O e crea una nuova traccia che verrà automaticamente collegata a questo plugin I/O. 
8. Attiva la traccia, attiva la modalità di registrazione e premi **Spazio** o clicca sul pulsante **Play** per avviare 
la registrazione. 

**Continua**

A questo punto, potresti voler passare direttamente alla sezione 
[Disposizione delle tracce](/editing-sessions/arranging-tracks/) per imparare come disporre le regioni in una 
composizione. Se hai intenzione di effettuare registrazioni più complesse di quelle descritte in questa guida, 
in particolare con una scheda audio multicanale o da altri programmi audio compatibili con JACK sul tuo computer, 
ti consigliamo di dare un'occhiata anche al capitolo [Comprendere il routing](../understanding-routing).
