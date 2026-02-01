---
title: Utilizzo dell'automazione
description: Come creare e modificare l'automazione in Ardour
weight: 8
cascade:
  type: docs
---

L'_automazione_ è un modo per modificare dinamicamente i parametri di elaborazione audio nel tempo.

Finora abbiamo utilizzato valori fissi per vari parametri delle nostre tracce, ad esempio un fader di traccia impostato 
su -3,0 dB o un panner mono impostato al 100% a sinistra. Questi valori fissi si applicano all'intera traccia per tutta 
la sessione.

Ma cosa succede se desideri che questi valori cambino nel tempo in modo predeterminato? Ad esempio, potresti voler 
ridurre gradualmente il guadagno di una traccia nell'arco di venti secondi. Oppure potresti voler spostare un suono da 
sinistra a destra nell'arco di due secondi.

Questo risultato si ottiene grazie all'automazione. Il fader, il panning e tutti i parametri dei plugin utilizzati in 
quella traccia possono essere automatizzati. Un parametro automatizzato viene visualizzato sotto la traccia principale 
nella propria _traccia di automazione_. I dati di automazione sono rappresentati visivamente come una 
_linea di automazione_, composta da una serie di _punti di automazione_. Ecco come appare una traccia con automazione:

{{< figure alt="Tipica linea di automazione" src="it/ardour8-automation-fader-1.png" >}}

Nell'immagine sopra, la traccia di automazione denominata _Fader_ è associata alla traccia principale denominata 
_kick_. La linea di automazione controlla le variazioni del fader (volume) nel tempo.

## Creazione di una linea di automazione del fader

Creiamo una semplice automazione del fader. Clicca sul pulsante **A** della traccia scelta. Apparirà un menu in cui 
potrai selezionare il parametro che desideri automatizzare. Scegli _Fader_.

{{< figure alt="Scegli Fader" src="it/ardour8-automation-button.png" >}}

Apparirà quindi una barra di automazione. Seleziona la modalità _Matita_ (scorciatoia **D**):

{{< figure alt="Modalità matita" src="it/ardour8-edit-modes-d.png" >}}

Ora è possibile creare punti di automazione facendo clic in qualsiasi punto della corsia di automazione. Una linea di 
automazione unisce i punti di automazione aggiunti. Il numero giallo (-18,72 dB nell'immagine sottostante) indica il 
livello di guadagno per il punto di automazione selezionato.

{{< figure alt="Indicazione del valore del punto di automazione" src="it/ardour8-automation-fader-2.png" >}}

È possibile tracciare liberamente linee di automazione nella modalità matita. Basta cliccare, tenere premuto e tracciare
una linea di automazione libera:

{{< figure alt="Disegnare liberamente in modo automatico, prima di rilasciare il pulsante del mouse" src="en/ardour8-draw-automation-freely-pre-release.png" >}}

Una volta rilasciato il pulsante del mouse, vedrai molti punti di controllo dell'automazione, perché Ardour cerca di 
conservare il movimento esatto che hai fatto quando hai tracciato la linea.

{{< figure alt="Disegnare in modo automatico, dopo aver rilasciato il pulsante del mouse" src="en/ardour8-draw-automation-freely-post-release.png" >}}

Lo si può vedere quando si ingrandisce l'immagine:

{{< figure alt="Disegno automatico libero, ingrandito" src="en/ardour8-draw-automation-freely-zoomed.png" >}}

È anche possibile premere **Ctrl** e cliccare per creare linee rette:

{{< figure alt="Disegno di segmenti rettilinei di linee di automazione, pre-rilascio" src="en/ardour8-draw-automation-lines-pre-release.png" >}}

Questo creerà la seguente linea di automazione:

{{< figure alt="Disegno di segmenti rettilinei di linee di automazione, post-rilascio" src="en/ardour8-draw-automation-lines-post-release.png" >}}

È anche possibile combinare il disegno automatico libero con il disegno di linee. Basta premere **Ctrl** quando si 
desidera disegnare un segmento rettilineo e rilasciare il tasto quando il segmento rettilineo deve terminare, quindi 
continuare a disegnare una linea libera:

{{< figure alt="Una combinazione di segmenti liberi e diritti" src="en/ardour8-draw-automation-freely-with-lines-pre-release.png" >}}

### Stati di automazione

La curva di automazione non verrà riprodotta finché non si imposta lo stato di automazione su _Leggi_.

{{< figure alt="stato dell'automazione" src="it/ardour8-automation-fader-3.png" >}}

**Manuale**
: Quando è impostato su _Manuale_, la traccia ignorerà qualsiasi dato di automazione. Verrà riprodotta semplicemente con
il volume impostato sul fader. In questa modalità, è possibile spostare manualmente il fader della traccia per impostare
un nuovo livello fisso. Questo è il comportamento predefinito di una traccia quando viene creata per la prima volta.

**Leggi**
: Quando è impostato su _Leggi_, la traccia modificherà automaticamente i livelli di guadagno seguendo la curva di 
automazione tracciata nella linea di automazione. Non sarà più possibile spostare manualmente il fader della traccia. 
Durante la riproduzione, vedrai il fader della traccia muoversi su e giù in base alla curva.

**Scrivi**
: Questa modalità registra continuamente le modifiche apportate dall'utente al parametro automatizzato durante la 
riproduzione, creando una linea di automazione. Ad esempio, è possibile avviare la riproduzione e quindi apportare 
modifiche in tempo reale al guadagno utilizzando il fader della traccia. Tutte le modifiche apportate verranno scritte 
(registrate) come una linea di automazione, che quindi potrai riprodurre in un secondo momento riportando la modalità di
automazione su _Leggi_.

**Tocco**
: Questa modalità è simile alla modalità _Scrivi_, ma non sovrascriverà i dati di automazione esistenti a meno che il 
parametro non venga modificato.

**Azione**
: Questa modalità è simile alla modalità _Tocco_, ma modifica anche l'automazione quando il controllo viene modificato 
in qualche modo durante la riproduzione della sessione. Inoltre, sovrascrive la curva di automazione con l'ultimo valore
modificato fino all'interruzione della riproduzione.

Se questi concetti sono nuovi per te, concentrati ora solo sulle prime due modalità (_Manuale_ e _Leggi_) ed esercitati
a creare automazioni disegnando a mano le curve di automazione.

## Creazione di un plugin per l'automazione

È possibile aggiungere l'automazione a qualsiasi plugin già aggiunto a una traccia. Nell'esempio seguente, abbiamo 
aggiunto il plugin _AM pitchshifter_ a una traccia.

{{< figure alt="automazione plugin 1" src="it/ardour8-automation-plugin1.png" >}}

Per selezionare un parametro del plugin per l'automazione, clicca sul pulsante sulla traccia contrassegnato con _a_. 
Apparirà il menu. Sotto _Processor Automation_ troverai un elenco dei plugin che hai aggiunto per quella traccia.

{{< figure alt="automazione plugin 2" src="it/ardour8-automation-plugin2.png" >}}

All'interno di ciascun plugin elencato, è possibile scegliere da un elenco il parametro che si desidera automatizzare. 
Nell'esempio, abbiamo scelto il parametro _Pitch shift_ del plugin _AM pitchshifter_. Viene visualizzata una traccia di 
automazione per quel parametro. Si noti che quando si aprono diverse tracce di automazione, queste appariranno una dopo 
l'altra sotto la traccia principale.

Disegna una curva di automazione per quel parametro. Non dimenticare di impostare lo stato di automazione su _Leggi_.

{{< figure alt="automazione plugin 3" src="it/ardour8-automation-plugin3.png" >}}

Nell'immagine sopra, il cambiamento di tonalità del suono ora varia nel tempo, controllato dalla curva.

{{< callout type="info" >}}
È possibile nascondere una traccia di automazione facendo clic sulla "X" nell'angolo superiore sinistro della traccia 
stessa. Si noti che una traccia di automazione nascosta continua a funzionare anche quando non è visibile. 
{{< /callout >}}

## Migliorare la risoluzione visiva nell'automazione

È possibile ottenere una maggiore precisione verticale aumentando l'altezza della corsia di automazione. Spostare il 
cursore vicino al bordo inferiore della traccia di automazione. Il puntatore si trasforma in una doppia freccia 
verticale. Trascinarlo verso il basso per aumentare l'altezza della corsia di automazione. Si noti che le altezze della 
traccia principale e della corsia di automazione sono indipendenti, quindi mentre si lavora sulle curve di automazione è
possibile impostarle in questo modo:

{{< figure alt="automazione plugin 4" src="it/ardour8-automation-plugin4.png" >}}

{{< callout type="info" >}}
Ricorda che puoi anche ingrandire e rimpicciolire l'immagine per aumentare la risoluzione sull'asse orizzontale.
{{< /callout >}}

## Lavorare con i punti di automazione

Esistono diversi modi per regolare i punti di automazione, a seconda della modalità di modifica in cui ci si trova:

- Un punto di automazione può essere trascinato in qualsiasi direzione con il mouse (funziona nelle modalità 
_Mano_, _Matita_ e _Modifica interna_).
- Per rimuovere un punto di automazione, tieni premuto il tasto **Shift** mentre fai clic con il pulsante destro del 
mouse su di esso (funziona nelle modalità _Mano_, _Matita_ e _Modifica interna_).
- Solo in modalità _Modifica interna_: qualsiasi segmento della linea di automazione tra i punti di automazione può 
essere trascinato verticalmente, influenzando entrambi i punti finali contemporaneamente, senza influire sulla loro 
posizione orizzontale. È sufficiente fare clic in un punto qualsiasi della linea tra due punti e trascinare verso l'alto
o verso il basso.
- Come eliminare più punti di automazione contemporaneamente (solo in modalità _Mano_ e _Modifca interna_): selezionare 
più punti di automazione trascinando un riquadro che parte dallo sfondo della traccia attorno ai punti. Quindi i punti 
selezionati possono essere eliminati premendo **Canc** (_non_ **Backspace**). Se si utilizza un Mac e non si dispone di 
un tasto **Canc** vero e proprio, provare **Funzione + Backspace**.

Al termine di una curva di automazione, il suo valore rimarrà a quel livello per tutte le regioni successive, 
indipendentemente dal fatto che sia stata tracciata o meno una continuazione della curva.

{{< figure alt="punto finale" src="it/ardour8-automation-fader-end.png" >}}

Nell'esempio sopra riportato, l'ultimo punto della curva è a -7,91dB. Lo stesso livello verrà mantenuto per il resto 
della traccia, anche se la linea non viene tracciata fino alla fine.

## Spostamento dell'automazione

Lo spostamento di una regione in una nuova posizione comporta automaticamente lo spostamento dei dati di automazione 
che potrebbero essere allineati con essa, come possiamo vedere nelle seguenti schermate.

Prima dello spostamento:

{{< figure alt="spostamento1" src="en/Ardour4_Automation_Moving_1.png" >}}

Dopo lo spostamento:

{{< figure alt="spostamento2" src="en/Ardour4_Automation_Moving_2.png" >}}

È possibile modificare questo comportamento, se lo si desidera. In altre parole, se si desidera che le curve di 
automazione rimangano dove sono anche quando si spostano le regioni, andare su `Modifica > Preferenze > Editor` e 
deselezionare _Sposta automazione rilevanti quando le regioni audio vengono spostate_.

## Automazione del guadagno specifico per regione

Esiste un modo per creare un'automazione del guadagno direttamente collegata a una regione. Quando selezioni la modalità
_Matita_, dovresti vedere una linea piatta nella metà superiore di ogni rettangolo della regione:

{{< figure alt="automazione del guadagno 1" src="en/Ardour4_Automation_Region_Specific_1.png" >}}

Clicca direttamente su quella linea per creare punti di automazione. Questi saranno disegnati direttamente sulla regione
stessa, a differenza dell'automazione del fader che viene disegnata o registrata nella corsia di automazione. 
L'automazione del guadagno della regione è separata e aggiuntiva rispetto all'automazione del fader.

{{< figure alt="automazione del guadagno 2" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

Come per le tracce di automazione, un _punto di automazione del guadagno_ può essere trascinato in qualsiasi direzione 
con il mouse. Per rimuovere un punto di automazione del guadagno, tenere premuto il tasto **Shift** mentre si fa clic 
con il tasto destro del mouse su di esso.

### Disattivazione e rimozione dell'automazione del guadagno

L'automazione del guadagno può essere reimpostata o disattivata dal menu contestuale della regione, accessibile facendo 
clic con il tasto destro del mouse sulla regione.

{{< figure alt="automazione del guadagno 3" src="it/ardour8-automation-gain-tool-reset.png" >}}

Qui, l'automazione del guadagno è indicata come _inviluppo_:

- _Azzera inviluppo_ rimuove i punti di automazione del guadagno che hai tracciato nella regione.

- _Inviluppo attivo_ attiva e disattiva l'inviluppo dell'automazione del guadagno.

### Quando dovrei usare l'automazione del guadagno della regione o l'automazione del fader della traccia?

Come visto sopra, entrambi sono molto simili. Con la pratica noterai situazioni in cui uno è più conveniente dell'altro.
Ecco due esempi:

* Se tutto ciò che devi fare è un piccolo ritocco (taglio o aumento del guadagno) in una parte specifica di una regione 
e sei soddisfatto del livello del resto del passaggio o dell'intera traccia, utilizza l'automazione specifica per la 
regione.

{{< figure alt="esempio guadagno 1" src="en/Ardour4_Automation_Region_Specific_2.png" >}}

* Se hai una traccia più complessa con dissolvenze incrociate tra le regioni e/o hai bisogno di modellare una curva 
dinamica più lunga su più regioni della stessa traccia, usa l'automazione del fader.

{{< figure alt="esempio guadagno 2" src="en/Ardour4_Automation_Gain_Comparison.png" >}}

Lo screenshot sopra mostra una semplice dissolvenza graduale che inizia dalla prima regione della traccia e termina 
nell'ultima regione. È molto semplice farlo con l'automazione del fader, ma sarebbe molto più difficile farlo 
utilizzando l'automazione specifica per regione.

## Continua

Una volta impostata l'automazione, sei pronto per esportare il tuo mix stereo in un file audio che potrai ascoltare o 
condividere su un sito web. Continua con la sezione successiva per scoprire i diversi modi per farlo.

Successivo: [Esportazione di una sessione](../../exporting-sessions/exporting-a-session)
