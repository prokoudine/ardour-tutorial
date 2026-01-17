---
title: Cos'è il MIDI?
description: Impariamo le basi del MIDI
weight: 2
cascade:
  type: docs
---

Il MIDI è una tecnologia fondamentale per la composizione e la produzione musicale da oltre 40 anni.
Tuttavia, i nuovi utenti hanno ancora difficoltà a comprenderne il funzionamento.
Questo capitolo offre una breve panoramica delle nozioni di base sul MIDI che è importante conoscere per utilizzare
Ardour in modo efficiente.

Questo capitolo potrebbe sembrare un po' complesso senza prima aver fatto un po' di pratica, quindi non esitare a
tornare indietro e rileggerlo quando arriverai alla registrazione MIDI.

## Cos'è il MIDI?

Il MIDI (Musical Instrument Digital Interface) è un protocollo di comunicazione che consente agli strumenti musicali
elettronici, ai computer e ad altri dispositivi di scambiarsi informazioni.
Anziché inviare audio, invia messaggi o istruzioni.

## Dove è supportato il MIDI

Il MIDI è praticamente ovunque nella produzione musicale.

Le tastiere MIDI e i controller a griglia come Launchpad inviano comunemente messaggi MIDI a sintetizzatori hardware e
workstation audio digitali.

Il caricamento di una patch da un editor desktop a un processore multi-FX per chitarra comporta in genere l'invio
di un messaggio MIDI SysEx.

## Come funziona il MIDI

La cosa più importante da capire è che le tastiere MIDI non producono alcun suono.
Quello che fanno è inviare istruzioni che l'hardware o il software possono interpretare per produrre suoni,
modificarli o fare qualcosa di completamente diverso.

Il più delle volte, avrai a che fare con il MIDI registrando te stesso mentre suoni su una tastiera MIDI.

Considera questa tastiera:

{{< figure src="images/midi-keyboard-top.png" alt="Minilab 3"  >}}

1. **Tastiera**. Ogni volta che premi un tasto bianco o nero, la tastiera invierà un comando `NOTE ON` e indicherà quale
   nota deve iniziare a suonare. Ogni volta che rilasci il tasto, la tastiera invierà un comando `NOTE OFF` e riporterà
   le stesse informazioni relative alla nota e al canale.

2. **Encoder**. Si tratta di manopole rotanti tipicamente utilizzati per controllare vari parametri dei sintetizzatori
   hardware e software. Il più delle volte li userete per i controlli dei sintetizzatori software come questi:
   {{< figure src="images/soft-synth-encoders.png" alt="Encoder in TAL Noisemaker" caption="Encoder in TAL Noisemaker:frequenza, quantità, fase, ecc." >}}
   Gli encoder possono avere limiti fisici minimi e massimi che impediscono di ruotarli ulteriormente;
   questi sono solitamente chiamati encoder assoluti.
   Tuttavia, gli encoder infiniti, quelli che non hanno tali limiti fisici, stanno diventando la norma negli ultimi
   tempi.

   Quando si ruota un encoder in senso orario o antiorario, la tastiera MIDI invia un diverso tipo di messaggio noto
   come `Control Change` o `CC`. I messaggi CC sono identificati da numeri, ad esempio `CC21`.
   Contengono anche un nuovo valore inviato dall'encoder.

3. **Fader**. A differenza degli encoder, i fader hanno sempre un limite fisico per il valore minimo e massimo.
   Sono tipicamente utilizzati per controllare il mixer in una workstation audio digitale o controlli come ADSR
   in sintetizzatori e campionatori:
   {{< figure src="images/soft-synth-faders.png" alt="ADSR faders" caption="ADSR faders in Surge XT" >}}
   Proprio come gli encoder, anche i fader inviano messaggi CC.

4. **Controlli trasporto**. Questi pulsanti attivano la riproduzione e la registrazione nelle workstation audio
   digitali e svolgono varie altre funzioni, come l'avanzamento rapido, il ritorno all'inizio o l'attivazione
   della modalità di riproduzione in loop. A tal fine, inviano anche loro messaggi di tipo CC.

5. Controlli **Pitch bend** e **Modulation**.
   I controlli di Pitch Bend e Modulation (Mod Wheel) su tastiere e sintetizzatori alterano rispettivamente
   l'altezza (pitch) e altri parametri sonori (modulazione) del suono, permettendo effetti espressivi come vibrato (Mod
   Wheel) o scivolamenti tonali (Pitch Bend),
   spesso assegnati a rotelle o joystick, configurabili per intervallo (es. semitoni/ottave) e parametri controllabili,
   aggiungendo dinamicità al suono.

## Come vengono inviati i messaggi MIDI

Diamo un'occhiata al pannello posteriore della stessa tastiera:
{{< figure src="images/midi-keyboard-rear.png" alt="Pannello posteriore del Minilab 3" >}}
Ciò che vedete dipende dal produttore e dal modello, ma l'idea generale è che la tastiera MIDI può inviare messaggi
tramite le porte MIDI OUT (**1**) e USB (**3**).

La porta MIDI OUT viene solitamente utilizzata per collegare la tastiera direttamente a un sintetizzatore hardware
o a un campionatore. È anche possibile collegarla alla porta MIDI IN dell'interfaccia audio, se presente.

La porta USB viene solitamente utilizzata per collegare la tastiera direttamente al computer.

La porta di controllo (**2**) sul pannello posteriore sopra è tipicamente utilizzata per collegare un pedale sustain
(`CC64`) o un pedale di espressione (`CC11`).
I messaggi provenienti dal pedale sustain e dal pedale di espressione vengono trasmessi alla workstation audio digitale
tramite la porta MIDI OUT o la porta USB.

## Come Ardour riproduce i file MIDI

Se le tastiere MIDI non producono suoni, chi lo fa?

Se non specificato diversamente, Ardour creerà automaticamente ogni nuova traccia MIDI con un sintetizzatore virtuale.
Ciò significa che sentirai sempre le istruzioni di elaborazione della traccia MIDI provenienti dall'ingresso
(come la tua tastiera MIDI) o dalla traccia MIDI e riprodurrai il suono.

## Cosa sono i canali MIDI?

Un ultimo concetto che devi imparare qui è quello dei canali MIDI. Considera questa configurazione.
Hai una tastiera MIDI collegata a un sintetizzatore hardware. Il sintetizzatore può memorizzare preset, o patch,
ciascuno dei quali produce un suono unico. Essendo un sintetizzatore multi-voce, può riprodurre suoni diversi
contemporaneamente, ad esempio una parte di basso e una parte solista simultaneamente.
Per farlo, richiede che le istruzioni per ciascuna patch arrivino separatamente, attraverso percorsi indipendenti
chiamati canali MIDI.

## Ulteriori letture

Se desideri sapere come utilizzare in modo efficiente le apparecchiature MIDI con Ardour, leggi il capitolo
[Dispositivi MIDI](/it/using-your-gear/midi-devices).

**Continua**

Nel prossimo capitolo, avvieremo Ardour su Ubuntu Linux e impareremo le basi dell'interfaccia utente.
