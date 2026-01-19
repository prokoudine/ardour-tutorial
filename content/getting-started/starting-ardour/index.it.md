---
title: Avvio di Ardour
description: Avvio di Ardour su Ubuntu Linux, primi passi
weight: 2
cascade:
  type: docs
---

Ardour supporta Linux, Windows e macOS. Il funzionamento su tutti questi sistemi operativi è praticamente identico. 
Pertanto, sebbene questo tutorial presupponga l'utilizzo di Ubuntu Linux, è lecito aspettarsi che funzioni allo stesso 
modo su altri sistemi operativi e versioni di Linux.

## Procedura guidata del primo avvio

Quando avvii Ardour per la prima volta, ti verranno poste alcune domande per effettuare alcune personalizzazioni di 
base: interfaccia utente e dimensione dei caratteri (se disponi di un display HiDPI), cartella predefinita in cui 
verranno create le nuove sessioni, modalità preferita per monitorare il segnale registrato, ecc.

{{< figure src="it/ardour8-gui-and-font-scaling.it.png" alt="Scalatura GUI e font" >}}

Questa finestra di dialogo non verrà più visualizzata, a meno che non si cancellino tutte le impostazioni. È possibile 
modificare tutte le preferenze impostate in qualsiasi momento nella finestra di dialogo _Preferenze_.

## Crea nuova sessione

Una volta completata la procedura guidata di avvio iniziale, Ardour ti suggerirà di creare una nuova _sessione_ da uno 
dei modelli disponibili.

{{< figure src="it/ardour8-new-session-templates.it.png" alt="Nuovi modelli di sessione" >}}

Una sessione comprende tutto il materiale a tua disposizione: tracce con dati audio e MIDI, effetti associati alle 
tracce e ai bus, ecc. Pertanto, una sessione è essenzialmente un file di progetto dal quale è possibile renderizzare un
file audio mono o stereo da consegnare a un cliente, utilizzare in un video o caricare su un servizio di streaming.

Per semplicità, procediamo con una sessione vuota come mostrato sopra.

Ardour suggerirà sempre automaticamente di salvare una nuova sessione nella cartella predefinita impostata nel passaggio
precedente.

Quando dai un nome a una nuova sessione, evita di usare caratteri diversi da lettere e numeri, come spazi bianchi, 
lettere accentate, `!@#$%*()+`, punti, virgole, ecc. Se vuoi, usa trattini o trattini bassi. Ad esempio, invece di 
"My Great Session!", preferisci "My_Great_Session", "MyGreatSession" o "my-great-session". 
Invece di "Açaí", scrivi "Acai" (senza lettere accentate), ecc.

L'impostazione predefinita del dominio tempo influisce principalmente sui righelli e sui marcatori. Con "Tempo audio" si
attiverà il set di righelli con minuti, secondi e codice temporale. Con "Battute" si attiveranno i righelli delle 
battute musicali: battute:battiti, Tempo, Indicazione metrica.

Assegna un nome al tuo nuovo progetto e clicca su **Apri**.

Una volta creata la sessione Ardour, _non_ rinominare manualmente alcuna cartella o file appartenente alla sessione. In 
caso contrario, Ardour non riuscirà a individuare i file all'interno di tali cartelle e ti chiederà di indicarne la 
posizione.

> [!NOTE]
> Una volta salvata almeno una sessione, la finestra di dialogo _Configurazione sessione_ 
> avrà un aspetto diverso: sarà presente un elenco delle sessioni aperte di recente e 
> un modo per aprire una sessione esistente che non è presente in tale elenco.

## Scelta del sistema audio e delle relative impostazioni

Nel passaggio successivo, dovrai scegliere e configurare il _sistema audio_.

Per ulteriori dettagli sulla selezione del backend audio, consultare [questo capitolo](/using-your-gear/audio-interfaces/).

Una volta scelto, configurato e avviato il backend audio/MIDI, Ardour cercherà di individuare eventuali nuovi plugin,
dopodiché verrà visualizzata la finestra principale di Ardour:

{{< figure src="it/ardour8-ardour-empty-session.it.png" alt="Finestra principale di Ardour, sessione vuota" >}}

**Continua**

Nel prossimo capitolo acquisirai familiarità con l'interfaccia utente di Ardour e le sue finestre principali: Editor, 
Mixer, Registratore e Cue.