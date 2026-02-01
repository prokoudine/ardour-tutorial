---
title: Esportazione di una sessione
description: Come esportare le sessioni in Ardour
weight: 1
cascade:
  type: docs
---

L'esportazione è il processo di salvataggio di una regione, una traccia o un'intera sessione in un file sul computer, 
che è possibile ascoltare, masterizzare su un CD-R o convertire in MP3 per condividerlo su un sito web.

## Esportare l'intera sessione

Una volta terminata la composizione, l'operazione di esportazione più comune consiste nell'esportare l'intera sessione 
in un file audio.

### Panoramica dell'intera sessione

A questo punto è consigliabile ridurre lo zoom e dare un'occhiata all'intera sessione prima di esportarla.

* Seleziona "Tutto" dal menu "Numero di tracce visibili":

{{< figure alt="altezza tracce" src="it/ardour8-track-height.png" >}}

* Clicca sul pulsante **Zoom alla sessione** (terzo pulsante nelle opzioni di zoom):

{{< figure alt="pulsante zoom alla sessione" src="it/ardour8-session-zoom-all.png" >}}

* Ora dovresti avere una panoramica completa della tua sessione, come questa:

{{< figure alt="Panoramica sessione" src="it/ardour8-birds-eye-view.png" >}}

Ascolta il tuo brano un'ultima volta e assicurati che tutto sia come desideri (hai dimenticato di disattivare qualche 
pulsante **Solo** o **Muto**? Devi ancora regolare il volume? ecc.)

#### Marcatori di inizio e fine

Infine, assicurati che i marcatori _inizio_ e _fine_ sulla timeline dei marcatori di posizione siano nella posizione 
corretta.

Tutto ciò che è compreso tra i marcatori _inizio_ e _fine_ verrà esportato, quindi è necessario impostare prima i 
marcatori se non sono nella posizione corretta. Nell'immagine sottostante, è evidente che il marcatore _fine_ è troppo 
spostato a destra nella timeline. Ciò comporterà un lungo silenzio dopo la fine del brano (ovvero tra l'ultima regione e
il marcatore _fine_).

{{< figure src="it/ardour8-end-marker-too-far.png" alt="Il marcatore fine è troppo lontano" >}}

Se il tuo indicatore _fine_ è troppo lontano dalla fine del tuo brano, clicca e trascinalo verso sinistra fino a quando 
non è abbastanza vicino alla fine dell'ultima regione della tua composizione.

## Esportala!

Per esportare una sessione, utilizza il menu in alto:
`Sessione > Esporta > Esporta file audio...`. Si aprirà una finestra di dialogo con una serie di opzioni.

{{< figure alt="Finestra di dialogo Esporta sessione" src="it/ardour8-exporting-settings.png" >}}

**Preset**
: Questo *NON* è il campo in cui inserire il nome del file. Per ora non preoccuparti di questo campo.

**Formato**
: Questo ti permette di scegliere il formato del file (WAV, MP3, OGG, FLAC, ecc.). L'impostazione predefinita è CD 
(Red Book), che ti darà un file WAV a 16 bit con una frequenza di campionamento di 44,1 kHz.

**Aggiungi altro formato**
: Se desideri esportare in più di un formato contemporaneamente, clicca su questa scheda.

**Posizione**
: Questo è il luogo in cui troverai il file dopo averlo salvato. Per impostazione predefinita, si trova nella cartella 
`export` all'interno della cartella principale della sessione. Puoi anche fare clic su **Sfoglia** e selezionare, 
ad esempio, il Desktop.

**Etichetta**
: Qui è possibile creare un nome univoco per il file. Ardour aggiungerà automaticamente il nome della sessione al file 
esportato, quindi se non si scrive nulla in questo campo il nome potrebbe risultare generico, ad esempio 
"my-session.wav". Utilizzare questo campo per assegnare un nome univoco al file.

Dopo aver selezionato le opzioni desiderate, clicca su **Esporta**. Al termine dell'operazione, potrai trovare il file 
utilizzando il tuo browser.

{{< callout type="info" >}}
L'esportazione viene gestita tramite il bus Master, quindi il file finale includerà tutti i suoni delle tracce e dei bus
che sono stati indirizzati al bus Master. Ciò includerà qualsiasi normalizzazione, dissolvenza, panning e automazione 
che hai creato, insieme alle singole modifiche apportate alle regioni. Se una delle tracce ha i pulsanti **Muto** o 
**Solo** attivati, ciò influirà anche sulle tracce che saranno udibili nel file esportato.
{{< /callout >}}

## Normalizzazione

A volte l'audio renderizzato è troppo alto o troppo basso per soddisfare i requisiti imposti da vari servizi di 
streaming popolari come YouTube o Spotify. Ardour fornisce uno strumento chiamato _Loudness Assistant_ per aiutare in 
questo caso.

In parole povere, analizza tutto ciò che passa attraverso il bus _Master_, stima il volume del segnale e poi suggerisce 
di correggerlo verso l'alto o verso il basso in modo che il volume complessivo sia quello giusto per questo o quel
popolare servizio di streaming.

Sebbene sia possibile applicare la correzione del volume (guadagno) direttamente all'uscita del bus _Master_ e 
beneficiare di un maggiore controllo manuale sul risultato, il modo più conveniente è applicare la normalizzazione in 
fase di esportazione. È possibile farlo in due modi:

1. Basta selezionare un servizio popolare dall'elenco a discesa sotto _Formati_. Ardour dispone di impostazioni 
predefinite per Apple Music, Deezer, Spotify, YouTube ecc.

2. Se il servizio non è elencato nelle impostazioni predefinite, clicca sul pulsante **Edit** per aprire una finestra di
dialogo con le impostazioni avanzate di esportazione, abilita _Normalizza_, scegli _Volume_ anziché _Picco_, quindi 
imposta il valore LUFS desiderato.

{{< figure src="it/ardour8-edit-exporting-format.png" alt="Modifica il formato di esportazione" >}}

## Continua

Alla fine di questo capitolo, avrai ottenuto un mix stereo esportato che rappresenta l'intera sessione. Potresti anche 
voler sapere come esportare singole regioni o intervalli selezionati dalla tua sessione. Questo argomento verrà trattato
brevemente nei prossimi due capitoli.

Successivo: [Esportazione di una regione](../exporting-a-region)
