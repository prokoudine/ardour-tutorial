+++
title = "Finestra dell'editor"
description = "Nozioni di base sulla finestra dell'editor di Ardour"
chapter = false
weight = 1
+++

Quando crei una nuova sessione, Ardour apre una nuova finestra vuota chiamata finestra _Editor_. La finestra _Editor_ è
la finestra più importante in Ardour, è qui che si organizzano le tracce, si importano e si modificano i media sulla 
timeline e si controlla l'automazione dei plugin per effetti creativi e mixaggio.

Diamo un'occhiata alle parti principali della finestra _Editor_:

{{< figure src="it/ardour8-editor-window-sections.png" alt="Sezioni della finestra dell'editor" >}}

Eccoli:
1. Barra degli strumenti specifica dell'editor 
2. Timeline 
3. Tracce e bus 
4. Panoramica del progetto 
5. Mixer 
6. Tracce e bus, sorgenti, regioni, clip, ecc.

Diamo loro una rapida occhiata.

## Barra degli strumenti specifica dell'editor

### Modalità di modifica e modalità cursore

{{< figure src="it/ardour8-edit-modes-cursor-modes.png" alt="Modalità di modifica e modalità cursore" >}}

I controlli _Modalità di modifica_ e _Modalità cursore_ definiscono il comportamento dell'area di lavoro principale e 
le diverse funzioni che il cursore può avere. Nel menu a tendina sono disponibili tre modalità di modifica: 
_Libero_, _Scarto_ e _Bloccato_. Ne parleremo nel capitolo [Modifica delle sessioni](../../../editing-sessions/).

A destra del pulsante **Intelligente** si trovano le _Modalità cursore_:

- Modo _Intelligente_ (scorciatoia **3** scorciatoia)
- Modo _Mano_ (scorciatoia **G**)
- Modo _Intervallo_ (scorciatoia **R**)
- Modo _Forbice_ (scorciatoia **C**)
- Modo _Elastico_ (scorciatoia **T**)
- Modo _Griglia_ (scorciatoia **Y**)
- Modo _Matita_ (scorciatoia**D**)
- Modo _Modifica Interna_ (scorciatoia **E** )

Le modalità cursore sono trattate nella sezione [Lavorare con le regioni](../../../editing-sessions/working-with-regions/). 
Le ultime due sono trattati nel capitolo **Utilizzo dell'automazione**.

La modalità _Intelligente_ è in realtà una combinazione delle modalità _Mano_ e _Intervallo_. Quando è abilitata, il 
mouse si comporta come se fosse in modalità _Intervallo_ nella metà superiore di una regione e in modalità _Mano_ nella 
metà inferiore.

### Opzioni di aggancio

La barra degli strumenti _Opzioni di aggancio_ consente di selezionare le unità della griglia visibili che influenzano 
l'aggancio durante la modifica delle regioni e, nel caso delle regioni MIDI, il loro contenuto.

{{< figure alt="Opzioni di aggancio e controlli di spostamento" src="it/ardour8-snap-options-and-nudge-controls.png" >}}

Ecco un confronto tra la griglia da 1 battuta, la griglia da 1/8 di nota e la griglia da 1/32 di nota:

{{< figure alt="Griglia da 1 battuta, griglia da 1/8 di nota e 1/32 di nota" src="it/ardour8-snapping-1-bar-to-1-32-note.png" >}}

Per ulteriori dettagli, consultare le sezioni 
[Impostazione del tempo](../../../editing-sessions/setting-up-time-signature/), 
[Utilizzo degli intervalli](../../../editing-sessions/using-ranges/) e
[Lavorare con le regioni](../../../editing-sessions/working-with-regions/).

### Opzioni di visualizzazione traccia e zoom

La parte estrema destra della barra degli strumenti contiene le opzioni di visualizzazione traccia e zoom.

{{< figure src="it/ardour8-view-and-zoom-options.png" alt="Opzioni di visualizzazione e zoom" >}}

Le opzioni di visualizzazione delle tracce consentono di selezionare il numero di tracce da visualizzare 
contemporaneamente ed è anche possibile ridurre o espandere lo zoom verticale delle tracce e dei bus selezionati.

Le opzioni di zoom consentono di ingrandire e rimpicciolire gradualmente l'immagine, nonché di ridurre l'intero progetto  
per essere visualizzato in orizzontale.

> [!TIP]
> Utilizza le scorciatoie **=** (il segno di uguale sulla tastiera principale) per ingrandire e **-** 
> (il tasto trattino sulla tastiera principale) per rimpicciolire.

Il menu a tendina controlla il _focus dello zoom_. Definisce il punto focale delle operazioni di zoom. 
Prova ad ingrandire e rimpicciolire con un focus dello zoom diverso ogni volta. Ad esempio, scegliendo _Testina_ 
lo zoom si comporterà in relazione alla posizione del _Testina_. _Mouse_ prenderà come riferimento la posizione corrente
del mouse, e così via.

## Timeline

Cliccando con il tasto destro sui nomi dei righelli si aprirà un menu con tutti i righelli disponibili. Puoi 
deselezionare i righelli che non ti servono per risparmiare spazio sullo schermo. Maggiori informazioni su queste 
operazioni sono disponibili nei capitoli [Impostazione della timeline](../../setting-up-the-timeline/) e 
[Impostazione del tempo musicale](../../../editing-sessions/setting-up-time-signature/).

{{< figure src="it/ardour8-overview-rulers.png" alt="Timeline Rulers" >}}

## Tracce e Bus

Appena sotto i righelli vengono visualizzate le tracce e i bus. Nell'esempio sottostante, è possibile vedere un bus 
chiamato _Master_ e una traccia chiamata _Voiceover_. _Voiceover_ contiene anche una regione che rappresenta un file 
audio con la sua forma d'onda. Maggiori informazioni sulle tracce e sui bus sono disponibili nel capitolo 
[Creazione traccie o e bus](../../creating-tracks-and-busses/).

{{< figure src="it/ardour8-track.png" alt="Tracce e bus" >}}

## Panoramica del progetto

Questa è una panoramica dell'intera sessione.

{{< figure src="it/ardour8-overview-panel.png" alt="Panoramica del progetto" >}}

Ci sono due casi d'uso principali:

1. Navigazione all'interno del progetto. Basta selezionare il rettangolo e trascinarlo per eseguire una panoramica 
dell'intero progetto.

2. Modifica dello zoom e della posizione della parte visibile del progetto. Afferra il lato sinistro o destro del bordo 
del rettangolo visibile e trascinalo verso l'interno o verso l'esterno per ingrandire o rimpicciolire rispettivamente.

## Mixer dell'editor

L'Editor Mixer si trova nella parte sinistra della finestra _Editor_. Visualizza la striscia del mixer della traccia o 
del bus attualmente selezionato. Viene utilizzato principalmente per controllare il volume, i plugin e il routing della 
traccia o del bus a cui corrisponde.

{{< figure src="it/ardour8-editor-mixer.png" height="100px" >}}

È possibile attivare o nascondere l'Editor Mixer cliccando sul menu `Vista > Mostra il mixer dell'editor` 
(scorciatoia **Shift + E**). Questo Mixer è descritto nel capitolo 
[Utilizzo della barra del Mixer](../../../mixing-sessions/the-mixer-strip/).

## Elenco dell'editor

Lo spazio sulla destra della finestra _Editor_ di Ardour può avere 8 diverse funzioni, a seconda della scheda 
selezionata: _Tracce e bus_, _Sorgenti_, _Regioni_, _Clips_, _Arrangiamento_, _Istantanee_, _Tracce e gruppi_ e 
_Intervalli e marcatori_.

{{< figure src="it/ardour8-sources-list.png" alt="Elenco dell'editor" >}}

- _Tracce e bus_ fornisce una panoramica di tutte le tracce e i bus presenti nel progetto, compresi quelli invisibili. 
Questa scheda è trattata nel capitolo [Disposizione delle tracce](../../../editing-sessions/arranging-tracks/).
- _Sorgenti_ elenca tutti i file presenti sul disco importati nella sessione.
- _Regioni_ è un elenco di tutte le registrazioni della sessione. È possibile riutilizzare sia le sorgenti che le 
regioni trascinandole sull'area di lavoro. Maggiori informazioni sulle regioni sono disponibili nel capitolo 
[Lavorare con le regioni](../../../editing-sessions/working-with-regions/).
- _Clips_ elenca le clip audio e MIDI riutilizzabili che possono essere trascinate nella timeline o nella griglia delle 
clip nella pagina _Cue_.
- _Arrangiamento_ elenca tutte le sezioni di arrangiamento disponibili definite dall'utente (come strofa, ritornello, 
bridge ecc.) e consente di copiarle e incollarle rapidamente.
- _Istantanee_ sono versioni della stessa sessione salvate in momenti particolari, vengono descritte nel capitolo 
[Salvataggio di uno snapshot](../../../saving-sessions/saving-a-snapshot/).
- _Intervalli e marcatori_ è una panoramica di tutti i marcatori presenti nel progetto, con un'interfaccia utente 
intuitiva che consente di modificarli facilmente.

**Continua**

L'argomento successivo è la finestra del _Mixer_, dove ci si concentra sul far risaltare gli strumenti in una canzone.