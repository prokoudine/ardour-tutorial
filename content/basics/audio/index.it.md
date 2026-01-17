---
title: Cos'è l'audio digitale?
description: Impariamo le basi dell'audio
weight: 1
cascade:
  type: docs
---

**Ardour** è una workstation audio digitale (DAW). Prima di utilizzarla per registrare e modificare l'audio, potrebbe 
essere utile rivedere il funzionamento dell'audio digitale.

## Frequenza e Guadagno

Immaginate un altoparlante. Per muovere l'aria davanti a esso e produrre suono,
la membrana dell'altoparlante deve vibrare dalla sua posizione centrale (a
riposo) avanti e indietro.

Il numero di volte che la membrana vibra ogni secondo determina la
_frequenza_ (la nota, o _tonalità_) del suono che sentite. La distanza che la
membrana percorre dal suo punto di riposo determina l'_ampiezza_ (il
volume, o _intensità_) del suono. Normalmente, misuriamo la frequenza in
_Hertz_ (Hz) e l'ampiezza in _decibel_ (dB).

Un microfono funziona come un altoparlante al contrario: le vibrazioni nell'aria
fanno vibrare la sua membrana. Il microfono trasforma queste vibrazioni acustiche
in corrente elettrica. Se si collega questo microfono alla
scheda audio di un computer e si avvia la registrazione, la scheda audio effettua migliaia
di misurazioni di questa corrente elettrica al secondo e le registra come
numeri. Il numero di _campioni_ (cioè misurazioni) effettuati al secondo è
chiamato _frequenza di campionamento_, mentre il numero di valori possibili che ogni campione può
avere è chiamato _profondità di bit_. La combinazione di frequenza di campionamento e profondità di bit
indica quanto il segnale digitale sia in grado di riprodurre fedelmente il suono che
ha registrato.

## Picchi e Clipping

Quando Ardour mostra i campioni registrati, questi appaiono come
la _forma d'onda_ che vediamo qui sotto. La linea orizzontale al centro indica la membrana 
dell'altoparlante a riposo e i _picchi_ della forma d'onda indicano l'_ampiezza_ massima.

{{< figure src="en/waveform.png" alt="Forma d'onda" >}}

Se prendiamo una forma d'onda e ne aumentiamo notevolmente l'ampiezza, alcuni dei picchi
potrebbero ora cadere al di fuori dell'intervallo che il computer è in grado di rappresentare digitalmente.
L'incapacità del computer di rappresentare i picchi al di fuori dell'intervallo di ampiezza
è chiamata _clipping_, che comporta una perdita permanente di informazioni digitali,
nonché un cambiamento nella qualità del suono riconoscibile
come _distorsione_. Ardour contrassegna i picchi clippati con il colore rosso, come si può
vedere nell'immagine sottostante.

{{< figure src="en/clipping.png" alt="Clipping" >}}

Nell'immagine sopra, è possibile vedere anche la _barra del mixer_ all'estrema sinistra,
che fornisce una misurazione continua dei picchi, oltre a un'indicazione
nella parte superiore dei _misuratori di picco_ che mostra il picco massimo raggiunto fino a quel momento. 
Il numero in rosso indica che si è verificato un clipping.

{{< callout type="info" >}}
Il clipping può verificarsi spesso durante la registrazione se i valori dei livelli del microfono sono troppo alti.
{{< /callout >}}

L'intervallo di decibel tra il picco massimo della registrazione e il punto di clipping
è comunemente indicato come _margine_ (headroom), e la comune pratica di registrazione
è quella di mantenere circa 3-6 decibel di margine tra il massimo del
segnale e il punto di clipping, con il punto di clipping stesso rappresentato
come 0 dB (zero decibel). In altre parole, una registrazione audio con un
margine adeguato dovrebbe avere i suoi picchi massimi compresi tra −6 dB e −3 dB.

Inoltre, poiché i picchi dei segnali audio si sommano, è necessario prestare attenzione quando si
mixano più sorgenti insieme per evitare il clipping dei segnali combinati.

## Frequenza di campionamento e profondità di bit

Per riprodurre l'audio su un compact disc, ad esempio, il computer deve
generare 44.100 campioni al secondo. La frequenza di campionamento determina la frequenza massima
che può essere registrata o riprodotta dal computer. Una frequenza di campionamento
di 44,1 kHz significa che la frequenza massima che può essere rappresentata è
poco meno di 22,05 kHz. Poiché l'udito umano normale rientra nell'intervallo compreso tra
circa 20 Hz e 20 kHz, questa frequenza di campionamento è comunemente accettata come ragionevole.
Altre frequenze di campionamento comunemente utilizzate sono 48 kHz (ad esempio
pedali multieffetto) o 96 kHz (audio DVD).

Ogni campione viene registrato come un numero a 16 bit. Un _bit_ è un'informazione che può essere 0 o 1.
Se ci sono 16 bit insieme per formare un campione, allora ci sono 2^16 (65.536) valori possibili per ogni campione.

Pertanto, possiamo affermare che l'audio di qualità CD ha una frequenza di campionamento di 44,1 kHz e
una profondità di bit di 16 bit. Le registrazioni musicali professionali vengono solitamente mixate
utilizzando 24 bit per preservare il massimo livello di dettaglio prima di essere mixate
a 16 bit per il CD. I vecchi giochi per computer hanno un suono distintamente grezzo,
utilizzando solo 8 bit. Aumentando la frequenza di campionamento, siamo in grado di registrare frequenze sonore più alte
e, aumentando la profondità di bit, siamo in grado di utilizzare una
maggiore _gamma dinamica_ (la differenza tra i suoni più bassi e quelli più alti
possibili da registrare e riprodurre).

**Continua**

L'audio non è l'unico modo per memorizzare informazioni musicali. Nel capitolo successivo,
esploreremo le basi del MIDI.