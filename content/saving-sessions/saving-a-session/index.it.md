---
title: Salvare una sessione
description: Come salvare e spostare una sessione di Ardour
weight: 1
cascade:
  type: docs
---

Esistono diversi modi per salvare le sessioni in Ardour, in modo che ciascuna sessione possa essere riutilizzata in 
seguito. Il modo più semplice è salvare l'intera sessione proprio come si farebbe con altri documenti: premendo 
**Ctrl+S**.

Una nuova sessione viene salvata per la prima volta nel momento in cui la crei. Mentre ci lavori, dovresti salvarla 
frequentemente. Prendi l'abitudine di premere **Ctrl+S** (o **Command+S** su un Mac) ogni pochi minuti.

{{< callout type="info" >}}
Evita di usare caratteri diversi da lettere e numeri quando dai un nome alla tua sessione. Evita spazi bianchi, 
lettere accentate, !@#$%\*()+, punti, virgole, ecc. Se vuoi, usa trattini o trattini bassi. Ad esempio, invece di 
"My Great Session!", preferisci "My_Great_Session", o "MyGreatSession", o "my-great-session". Invece di "Açaí", 
scrivi "Acai" (senza lettere accentate), ecc. Una volta creata la sessione Ardour, _non_ rinominare manualmente 
alcuna cartella o file appartenente alla sessione.
{{< /callout >}}

## Formato dei file e delle cartelle Ardour

Il contenuto di una tipica cartella di sessione sul disco rigido potrebbe essere simile al seguente:

{{< figure alt="Cartelle di Ardour" src="it/ardour8-session-folder-structure.png" >}}

Alcune informazioni sui componenti contenuti in quella cartella:

* Il nome di questa sessione è _Tutorial_.
* Il file di sessione principale si chiama `Tutorial.ardour`. Il file di sessione viene periodicamente sottoposto a 
backup da Ardour con estensione `.bak`.
* Il file `.history` conserva una registrazione delle modifiche apportate durante la sessione e viene sottoposto a 
backup periodici.
* La cartella `interchange` contiene i dati audio effettivi di tutte le regioni utilizzate nella sessione.
* La cartella `export` è quella in cui vengono salvati di default i file esportati.

Se facendo doppio clic sul file di sessione non si avvia Ardour, utilizzare il metodo standard che consiste nell'aprire 
prima l'applicazione stessa, quindi scegliere una sessione dalla finestra di dialogo _Configurazione sessione_.

{{< figure alt="Finestra di dialogo di apertura di Ardour" src="it/ardour8-session-setup-dialog.png" >}}

## Spostamento di una sessione su un altro computer o disco

Se avete bisogno di trasferire la vostra sessione Ardour su un altro computer, o se desiderate crearne una copia di 
backup su un disco esterno, *dovete copiare l'intera cartella* contenente tutti i file sopra menzionati. Non è 
sufficiente copiare solo il file `*.ardour`.

{{< callout type="warning" >}}
Quando si copia una cartella Ardour su un altro computer o unità, non modificare manualmente il suo nome o il nome di 
uno qualsiasi dei file interni. Si noti inoltre che, poiché le sessioni Ardour distinguono tra maiuscole e minuscole, 
copiare una sessione su una chiavetta USB (file system VFAT) potrebbe danneggiare la sessione. Comprimere la cartella 
della sessione in un file ZIP per spostarla da un computer all'altro.
{{< /callout >}}

Il modo più semplice per trasferire l'intero progetto è infatti quello di comprimere in un file ZIP la cartella della 
sessione. Se nella sessione non sono presenti snapshot, è anche possibile utilizzare il comando 
`Sessione > Archivia...`. In questo modo verrà creato un unico file ZIP contenente il file di progetto e tutti i dati 
audio transcodificati in file FLAC senza perdita di dati. Si noti che l'archivio non conterrà snapshot, ma solo lo stato
corrente della sessione.

## Continua

Salvare un'intera sessione consente di riaprirla in un secondo momento. Tuttavia, se desideri conservare uno stato 
specifico della tua sessione, per poter tornare a quello stato in un secondo momento dopo aver apportato delle 
modifiche, passa alla sezione successiva _Salvataggio di un'istantanea_.

Successivo: [Salvare un'istantanea](../saving-a-snapshot)
