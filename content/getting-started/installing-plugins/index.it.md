---
title: Installazione dei plugin
description: Come installare i plugin per Ardour
weight: 7
cascade:
  type: docs
---

Sebbene Ardour sia già dotato di alcuni plugin, è probabile che ne servano altri: un compressore o un riverbero più 
sofisticati, un campionatore in grado di riprodurre una libreria orchestrale di alta qualità, un sintetizzatore 
polifonico, ecc.

Ardour supporta diverse API per plugin:

- **Linux**: LADSPA, LV2, VST2.x, VST3
- **Windows**: LADSPA, LV2, VST2.x, VST3
- **macOS**: LADSPA, LV2, VST2.x, VST3, AU

È possibile trovare un elenco di plugin gratuiti/liberi consigliati [nella sezione Mixing](../../mixing-sessions/plugins/).

## Installazione dei plugin

### LADSPA e LV2

Questi plugin per lo più non dispongono di build per Windows e macOS, quindi su questi sistemi, nella maggior parte dei 
casi avrete a che fare con VST2, VST3 o AU.

Su Linux, LV2 è molto popolare. Se installi solo plugin dal repository della tua distribuzione, non devi fare 
nient'altro. Ardour rileverà facilmente i nuovi plugin. Ma se compili un plugin dal codice sorgente, lo script di 
compilazione tenterà in genere di copiare una cartella `nome-plugin.lv2` in `/usr/local/lib/lv2` o in `~/.lv2`.

### VST2.x

I plugin VST2 non hanno una posizione di installazione raccomandata dal produttore, quindi puoi procedere come segue:

1. Decomprimi tutti i tuoi plugin VST2.x nella stessa cartella. (Su Linux, si consiglia solitamente `~/.vst`.)

2. In Ardour, vai su _Modifica > Preferenze > Plugin > VST_ e nella sezione VST2.x, clicca sul pulsante **Modifica** per
aggiungere un nuovo percorso ai plugin VST2.x.

3. Aggiungi il percorso alla cartella creata nel passaggio 1. Ardour chiederà se desideri eseguire una nuova scansione 
dei plugin. Rispondi "sì".

Questo approccio funziona su tutti i sistemi operativi supportati.

### VST3

Le specifiche VST3 prevedono percorsi di sistema precisi per l'archiviazione dei plugin. Su Windows e macOS, nella 
maggior parte dei casi i plugin vengono installati nella cartella corretta, quindi è sufficiente eseguire una nuova 
scansione delle cartelle dei plugin.

Su Linux, in molti casi si ottiene un archivio ZIP con una cartella `plugin-name.vst3` al suo interno. Tale cartella 
deve essere spostata in `~/.vst3` oppure, se si desidera che tutti gli utenti del computer abbiano accesso, 
in `/usr/local/lib/vst3`.

### AU

Questi plugin specifici per macOS vengono installati dal DMG nelle cartelle corrette. Tutto quello che devi fare è 
eseguire una nuova scansione di quelle cartelle.

## Riscansione delle cartelle per i plugin installati

Dopo l'installazione, si consiglia di eseguire una nuova scansione dei plugin disponibili. Questa operazione viene 
solitamente eseguita con il _Gestore dei Plugin_ (_Finestre > Gestore dei plugin_).

{{< figure src="it/plugin-manager.png" alt="Gestore dei plugin" >}}

Se hai installato solo nuovi plugin, sarà sufficiente individuarli. Nella barra laterale sinistra del 
_Gestore dei plugin_, clicca su **Trova nuovi/aggiornati**, quindi attendi il completamento della scansione.

Se hai rimosso alcuni dei plugin precedentemente installati, è meglio eseguire una nuova scansione completa. Clicca su 
**Riscansiona tutto** e attendi il completamento dell'operazione.

## Continua

Ora che sai cosa fare se desideri installare un plugin di effetti o un sintetizzatore software, impariamo come 
registrare audio e MIDI su Ardour.

Successivo: [REGISTRAZIONE AUDIO](../../recording/recording-audio/)
