---
title: Esportazione di una regione
description: Come esportare le regioni in Ardour
weight: 2
cascade:
  type: docs
---

Potresti voler esportare solo una parte della tua sessione, magari per usarla come campione in un'altra applicazione o 
per modificarla in un programma diverso. Questo capitolo ti mostra come farlo.

## Esportare una regione

Per esportare una regione, selezionala in modalità _mano_ e poi clicca con il tasto destro del mouse sul sottomenu 
_Esporta_, oppure utilizza il menu in alto: `Regione > Esporta`.

{{< figure alt="Esportare una regione" src="it/ardour8-export-region-in-menu.png" >}}

Si aprirà la stessa finestra di dialogo di esportazione descritta nel capitolo 
[Esportazione di una sessione](../exporting-a-session). Scegli le opzioni desiderate e fai clic su **Esporta**. Verrà 
esportata solo la regione selezionata.

{{< callout type="info" >}}
Non tutti i parametri e le modifiche vengono presi in considerazione durante l'esportazione di una regione. Le regioni 
tagliate, divise, allungate e invertite possono essere esportate, ma le modifiche come il panning e l'automazione non 
vengono esportate.
{{< /callout >}}

Inoltre, il volume della traccia audio stessa o del bus _Master_ non influirà sul file esportato. Per esportare queste 
modifiche, consultare i capitoli relativi all'esportazione di un intervallo e all'esportazione di una sessione.

## Esportazione di più regioni contemporaneamente

Se stai creando una raccolta di campioni da utilizzare in un altro software e i tuoi campioni sono fondamentalmente 
regioni tagliate e modificate, alla fine del processo dovrai esportarli tutti. Se il numero è elevato, esportarli 
manualmente può essere noioso. Ecco un modo per esportare più regioni contemporaneamente.

1. In modalità _Mano_ (scorciatoia **G**), seleziona tutte le regioni che desideri esportare. Non è necessario che si 
trovino sulla stessa traccia.

{{< figure alt="Esportare una regione" src="it/ardour8-export-multiple-regions-1.png" >}}

2. Vai al menu `Regione > Intervalli` e seleziona _Aggiungi marcatori di intervallo per regione_.

{{< figure alt="Esportare una regione" src="it/ardour8-export-multiple-regions-2.png" >}}

3. Ardour ha appena creato dei marcatori di intervallo che corrispondono esattamente all'inizio e alla fine delle 
regioni selezionate (vedi i rettangoli verdi nel righello dei marcatori di intervallo):

{{< figure alt="Esportare una regione" src="it/ardour8-export-multiple-regions-3.png" >}}

4. Vai al menu `Sessione > Esporta` e seleziona _Esporta file audio_ (**Alt+E**).

5. Nella finestra di dialogo di esportazione, clicca sulla scheda _Intervallo_. Qui vedrai elencati tutti gli intervalli
appena creati. È presente anche un intervallo predefinito che rappresenta l'intera sessione.

6. Clicca su **Seleziona tutto** e deseleziona il primo intervallo (l'intervallo "sessione"). Questo permetterà di
esportare gli intervalli più brevi, non l'intera sessione.

{{< figure alt="Esportare una regione" src="it/ardour8-export-multiple-regions-4.png" >}}

7. Torna alla scheda principale (_Formato del file_) e clicca su **Esporta**.

Le tue regioni sono state esportate in singoli file audio.

{{< callout type="info" >}}
Questo metodo esporta *tutto* ciò che rientra in ciascun intervallo di tempo definito.
In altre parole, se ci sono altre regioni in altre tracce che suonano contemporaneamente alle regioni che si desidera 
esportare, queste verranno mixate insieme. Un altro modo di vedere la cosa è questo: l'operazione di esportazione 
esporterà tutto ciò che *viene riprodotto* negli intervalli di tempo definiti. Se questo non è ciò che si desidera, è 
possibile utilizzare i pulsanti solo o muto sulle tracce selezionate per assicurarsi di esportare solo ciò che si 
desidera.
{{< /callout >}}

## Continua

Infine, il prossimo capitolo tratterà l'esportazione di intervalli anziché di singole regioni. L'ultimo trucco 
(esportare più regioni contemporaneamente) in realtà prevedeva già l'uso di intervalli, come avrete intuito.

Successivo: [Esportazione di un intervallo](../exporting-a-range)
