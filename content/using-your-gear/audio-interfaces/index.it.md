---
title: "Interfacce audio"
description: "Cosa devi sapere sulle interfacce audio e Ardour"
chapter: false
weight: 1
---

Questa pagina spiega cosa sono i motori audio e come configurare Ardour per la produzione.

## Come scegliere il motore giusto

### Motori Linux

Su Linux sono disponibili diversi sistemi audio (o _backend_).

_ALSA_ è suggerito come impostazione predefinita. Attualmente è il metodo consigliato per utilizzare Ardour in 
produzione. Con ALSA non ci sono wrapper o astrazioni. È possibile connettersi direttamente alle porte audio e MIDI 
fisiche.

Ciò significa che Ardour acquisirà il controllo dell'interfaccia audio scelta e non la condividerà con altre 
applicazioni. Finché Ardour è in esecuzione, nessun'altra applicazione desktop in esecuzione potrà connettersi 
all'interfaccia audio e riprodurre alcun suono.

<!-- ![Audio/MIDI setup](en/ardour7-alsa-backend-settings.png?width=40vw) -->

Il backend _PulseAudio_ attualmente supporta solo la riproduzione. Ciò significa che non sarà possibile registrare alcun
audio finché si utilizza PulseAudio, ma è possibile modificare, mixare ed esportare mentre si ascolta dalle cuffie 
Bluetooth. È anche l'opzione più comoda quando si desidera seguire un tutorial di mixaggio o masterizzazione su YouTube 
e poter ascoltare l'uscita da Ardour.

<!-- ![PulseAudio settings](en/ardour7-pulse-audio-settings.png?width=40vw) -->

<!-- ### Windows engines -->

<!-- ### macOS engines -->

### JACK audio

Il backend audio JACK è un modello di architettura client-server. JACK acquisisce tutte le porte fisiche di 
un'interfaccia audio e instrada il segnale tra i suoi client (ad esempio una workstation audio digitale, un 
sintetizzatore software, un sequencer di batteria ecc.) e varie porte. È disponibile su Linux, Windows e macOS.

Oggi, l'uso del server audio JACK è sconsigliato dagli sviluppatori di Ardour, tranne che per casi d'uso particolari 
come il routing sofisticato dei segnali, ad esempio la registrazione simultanea da porte di interfaccia audio fisiche e 
altre applicazioni.

Per registrazioni multicanale semplici, l'esperienza utente sarà notevolmente migliore affidandosi al motore audio 
nativo disponibile nel sistema operativo, come ALSA su Linux e CoreAudio su macOS. Se hai assolutamente bisogno di JACK,
è meglio avviarlo e controllarlo da un programma separato come [Qjackctl](https://qjackctl.sourceforge.io/) o 
[Cadence](https://kx.studio/Applications:Cadence).

## Come configurare il motore

La maggior parte dei backend audio supportati hanno alcune impostazioni comuni:

- _Dispositivo_ — può essere la scheda audio integrata o una scheda audio esterna, se ne possiedi una 
(ad esempio un'interfaccia USB). 
- _Frequenza di campionamento_ — 48K o 44,1K sono le scelte più comuni.
- _Dimensione del buffer_ — soprattutto per l'audio USB esterno, prova a scegliere un'opzione che dia come risultato una
latenza multipla di 1 ms (4 ms, 6 ms ecc.) per ridurre i glitch.
- _Periodi_ — spesso si consiglia di utilizzare 3 per un'interfaccia audio USB esterna, ma dovresti verificare se è 
possibile ottenere un multiplo di 1 ms con 3 o se è necessario tornare a 2. 

<!-- ## Come calibrare l'interfaccia audio -->
 