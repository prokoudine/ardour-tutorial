---
title: Utilizzo della funzione MIDI Learn
description: Come controllare Ardour con MIDI Learn
weight: 4
cascade:
  type: docs
---

{{< details title="Guarda il video" closed="true" >}}

{{< youtube USa4HMZS27k >}}

{{< /details >}}

Ardour consente di creare collegamenti per sessione tra un dispositivo MIDI e i controlli nativi del programma, come i 
fader di guadagno. Questa funzione è comunemente chiamata MIDI learn.

Un esempio molto comune di binding è l'assegnazione di un encoder della tastiera MIDI a un LFO o a un filtro in un 
sintetizzatore virtuale, oppure l'assegnazione di un fader della tastiera MIDI a un fader di guadagno in una traccia.

## Come apprendere un'associazione

1. Crea una nuova sessione Ardour o carica una esistente. Assicurati che il tuo dispositivo MIDI sia collegato alla 
porta di controllo. Puoi farlo in **Preferenze**, nella finestra di dialogo **Mostra impostazioni protocollo** per la 
piattaforma di controllo **MIDI generic**.

{{< figure src="it/midi-learn-control-protocol-settings.png" alt="Mostra impostazioni protocollo" >}}

In alternativa, è possibile eseguire la mappatura nella finestra di dialogo **Connessioni MIDI**. La porta **MIDI in** 
del controller nella scheda **Hardware** nella parte superiore deve essere collegata alla porta 
**Generic MIDI Control In** in **Ardour Misc** sulla destra. Se non è presente un punto verde nella loro sezione 
trasversale, fare clic per crearne uno.

{{< figure src="it/midi-learn-midi-connection-manager.png" alt="Connessioni MIDI" >}}

---
2. Aggiungi una nuova traccia con un sintetizzatore virtuale. Questa guida presuppone l'utilizzo del TAL-NoiseMaker.
---
3. Seleziona l'intestazione della traccia, posiziona il mouse sul fader del guadagno e premi **Ctrl+tasto centrale**. 
Verrà visualizzato un suggerimento con il messaggio "operate controller now".

{{< figure src="it/midi-learn-operate-controller-now.gif" alt="Operate Control Now" >}}

---
4. Tocca il fader sulla tua tastiera MIDI. Verrà immediatamente mappato sul fader di guadagno in quella traccia. 
Ora è possibile utilizzarlo.
---
5. Ora mappiamo un altro encoder al parametro LFO1 rate in TAL-NoiseMaker. Clicca con il tasto destro sul nome del 
plugin e seleziona **Edit with generic controls** (Modifica attraverso i controlli generici).

{{< figure src="it/midi-learn-edit-with-generic-controls.png" alt="Modifica attraverso i controlli generici" >}}

---
6. Ora, **Ctrl+tasto centrale** e tocca l'encoder. Dopodiché, puoi aprire la finestra normale del plugin e vedrai il 
controllo ruotare mentre utilizzi l'encoder.

{{< figure src="it/midi-learn-plugin-generic-operate-controller-now.gif" alt="Operate Control Now" >}}

Ci sono altri due modi per ottenere lo stesso risultato:

1. **Fader nei controlli in linea**. Facciamo clic con il pulsante destro del mouse sul plugin, andiamo su 
**Controlli in linea** e selezioniamo **LFO1 Amount**. Ora passa con il mouse sul controllo in linea appena aggiunto 
nella barra del mixer, **Ctrl+tasto centrale**, e ruota un altro encoder.

2. **Fader sulle corsie automatizzate**. Clicca su **A** nell'intestazione della traccia, seleziona 
`Automazione processori > TAL Noisemaker > Filter Cutoff`. Quindi, passa con il mouse sul fader del parametro del 
plugin, **Ctrl+tasto centrale**, tocca l'encoder.
---
Poiché i plugin complessi tendono ad avere una miriade di parametri, a volte è difficile navigarli nella vista dei 
controlli generici. In tal caso è meglio abilitare questa opzione nel menu principale: 
`Modifica > Mostra la corsia di automazione quando si modifica`.

Ora, quando apri l'interfaccia utente personalizzata del plugin e tocchi un controllo, Ardour aggiungerà automaticamente
una traccia di automazione per quel controllo. A questo punto puoi premere **Ctrl+tasto centrale** e muovere un encoder 
o un fader.

## Come eliminare un'associazione

Per annullare un collegamento, posiziona nuovamente il cursore su un controllo nell'interfaccia utente, premi 
**Ctrl+tasto centrale**, quindi fai clic con il tasto sinistro del mouse sul messaggio "usa controllo ora" per farlo 
scomparire. Tutto qui.

## Quali sono i controlli MIDI-apprendibili

Ardour espone solo un sottoinsieme dei controlli disponibili nell'interfaccia utente. L'idea generale è che dovresti 
poter utilizzare MIDI learn per funzioni piuttosto specifiche della sessione. Questo perché potresti voler mappare lo 
stesso controllo a parametri diversi di strumenti virtuali diversi anche all'interno della stessa sessione mentre 
lavori al tuo progetto.

L'elenco dei controlli supportati include:

- controlli di trasporto, 
- tutti i fader e i panner,
- pulsanti mute e solo,
- trim di ingresso nelle tracce e nei bus,
- selettori **Mono**, **Dim** e **Mute**,
- tutti i pulsanti rotativi, ad esempio **Solo Boost** nella sezione monitor.

## Modalità tastiera

Alcune tastiere MIDI inviano una serie diversa di messaggi di controllo dagli stessi controlli a seconda della modalità.

Ad esempio, Arturia MiniLab 3 ha una modalità standard chiamata Arturia, ideale per utilizzare encoder e fader per 
controllare i plugin. È disponibile anche una modalità DAW (digital audio workstation), ideale per controllare elementi 
quali fader di guadagno e panner.

## MIDI learn vs mappature MIDI

I collegamenti MIDI Learn sostituiscono qualsiasi collegamento definito nella mappatura MIDI scelta. Quindi, anche se un
encoder o un fader è già mappato su qualcosa nella mappatura MIDI che utilizzi, puoi ridefinirlo temporaneamente con 
MIDI Learn.

Come ricorderete, tutti i collegamenti effettuati con MIDI Learn sono specifici per ogni sessione. Ciò significa che 
qualsiasi collegamento creato in questo modo verrà memorizzato come parte di una sessione specifica anziché globalmente.
Se desiderate che questi collegamenti siano permanenti, avete due opzioni.

Se i tuoi collegamenti includono mappature tra controlli hardware e parametri dei plugin, dovresti salvare la tua 
sessione come modello per poterla riutilizzare. In questo modo otterrai un modello che contiene tutte le tracce e i 
plugin predefiniti, tutti i collegamenti tra questi e l'hardware e tutti i collegamenti che hai creato con MIDI Learn.

Se non ci sono collegamenti tra i controlli hardware e i parametri dei plugin, è meglio creare una mappatura MIDI. 
Guarda [questo video tutorial](https://www.youtube.com/watch?v=B9t-ZubUGHM) per maggiori dettagli su come farlo.

**Continua**

La sezione successiva illustra le nozioni di base relative all'uso delle varie piattaforme di controllo.