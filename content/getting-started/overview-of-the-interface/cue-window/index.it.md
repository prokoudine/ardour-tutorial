---
title: Finestra Cue
description: Nozioni di base sulla finestra Cue di Ardour
weight: 4
cascade:
  type: docs
---

La finestra _Cue_ fornisce gli strumenti per impostare le performance dal vivo utilizzando Ardour. In questo tutorial 
non utilizzeremo _Cue_, quindi questa è solo una rapida panoramica per darvi un'idea di base di cosa si tratta.

## Elementi dell'interfaccia utente

L'interfaccia utente segue l'approccio generale previsto dagli utenti di altre applicazioni con questo tipo di funzionalità.

{{< figure src="it/ardour8-cue-window-sections.png" alt="Sezioni della finestra cue" >}}

Ecco le parti principali dell'interfaccia:

1. Griglia dei lanciatori di clip
2. Pannello delle impostazioni clip
3. Browser di clip riutilizzabili

Da sinistra a destra si visualizzano le tracce che contengono clip (non visibili sulla timeline quando si passa alla 
finestra _Editor_). Dall'alto verso il basso si vedono 8 righe chiamate scene, da _A_ a _P_.

Il browser sulla destra consente di trascinare facilmente clip preregistrate negli slot delle clip per la riproduzione. 
È possibile utilizzare sia clip audio che MIDI. Trascinando una clip sullo spazio vuoto si creerà una nuova traccia e si
riempirà automaticamente il primo slot (scena _A_) con quella clip.

Le impostazioni riportate sotto consentono di personalizzare la riproduzione di una clip, stabilendo se deve essere
allungata per adattarsi a un determinato valore bpm, se deve attivare la riproduzione di un'altra clip specifica, ecc.

## Flusso di lavoro non lineare

Lavorare con il lanciatore di clip è comunemente definito come flusso di lavoro non lineare, poiché si basa sulla 
riproduzione in loop di clip pre-registrate in cui non è necessario passare direttamente dalla scena A alla scena H.

È possibile impostare i lanciatori di clip in modo tale che una clip nella scena _B_ venga riprodotta 4 volte, attivi 
una clip nella scena _A_ che verrà riprodotta 2 volte, quindi passi alla clip _C_ e la riproduca 6 volte, quindi torni 
alla clip _B_, che ripeterà l'intero ciclo più e più volte fino a quando non lo si interrompe manualmente. E tutto 
questo senza mai premere il pulsante **Play** nel trasporto per riprodurre un brano dall'inizio alla fine.

## Combinazione di flussi di lavoro lineari e non lineari

Sebbene sia possibile riprodurre un intero brano dal vivo senza mai uscire dalla finestra _Cue_, specialmente se si 
dispone di un controller hardware grid e di tutte le clip pre-registrate necessarie, è possibile integrare il lanciatore 
di clip nel normale flusso di lavoro lineare nella finestra _Editor_. 
Per farlo, è necessario aggiungere dei marker nella timeline _Cue Markers_.

Ecco un semplice esempio:

{{< figure src="it/ardour8-linear-and-nonlinear.png" alt="Combinazione di flussi di lavoro lineari e non lineari" >}}

Ardour riproduce due battute di una traccia MIDI regolare che utilizza uno strumento campionato, quindi avvia la scena 
_A_ alla battuta 3, la scena _B_ alla battuta 4 e interrompe tutte le scene alla battuta 5. 
È possibile attivare e interrompere le scene in qualsiasi momento nel progetto lineare, tutte le volte che si desidera.

**Continua**

Ora che avete familiarità con le finestre principali di Ardour, passiamo alla sezione successiva dove creeremo una nuova
traccia e poi importeremo alcuni file audio.
