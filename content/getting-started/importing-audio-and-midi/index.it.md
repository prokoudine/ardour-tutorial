---
title: Importazione audio e MIDI
description: Importazione file audio e MIDI nelle tracce di Ardour
weight: 5
cascade:
  type: docs
---

È possibile riutilizzare file audio e MIDI esistenti aggiungendoli come regioni su tracce esistenti o nuove. Per farlo, 
premere la combinazione di tasti **Ctrl+I** o andare al menu `Sessione > Importa` per aprire la finestra di dialogo 
_Aggiungi media esistenti_, selezionare il file desiderato e importarlo.

{{< figure src="it/ardour8-import-existing-media-dialog.it.png" alt="Aggiungi media esistenti" >}}

Alcune impostazioni sono uguali per l'audio e il MIDI, altre sono specifiche per ciascun formato.

## Riproduzione di file esistenti

Prima di importare un file, è consigliabile assicurarsi che sia quello giusto. Sul lato destro della finestra di dialogo
_Aggiungi media esistenti_ è presente una sezione che consente di controllare le proprietà del file selezionato. Qui 
sono riportati il nome, il numero di canali, la frequenza di campionamento, il formato e la durata del file audio, 
insieme a eventuali tag che si è scelto di aggiungere al file.

Il pulsante **Riproduci** consente di ascoltare l'anteprima del file. È anche possibile selezionare 
**Riproduzione automatica** se si desidera ascoltare un file audio immediatamente dopo aver fatto clic su di esso 
nel browser dei file (senza dover premere il pulsante **Riproduci**).

Per i file MIDI, è possibile selezionare uno strumento virtuale che verrà utilizzato per riprodurre il file MIDI 
selezionato, non sarà possibile selezionare una particolare patch di sintetizzatore.

## Selezione delle tracce e del punto di inserimento

Esistono alcuni scenari comuni per l'importazione di file multimediali: importazione di più file audio come nuove tracce
e inserimento nella parte iniziale della sessione, importazione di più file audio nell'elenco delle sorgenti disponibili
per un utilizzo successivo, importazione di un file MIDI in una traccia esistente nella posizione del cursore di 
riproduzione, ecc.
Quindi ci sono due opzioni importanti qui: dove inserire una regione in generale (in quale traccia, nel caso) e in quale
punto della timeline inserirla.

L'elenco a discesa _Aggiungi files_ consente di selezionare il primo, e l'elenco a discesa _Inserisci a_ è dove scegli 
quest'ultimo.

## Inserimento nella lista delle fonti

Cominciamo con lo scenario in cui vengono importati file audio nell'elenco delle sorgenti.

> [!TIP]
> Se sul tuo disco rigido non hai file audio adatti per seguire questi passaggi, visita 
> [freesound.org](http://www.freesound.org/), dove potrai trovare un'ampia raccolta di campioni di dominio pubblico 
> sotto licenza Creative Commons in vari formati e frequenze di campionamento.

Seleziona alcuni file e nell'elenco a discesa _Aggiungi file_ scegli _nella lista sorgente_. Assicurati che l'opzione 
_Mappatura_ indichi _una regione per file_.

{{< figure src="it/ardour8-to-source-list.it.png" alt="Aggiungi all'elenco delle sorgenti" >}}

Noterai che l'opzione _Copia i file audio nella sessione_ è selezionata di default. Questo creerà una copia dei file 
importati nella cartella della sessione corrente. È più sicuro, ma occupa più spazio sul disco. Se deselezioni questa 
opzione (sconsigliato!), Ardour utilizzerà il file audio dalla sua posizione corrente sul disco rigido. In questo caso, 
se il file viene spostato in una nuova posizione, potresti incontrare dei problemi, perché Ardour non sarà in grado di 
trovarlo la prossima volta che aprirai questa sessione. **Si consiglia vivamente di lasciare questa casella selezionata 
(_Copia i file audio nella sessione_)**.

Fai clic su **Importa** per continuare.

I file importati appariranno elencati nella lista _Sorgenti_. Questa lista si trova all'estrema destra della finestra 
dell'editor. Se non la vedi, assicurati che l'opzione _Mostra la lista dell'editor_ sia selezionata nel menu _Vista_.

{{< figure src="it/ardour8-audio-imported-to-sources-list.it.png" alt="Elenco editor" >}}

Trascinando un file audio presente nell'elenco _Sorgenti_ sull'area di lavoro principale, è possibile inserirlo in una 
traccia esistente o nuova. Se lo trascini in una traccia esistente, verrà aggiunto lì. Se lo trascini nello spazio vuoto
sotto le tracce esistenti, verrà automaticamente creata una nuova traccia per accoglierlo.

Rilascia il pulsante del mouse per completare l'operazione di trascinamento. Una nuova regione verrà inserita nel punto 
esatto in cui l'hai rilasciata.

> [!TIP]
Se un file audio è selezionato nell'elenco dell'editor (cioè se è evidenziato in blu), la prossima volta che clicchi sul
> nome del file, Ardour penserà che stai cercando di rinominare la regione (il nome diventerà modificabile). 
> Probabilmente stavi solo cercando di cliccare per trascinare il file su una traccia. Per cliccare e trascinare una 
> regione precedentemente selezionata dall'elenco, è necessario puntare e cliccare nello spazio vuoto immediatamente 
> prima o dopo il nome.

Importante: assicurati sempre di posizionare le regioni stereo su tracce stereo. Se trascini un file stereo su una 
traccia audio mono, verrà utilizzato solo il canale sinistro. Nella schermata sottostante, un file stereo con canali 
sinistro e destro molto distinti è stato trascinato su una traccia stereo e su una traccia mono. Nota che nella traccia 
mono viene visualizzato (e riprodotto) solo il canale sinistro.

{{< figure src="it/ardour8_stereo_mono_comparison.it.png" alt="Confronto stereo mono" >}}

## Importazione diretta in una traccia

Come accennato in precedenza, la finestra di dialogo _Aggiungi media esistenti_ consente anche di importare file audio 
direttamente sulle tracce.

Scegli _Aggiungi files: come nuove tracce_ per creare automaticamente una nuova traccia e aggiungere il file 
selezionato. La traccia prenderà il nome dal file audio.

{{< figure src="it/ardour8-import-as-new-tracks.it.png" alt="Aggiungi come nuove tracce" >}}

Se in precedenza sono stati selezionati uno o più brani, il menu visualizzerà l'opzione aggiuntiva 
_Aggiungi file: ai brani selezionati_ per aggiungere un file audio al brano già selezionato.

Nota che se si importa un file MIDI multitraccia, Ardour creerà sempre una nuova traccia per ogni traccia esistente nel 
file MIDI e le mapperà di conseguenza.

Quando aggiungi file come nuove tracce, tieni presente che l'opzione _Mappatura_ ti consente di scegliere tra 
_una traccia per canale_ e _una traccia per file_. Ai fini di questo tutorial, scegli _una traccia per file_, altrimenti
i canali sinistro e destro di un file stereo verranno suddivisi in due tracce separate.

In alternativa, è possibile trascinare i file audio e MIDI da un file manager alla timeline per importarli.

## Scegliere il punto di inserimento

Quando si utilizza una delle opzioni sopra indicate (_Aggiungi come nuove tracce_ o 
_Aggiungi alle tracce selezionate_), è necessario specificare anche la posizione della traccia in cui si desidera 
inserire la nuova regione. Nella schermata sottostante, abbiamo selezionato _inizio sessione_.

{{< figure src="it/ardour8-insert-point-list.it.png" alt="Punto di inserimento" >}}

La regione appare in una nuova traccia nella sessione. La nuova traccia riceve automaticamente il nome del file audio 
importato.

Il file audio apparirà anche nell'elenco _Regioni_, in modo da poter essere inserito anche in altre tracce trascinandolo 
con il mouse.

## Rimuovere regioni dalle tracce

Per rimuovere una regione da una traccia, è possibile selezionarla con il mouse e utilizzare la funzione *Taglia* dal 
menu, il tasto **Control** (o **Apple**) e il tasto **X**, il tasto **Canc** o la combinazione di tasti 
**Fn + Backspace** (utilizzata, ad esempio, su una tastiera di laptop che non dispone di un tasto **Canc** dedicato).

> [!WARNING]
> **Salva spesso il tuo lavoro!** La scorciatoia **Control + S** è tua amica. Usala spesso, sempre.

## Continua

Ora che hai del materiale nella tua sessione, potresti voler 
[personalizzare la timeline](/it/getting-started/setting-up-the-timeline/) per adattarla meglio alle tue esigenze o passare
alla [registrazione](/it/recording/) di nuovo materiale in tempo reale.