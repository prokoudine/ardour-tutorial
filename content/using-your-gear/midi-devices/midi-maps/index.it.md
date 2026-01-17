---
title: Utilizzo della mappatura MIDI
description: Come controllare Ardour con tastiere MIDI utilizzando mappature MIDI
weight: 3
cascade:
  type: docs
---

{{< details title="Guarda il video" closed="true" >}}

{{< youtube 56BDrtZNhY0 >}}

{{< /details >}}

Molte tastiere MIDI sono dotate di fader, encoder e tasti di trasporto. È possibile utilizzarli per controllare vari 
aspetti di Ardour. Per farlo è necessario utilizzare una mappatura MIDI.

## Che cos'è una mappatura MIDI?

Un file di mappatura MIDI indica ad Ardour come interpretare i messaggi di controllo (CC) in arrivo da un dispositivo 
MIDI. Consideriamo questo scenario:

- Il tuo dispositivo MIDI ha dei fader che desideri mappare ai fader di guadagno in Ardour.
- Il primo fader invia valori compresi tra `0..127` tramite Control Change 14. 
- La mappa MIDI indica "leggi il messaggio CC14 e applicalo al fader di guadagno nella prima traccia".

Con questa configurazione, spostando il fader verso l'alto e verso il basso si sposterà il fader di guadagno 
nella traccia.

## Dove trovare le mappature MIDI

Ardour viene fornito con oltre 50 mappature MIDI per tastiere di vari produttori, tra cui Akai, Novation, M-Audio e 
Arturia.

Se il tuo dispositivo specifico non dispone di una mappatura MIDI già pronta, puoi crearne una tu stesso. Abbiamo 
un [tutorial](https://www.youtube.com/watch?v=B9t-ZubUGHM) su questo argomento.

## Come utilizzare una mappatura MIDI

Impariamo come abilitare una piattaforma di controllo MIDI generica e selezionare la mappatura predefinita corretta.

<!-- {{< youtube 56BDrtZNhY0 >}} -->

1. Collega una tastiera MIDI al tuo computer.
---
2. Avvia Ardour e crea una nuova sessione oppure apri una sessione esistente.
---
3. Vai su `Modifica > Preferenze > Piattaforme di controllo`.
---
4. Assicurati che la piattaforma di controllo "Generic MIDI" sia abilitata, quindi fai doppio clic su di essa per aprire
le relative impostazioni.
---
5. Scegli la porta per gli eventi MIDI in entrata. Nel nostro caso sarà "MiniLab3 MIDI In". Quindi seleziona i 
collegamenti MIDI nell'elenco a discesa.
---
6. Chiudere la finestra di dialogo delle impostazioni del protocollo e quindi la finestra di dialogo Preferenze.
---
7. Vai su `Finestre > Connessioni MIDI`. Seleziona la scheda Hardware in alto e Ardour Misc sulla destra.
---
8. Assicurarsi che la porta "MiniLab3 MIDI In" sia collegata alla porta "Generic MIDI Control In".
---
Ora che Ardour ascolta gli eventi di controllo dalla tastiera, è possibile utilizzare i tasti di trasporto sulla 
tastiera MiniLab3 per abilitare la modalità di registrazione e avviare o interrompere la riproduzione. Gli encoder e i 
fader saranno riservati all'uso con i sintetizzatori virtuali. Questo è diverso per ciascuna delle oltre 50 altre 
mappature MIDI esistenti fornite con Ardour.

**Continua**

Nel prossimo passaggio impareremo a utilizzare MIDI Learn per mappare rapidamente i controlli fisici ai controlli 
software in Ardour e nei plugin.