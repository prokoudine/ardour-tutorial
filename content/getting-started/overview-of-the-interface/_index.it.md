+++
title = "Panoramica dell'interfaccia"
description = "Nozioni di base sull'interfaccia utente di Ardour"
weight = 2
+++

Questa sezione ti fornirà una panoramica di base dell'interfaccia utente di Ardour.

Esamineremo gli elementi comuni dell'interfaccia e delle finestre principali, concentrandoci in particolare sulle 
finestre _Editor_ e _Mixer_. Nei capitoli successivi forniremo informazioni più dettagliate su ciascuna delle 
funzionalità qui elencate.

## Finestra di Ardour

Ecco una schermata tipica di un progetto aperto in Ardour:

{{< figure src="it/ardour8-main-window-parts.png" alt="Finestra principale di Ardour 8" >}}

L'interfaccia utente è composta da due parti principali: 

1. La parte statica che contiene il menu del programma, il pannello di trasporto, gli orologi, la timeline di 
navigazione e vari controlli. Ne parleremo più avanti in questa pagina. 

2. La parte dinamica che cambia a seconda della finestra attualmente aperta. Ne parleremo nelle pagine successive 
dedicate a ciascuna finestra (Editor, Mixer, Registratore, Cue).

Passiamo alla parte statica e concentriamoci sulle funzionalità che ti saranno immediatamente utili.

## Menu del programma

Questo è il modo più semplice per accedere alle funzioni di qualsiasi programma, non dovresti avere problemi a 
utilizzarlo. I comandi specifici della sessione si trovano nel menu _Sessione_, tutto ciò che riguarda la riproduzione 
e la registrazione si trova nel menu _Trasporto_, la maggior parte delle funzioni di editing si trova in _Modifica_ e 
così via.

{{< figure src="it/ardour8-program-menu.png" alt="Menu del programma di Ardour 8" >}}

Per comodità, le funzioni specifiche degli elementi sono duplicate nel menu contestuale. Ad esempio, troverai il 
contenuto del menu _Regione_ nel menu contestuale di una regione selezionata (una clip che puoi vedere sulla timeline, 
vedi le pagine successive del tutorial).

## Pannello informativo

Questo pannello mostra informazioni utili sul progetto attualmente aperto (frequenza di campionamento, latenza, 
carico DSP) e quanti minuti di registrazione sono disponibili in base allo spazio libero attualmente disponibile sul disco.

{{< figure src="it/ardour8-info-panel.png" alt="Pannello informativo di Ardour 8" >}}

Se clicchi con il tasto destro del mouse, vedrai altre opzioni come il nome dell'istantanea del progetto corrente 
(ne parleremo più avanti) e l'orologio (come si vede nella schermata sopra).

## Pannello trasporto

Il pannello trasporto consente di navigare facilmente nel progetto: andare all'inizio/alla fine della sessione, 
riprodurre l'intera sessione o solo una selezione (chiamata "intervallo" in Ardour), avviare la registrazione.

{{< figure src="it/ardour8-transport-panel.png" alt="Pannello trasporto di Ardour 8" >}}

La parte inferiore del pannello presenta i comandi jog/shuttle per saltare avanti e indietro a varie velocità durante la
riproduzione dei contenuti della sessione.

Se desideri che il pannello di trasporto senza i controlli jog-shuttle sia visualizzato in un altro punto dello schermo,
puoi aprire una finestra mobile denominata _Controlli trasporto_ (`Finestre > Controlli trasporto`). Puoi spostare 
questa finestra in qualsiasi punto dello schermo e ridimensionarla.

## Orologi

{{< figure src="it/ardour8-clocks.png" alt="Orologi di Ardour 8" >}}

Gli _orologi_ principali si trovano accanto ai controlli trasporto. Gli orologi in Ardour possono visualizzare il tempo 
in 4 diversi formati: Timecode, Battute:Battiti, Minuti:Secondi e Campioni. Clicca con il tasto destro sull'orologio per
selezionare un formato. Puoi anche spegnere l'orologio. Il motivo per cui ci sono due orologi di trasporto è che ti 
permettono di vedere la posizione del cursore di riproduzione in due diverse unità di tempo senza dover modificare 
alcuna impostazione.

Se lavori in uno studio domestico dove utilizzi un interruttore a pedale per attivare la registrazione e ti trovi a 
qualche metro di distanza dallo schermo, potresti aver bisogno di un orologio più grande. Utilizza 
`Finestre > Orologio grande` per aprire una finestra con l'orologio che rimarrà in primo piano rispetto a tutte le altre
finestre e ridimensionala a tuo piacimento.

{{< figure src="it/ardour8-big-clock.png" alt="Orologio grande di Ardour 8" >}}

Per ulteriori dettagli sugli orologi, consultare il capitolo [Impostazione della timeline](../setting-up-the-timeline).

## Navigazione della timeline

A destra di questi due orologi è possibile vedere la _mini-timeline_, chiamata anche _Navigatore timeline_. È un modo 
pratico per ricordare i segnali e gli indicatori di posizione, specialmente quando ci si trova nella finestra _Registrazione_, 
dove la timeline non dispone di tali righelli.

{{< figure src="it/ardour8-navigation-timeline.png" alt="Navigatore timeline di Ardour 8" >}}

Per ulteriori informazioni sulla [mini-timeline](https://manual.ardour.org/ardours-interface/mini-timeline/), consultare il manuale di Ardour.

## Passare da una finestra all'altra

A destra della barra degli strumenti globale, subito dopo il _Navigatore della timeline_ e il misuratore di uscita del 
bus master, troverai un comodo widget per passare da una finestra all'altra di Ardour: Editor, Mixer, Registratore e Cue.

{{< figure src="it/ardour8-window-switcher.png" alt="Selettore di finestre di Ardour 8" >}}

In alternativa, è possibile utilizzare **Ctrl+Pagina su/Pagina giù** per scorrere le finestre, proprio come in 
qualsiasi browser web.

È anche possibile utilizzare la scorciatoia **Alt+M** per passare dalla finestra _Editor_ alla finestra _Mixer_ e 
viceversa. Se ci si trova nella finestra _Registratore_ o _Cue_, premendo questa scorciatoia per la prima volta si 
passerà alla finestra _Mixer_, mentre premendola una seconda volta si passerà alla finestra _Editor_.

**Continua**

Le sezioni successive spiegheranno le nozioni di base delle finestre principali di Ardour:

[Editor](editor-window) | [Mixer](mixer-window) | [Registratore](recorder-window) |
[Cue](cue-window)
