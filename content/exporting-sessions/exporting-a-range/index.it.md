---
title: Esportazione di un intervallo
description: Come esportare intervalli in Ardour
weight: 3
cascade:
  type: docs
---

Come già appreso nei capitoli precedenti, l'esportazione di una regione isolata non esporta tutte le modifiche apportate
a quella regione. Per esportare modifiche quali panoramica, automazione dei fader ed effetti dei plugin, è necessario 
esportare un intervallo o l'intera sessione. 

## Esportazione di un intervallo 

Per esportare un intervallo, procedere come segue:

1. Clicca sul pulsante **Modalità intervallo** (scorciatoia **R**)

{{< figure src="it/ardour8-range-edit-mode.png" alt="Modalità intervallo" >}}

2. Seleziona un intervallo:

{{< figure src="it/ardour8-exporting-range-1.png" alt="Selezionare un intervallo" >}}

3. Clicca con il tasto destro del mouse sull'intervallo e seleziona _Esporta intervallo_ dal menu:

{{< figure src="it/ardour8-exporting-range-2.png" alt="Esporta intervallo nel menu" >}}

Si aprirà la finestra di dialogo _Esporta_ descritta nel capitolo [Esportazione delle sessioni](../exporting-a-session).
Scegli le opzioni desiderate e fai clic su **Esporta**. L'intervallo verrà esportato e salvato come file audio.

### Che cos'è esattamente un intervallo?

Definire un intervallo significa semplicemente specificare un punto iniziale e uno finale nel tempo. Il display 
**Selezione** in basso a destra sotto la lista dell'editor mostra l'ora di inizio e di fine dell'intervallo selezionato,
nonché la sua durata.

{{< figure src="it/ardour8-range-duration.png" alt="Durata dell'intervallo" >}}

L'intervallo creato con il metodo sopra descritto scomparirà non appena si clicca al di fuori di esso.

Il comando _Esporta intervallo_ esporterà tutto ciò che viene riprodotto attraverso il bus _Master_, esattamente come 
viene riprodotto nella sessione. Se uno qualsiasi dei brani ha i pulsanti **Muto** o **Solo** attivati, ciò influirà 
anche sui brani che saranno udibili nel file esportato.

### Come creare un marcatore di intervallo e quindi riselezionarlo

I marcatori di intervallo sono essenzialmente due marcatori di posizione raggruppati insieme per contrassegnare l'inizio
e la fine di una sezione sulla timeline. I marcatori di intervallo hanno questo aspetto:

{{< figure src="it/ardour8-range-markers.png" alt="Marcatori di intervallo" >}}

È possibile utilizzare gli indicatori di intervallo per "segnalare" uno o più intervalli che è necessario ricordare o 
utilizzare nuovamente in seguito. Ecco come procedere.

 
1. Effettuare una selezione di intervallo in modalità _Intervallo_ o in modalità _Mano_ con l'opzione _Intelligente_ 
abilitata.

2. Crea indicatori di intervallo in uno dei seguenti modi:

* Fai clic con il pulsante destro del mouse su una selezione di intervalli e scegli _Aggiungi marcatori di intervallo_.
* Dalla timeline, clicca con il tasto destro dello mouse sullo spazio orizzontale _Marcatori di intervallo_ e seleziona 
_Intervallo_.
* Da una o più regioni selezionate, fare clic con il pulsante destro del mouse sulla regione e scegliere 
_Aggiungi marcatore di intervallo_ (se è selezionata una sola regione) oppure 
_Aggiungi marcatore di intervallo per regione_ (se sono selezionate più regioni).

3. Clicca in un punto qualsiasi al di fuori dell'intervallo selezionato per annullarlo.

4. Fai clic con il pulsante destro del mouse su uno dei due indicatori di selezione dell'intervallo sulla timeline e 
scegli l'opzione di menu _Seleziona intervallo_. La selezione dell'intervallo verrà ripristinata.

{{< callout type="info" >}}
È possibile cancellare tutti i marcatori di intervallo esistenti facendo clic con il pulsante destro del mouse sull'area
_Marcatori di intervallo_ della timeline e selezionando _Cancella tutti gli intervalli_.
{{< /callout >}}

## Continua

Ora sapete come esportare regioni isolate, intervalli selezionati dalla vostra sessione o l'intera sessione come mix 
stereo. L'ultima sezione di questo tutorial spiega come salvare sessioni, istantanee e modelli.

Successivo: [Salvare una sessione](../../saving-sessions/saving-a-session/)
