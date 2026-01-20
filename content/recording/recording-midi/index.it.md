---
title: Registrare MIDI
description: Come registrare MIDI con Ardour
weight: 2
cascade:
  type: docs
---

Esistono diversi modi per importare MIDI in una traccia MIDI in Ardour oltre all'importazione di un file MIDI esistente.
Vediamoli uno per uno.

## Registrazione in tempo reale

L'opzione più ovvia per registrare MIDI in Ardour è collegare una tastiera MIDI direttamente all'interfaccia audio o al 
computer e registrare tutto ciò che si suona. È un processo piuttosto semplice:

1. Seleziona una traccia MIDI esistente su cui registrare o creane una nuova.

2. Armare la traccia per la registrazione cliccando sul pulsante rosso nell'intestazione della traccia o premendo **Shift+B**.

3. Attivare la modalità di registrazione cliccando sul pulsante rosso nel pannello di controllo o premendo **Shift+R**.

4. Avvia il trasporto premendo la barra **spazio** per iniziare la registrazione.

{{< figure src="it/real-time-recording.png" alt="Registrazione su una regione MIDI" >}}

5. Interrompi il trasporto premendo la barra **Spazio** una volta finito di suonare.

> [!TIP]
> Quando registri una parte da una tastiera MIDI, dovresti essere in grado di ascoltare ciò che stai suonando.
> Se tutto è collegato correttamente e tuttavia non riesci a sentire alcun suono, controlla su quale canale MIDI è 
> impostata la tua tastiera MIDI.
> È possibile che si tratti di un canale diverso dal 1 e che lo strumento virtuale scelto non abbia patch caricate per 
> quel canale.

<!-- ### Avvio della registrazione da una tastiera MIDI

Molte tastiere MIDI sono dotate di una serie di pulsanti di trasporto per riavvolgere, avanzare rapidamente, riprodurre 
e registrare. Ciò è particolarmente utile nei casi in cui è necessario registrare più take e non si desidera passare 
continuamente dalla tastiera del computer alla tastiera MIDI.

Premendo un pulsante di trasporto viene inviato un evento MIDI Control Change (CC), ma una DAW come Ardour deve 
interpretare tale evento CC. Pertanto, Ardour è dotato di mappe MIDI in cui un evento CC

Per impostazione predefinita, Ardour è configurato in modo tale che l'input MIDI segua la selezione della traccia MIDI. 
Ciò significa che quando si dispone di più tracce MIDI che possono tutte produrre suoni quando si preme un tasto sulla 
tastiera MIDI,
Configura i dispositivi MIDI nelle Preferenze: imposta "segui traccia" globalmente e per singolo dispositivo. -->

## Inserimento a passi

La modalità di registrazione _inserimento a passi_ è utile quando una parte è troppo complessa per essere registrata in 
tempo reale (si pensi ad arpeggi veloci di note da 1/128 a 140 bpm). Invece di cercare di eseguire quella parte dal vivo 
quando sei sotto pressione, puoi usare la tastiera per inserire le note una alla volta, al tuo ritmo. Ardour registrerà 
le note che suoni una alla volta spostando il cursore alla fine di ogni nota attendendo la successiva.

{{< figure src="it/step-entry-duration-preview.png" alt="Anteprima della durata delle note nell'inserimento a passi" >}}

Per abilitare questa modalità, clicca con il tasto destro del mouse sul pulsante **Registra** di una traccia MIDI e 
seleziona _Inserimento a passi_. Si aprirà la finestra di dialogo _Inserimento a passi_.

{{< figure src="it/step-entry-dialog.svg" alt="La finestra di dialogo inserimento a passi" >}}

Ecco le opzioni:

<<<<<<< HEAD
1. Modalità di inserimento degli accordi: è possibile suonare più note contemporaneamente, che verranno registrate come 
un accordo e appariranno una sopra l'altra sul pianoroll. 
2. Preset di lunghezza delle note, da una nota intera a 1/64.
3. Preset di note puntate 
4. Preset di pause 
5. Preset di velocità, dal pianississimo al fortississimo 
6. Ingressi numerici per dati MIDI: canale, lunghezza di una nota, velocità, ottava (per l'inserimento da tastiera normale), 
banco MIDI e programma MIDI (in modo da poter utilizzare, ad esempio, un campione pizzicato in una libreria di campioni 
anziché un arco).

Ora hai tre opzioni:

1. Clicca sui tasti del pianoforte con il mouse
2. Premere i tasti sulla tastiera del computer
3. Utilizza una tastiera MIDI collegata all'ingresso della traccia.

Per l'opzione 2, la fila centrale dei tasti con le lettere è utilizzata per i tasti bianchi, mentre la fila superiore è 
utilizzata per i tasti neri:

{{< figure src="it/keyboard-map-to-piano-keys.svg" alt="Mappa della tastiera per i tasti del pianoforte" >}}

Tutte le impostazioni visualizzate nella finestra di dialogo _inserimento a passi_ si applicano alle opzioni 1 e 2. 
Per ogni nota inserita successivamente, è possibile impostare:

- Durata, da una nota intera a 1/64 (o qualsiasi durata quando si utilizza la casella di selezione 1/Nota), con 
immissione opzionale degli accordi
- Canale
- Velocità (i tasti da "z" a "," sulla tastiera italiana (IT) possono essere utilizzati come scorciatoia)
- Ottava (i tasti da 1 a 9 possono essere utilizzati come scorciatoie)

È anche possibile inserire delle pause, il che significa sostanzialmente che Ardour sposta il cursore di modifica verso 
destra della lunghezza della nota attualmente selezionata.

Quando si utilizza una tastiera MIDI per l'inserimento a passi, solo una parte delle impostazioni nella finestra di 
dialogo è applicabile. Ardour utilizzerà la lunghezza della nota definita, ma non terrà conto delle impostazioni di 
velocità, canale o ottava e utilizzerà qualsiasi dato inviato dalla tastiera.

Proviamo a usarlo e creiamo una semplice linea di basso che potremo poi utilizzare nel progetto.

1. Crea una nuova traccia, seleziona Surge XT come strumento virtuale.

2. Apri il navigatore _Factory Patches_ e seleziona _Bass 2_ in _Basses_.

{{< figure src="it/surge-xt-bass-patch.png" alt="Selezione di una patch per basso in Surge XT" >}}

3. Assicurati che il cursore di riproduzione si trovi all'inizio della sessione, in modo che corrisponda all'inizio 
della prima battuta di tutte le tracce di percussioni nel progetto corrente.

4. Aprire la finestra di dialogo _inserimento a passi_ (Inserimento fase).

5. Selezionare la durata della nota 1/8 e l'ottava 3

6. Sulla tastiera del computer, premi in sequenza D, G, H, G, D, G, U, J, H, 4, A, S, A, 3, H, 4, A, E, D.

Ora hai una linea di basso di base che puoi ripetere.

{{< figure src="it/bassline.png" alt="Linea di basso iniziale" >}}

## Disegnare note sul piano roll

Forse il modo più semplice per aggiungere note a una traccia MIDI è disegnarle sull'area di lavoro.

1. Crea una traccia MIDI.

2. Passa alla modalità _Disegna_ premendo **D** o facendo clic sul pulsante corrispondente nella barra degli strumenti.

3. Clicca e mantieni premuto sull'area di lavoro per creare una regione MIDI.

{{< figure src="en/draw-new-midi-region.gif" alt="Disegna una nuova regione MIDI" >}}

4. Posizionare il mouse nel punto in cui deve iniziare la nota, tenere premuto il tasto sinistro del mouse e trascinare 
verso destra fino alla fine della nota. Rilasciare il tasto del mouse.

{{< figure src="en/draw-new-midi-notes.gif" alt="Disegna nuove note MIDI" >}}

5. La barra degli strumenti presenta alcune impostazioni predefinite per le nuove note: durata, velocità, canale. È 
possibile modificare queste impostazioni prima di aggiungere nuove note: scegliendo un preset in un elenco a discesa o 
scorrendo la rotellina del mouse su uno dei tre elenchi a discesa.

{{< figure src="it/midi-draw-toobar.png" alt="Barra degli strumenti di disegno MIDI" >}}

6. Ripeti fino a quando non avrai scritto la melodia.

Se non sei abituato a questo tipo di inserimento delle note e ruotare mentalmente la tastiera di 90° in senso orario ti 
sembra difficile, prova a cliccare sul widget della tastiera verticale del pianoforte per ascoltare le note finché non 
ti ci abitui.

In modalità _Disegno_ è anche possibile effettuare alcune semplici modifiche: selezionare e ridimensionare singole note,
trascinarle, regolare la velocità, utilizzare il menu contestuale per eseguire varie trasformazioni.

**Continua**

Nel prossimo capitolo parleremo delle diverse modalità di registrazione tra cui è possibile scegliere.
