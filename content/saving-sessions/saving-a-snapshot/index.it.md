---
title: Salvare un'istantanea
description: Come salvare e richiamare un'istantanea di una sessione di Ardour
weight: 2
cascade:
  type: docs
---

Una _istantanea_ (snapshot) è una rappresentazione dello stato attuale di una sessione. In poche parole, è come 
assegnare una versione al proprio progetto, dando a ogni versione un nome significativo e descrittivo. Anche se non è 
realmente visibile agli utenti, ogni sessione ha sempre almeno una istantanea, che corrisponde a ciò che si ha in quel 
momento.

Supponiamo che tu abbia registrato una canzone nel tuo studio casalingo e che tu stia provando diversi arrangiamenti per
vedere quale funziona meglio. Invece di creare più sessioni e copiare i file tra di esse, puoi creare delle istantanee 
ogni volta che ritieni di avere qualcosa che vale la pena conservare. In qualsiasi momento, puoi salvare lo stato 
attuale della sessione e passare a una istantanea precedente per confrontare i tuoi arrangiamenti.

## Salvataggio di un'istantanea

Ardour fornisce due comandi nel menu _Sessione_ per creare una istantanea:

**Istantanea (e continua sulla versione corrente)**
: Creerai una nuova istantanea e continuerai a lavorare sulla versione originale. Qualsiasi nuovo salvataggio 
sovrascriverà lo stato attuale del progetto, mentre la nuova istantanea non sarà interessata. Modello mentale: 
"Penso che sto per apportare modifiche significative, quindi ho bisogno di un backup nel caso in cui il mio esperimento 
non vada a buon fine".

**Istantanea (e vai alla versione nuova)**
: Creerai una nuova istantanea e passerai a lavorare su quella versione. Qualsiasi nuovo salvataggio influirà sulla 
nuova istantanea fino a quando non passerai all'istantanea originale. Modello mentale: "Questo è davvero interessante, 
approfondiamo questa idea e torniamo a quella precedente se questa si rivela un vicolo cieco".

{{< figure alt="Istantanee" src="it/ardour8-snapshot-menu.png" >}}

Per impostazione predefinita, il programma assegnerà alla nuova istantanea un nome basato sulla data e sull'ora correnti
del sistema. Se lo desideri, puoi modificare il nome con uno che corrisponda in modo più significativo alla sessione su 
cui stai lavorando.

{{< figure alt="Assegnare un nome all'istantanea" src="it/ardour8-snapshot-name.png" >}}

## Richiamare le istantanee

È possibile richiamare un'istantanea salvata tramite la scheda _Istantanee_ nell'area a destra:

{{< figure alt="Elenco delle istantanee" src="it/ardour8-snapshot-list.png" >}}

Qui puoi vedere alcune istantanee che abbiamo creato, e la voce _Tutorial_ rappresenta lo stato originale della nostra 
sessione.

Clicca su una qualsiasi delle istantanee dall'elenco per ricaricarla.

## Continua

A volte è utile avere un punto di partenza predefinito per le nuove sessioni, ad esempio per una configurazione che si 
utilizza sempre quando si avvia un nuovo progetto. Per imparare come farlo, passare alla sezione successiva denominata 
_Salvare un modello_.

Successivo: [Salvare un modello](../saving-a-template)
