---
title: Finestra registratore
description: Nozioni di base sulla finestra di registratore di Ardour 
weight: 3
cascade:
  type: docs
---

La finestra _Registratore_ è ottimizzata per un caso d'uso particolare: la registrazione su più tracce. L'interfaccia 
è volutamente semplificata per eliminare ogni distrazione.

{{< figure src="it/ardour8-recorder-window-sections.png" alt="Sezioni della finestra Registratore" >}}

Come illustrato sopra, la finestra Registratore è suddivisa in tre sezioni principali:

1. Barra degli strumenti specifica della finestra 
2. La timeline e la rappresentazione delle tracce 
3. Controllo degli ingressi

## Barra degli strumenti specifica della finestra

La barra degli strumenti contiene comandi e informazioni specifici: attivazione e disattivazione di tutte le tracce per 
la registrazione, eliminazione dell'ultima registrazione, commutazione automatica di tutti gli ingressi per il 
monitoraggio del segnale, stima del tempo di registrazione disponibile sul disco fino all'esaurimento dello spazio 
libero, ecc.

{{< figure src="it/ardour8-recorder-toolbar.png" alt="Barra degli strumenti del registratore" >}}

## La timeline e la rappresentazione delle tracce

La timeline mostra solo il codice temporale e la vista delle tracce non presenta alcuna rappresentazione della forma 
d'onda. Ciò contribuisce a ottimizzare l'utilizzo delle risorse di sistema durante la registrazione simultanea di decine
di tracce.

{{< figure src="it/ardour8-recorder-timeline-tracks.png" alt="Timeline e tracce del registratore" >}}

## Controllo degli ingressi

La parte inferiore della finestra è quella in cui si controllano gli ingressi: è possibile monitorare il volume di 
ingresso e, per comodità, rinominare le porte fisiche. Per fare quest'ultima operazione, basta cliccare sul nome della 
porta di ingresso e assegnarle un nuovo nome.

{{< figure src="it/ardour8-recorder-input-renaming-dialog.png" alt="Rinomina dell'ingresso" >}}

Ad esempio, se disponi di due ingressi microfonici, uno per la voce e uno per la chitarra, assegnare loro nomi 
appropriati semplificherà la selezione di quello giusto per la traccia corretta. Ciò risulterà ancora più comodo per le 
interfacce audio con, ad esempio, 18 ingressi.

{{< figure src="it/ardour8-recorder-input-new-names.png" alt="Nuovi nomi" >}}

Se utilizzi i [plugin I/O](https://manual.ardour.org/recording/io-plugins/), i loro ingressi verranno visualizzati 
accanto agli ingressi della traccia.

**Continua**

Infine, nella sezione successiva daremo una rapida occhiata alla finestra _Cue_, che offre un'interfaccia utente 
familiare per l'avvio di clip audio e MIDI.