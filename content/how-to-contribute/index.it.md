---
title: Come contribuire
description: Come contribuire a questo tutorial
weight: 12
sidebar:
  exclude: true
---

## Che tipo di contributi accettiamo

Abbiamo volutamente limitato l'ambito di questo tutorial alle tecniche di base sufficienti per consentire agli utenti di
iniziare a registrare, mixare ed esportare con Ardour. Accetteremo quindi con gratitudine le modifiche che non alterano
in modo significativo l'ambito del tutorial: correzioni di bug, spiegazioni più chiare, illustrazioni migliori, ecc. 
Incoraggiamo inoltre la traduzione del tutorial di Ardour.

## Esecuzione del tutorial CMS in locale

1. Si prega di installare Hugo per il proprio sistema operativo.

2. Fork del [repository Git](https://github.com/prokoudine/ardour-tutorial)

3. Clone del repository forkato:

```bash
git clone git@github.com:USERNAME/ardour-tutorial.git
```

3. Accedi al repository clonato dal terminale:

```bash
cd ardour-tutorial
```

4. Avvia Hugo

```bash
hugo server -D --disableFastRender
```

5. Apri il CMS in esecuzione locale nel tuo browser. Hugo utilizza come impostazione predefinita `localhost:1313/`.

## Utilizzo della sintassi Markdown e delle funzioni extra

Tutti i file di testo utilizzano la sintassi Markdown con alcune aggiunte. 
Utilizziamo un sottoinsieme limitato delle opzioni disponibili.

La pagina iniziale utilizza shortcode per la navigazione ai capitoli e ai link esterni di assistenza agli utenti. 
Ecco un esempio:

{{< cards >}}
{{< card link="recording/" title="Registrazione" subtitle="Come registrare audio e MIDI con Ardour" icon="microphone" >}}
{{< card link="editing-sessions/" title="Sessioni di editing" subtitle="Come modificare le sessioni con Ardour" icon="scissors" >}}
{{< /cards >}}

Un'altra funzione extra disponibile nel modello scelto è un cosiddetto shortcode per i riquadri di avviso che hanno 
questo aspetto:

> [!TIP]
> Qualche testo

Ecco il codice per farlo:

```
> [!TIP]
> Qualche testo
```

In genere utilizziamo due tipi di caselle di avviso: "TIP" (suggerimento) e "WARNING" (avvertenza).
Il resto è davvero semplice:

- Il singolo trattino basso come `_Nome_` rende il testo in corsivo e viene utilizzato per elementi dell'interfaccia 
utente come le didascalie delle finestre.
- Il doppio asterisco come `**OK**` rende il testo in grassetto ed è riservato alle didascalie dei pulsanti.
- I backtick (accento grave) attorno ad alcuni testi sono solitamente riservati ai percorsi dei menu e ai nomi dei file.

## Invio delle modifiche

Il repository con questo tutorial è disponibile su GitHub. L'idea generale è quella di eseguire il fork del repository, 
apportare modifiche in un ramo, quindi creare una pull request 
Si prega di [vedere qui](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
per una guida completa.

## Creazione e invio di una traduzione

L'intero tutorial può essere tradotto in una lingua diversa. 
Una volta creato un ramo git per separare il tuo lavoro, ecco cosa devi fare.

### Traduzione del menu

I menu superiore e laterale sono memorizzati in `hugo.yaml`, all'interno della sezione `menu`. 
Ecco lo snippet per questa pagina:

```yaml
    - identifier: contribute
      name: Contribute
      pageRef: /how-to-contribute
      weight: 2
```

Tutti gli identificatori sono elencati per la traduzione in un file separato, ad esempio `i18n/fr.yaml`:

```yaml
conventions: Conventions
contribute: Contribuer
license: Licence
credits: Crédits
search: Recherche
more: Plus d'informations
```

Se desideri tradurre il tutorial, ad esempio in spagnolo, devi creare il file `i18n/es.yaml` e tradurre gli identificatori.

### Aggiungere la propria lingua all'elenco a discesa

1. Apri il file di configurazione `hugo.yaml`. Le traduzioni disponibili sono elencate nella sottosezione `languages:`:

```yaml
languages:
  en:
    languageName: English
    weight: 1
  fr:
    languageName: Français
    weight: 2
```

2. Aggiungi una nuova sottosezione relativa alla lingua: utilizza un codice lingua di due lettere e scrivi il nome nella tua lingua madre. Ad esempio, per lo spagnolo sarebbe rispettivamente `es` e `Español`:

```yaml
  es:
    languageName: Español
    weight: 2
```

Inserisci la nuova sottosezione in ordine alfabetico in base al codice lingua e modifica l'ordine (weight) di conseguenza:
```yaml
languages:
  en:
    languageName: English
    weight: 1
  es:
    languageName: Español
    weight: 2
  fr:
    languageName: Français
    weight: 3
```

> [!IMPORTANT]
> È necessaria almeno una pagina tradotta per poter visualizzare qualsiasi contenuto una volta passati alla lingua appena aggiunta.

### Traduzione delle pagine del tutorial

Tutti i contenuti sono contenuti nella cartella "content", dove le sottocartelle sono denominate con i nomi dei capitoli,
come "Registrazione" ("recording"), "Sessioni di mixaggio" ("mixing-sessions") ecc. 
Ecco la struttura generale:

~~~
/content # La cartella principale per tutti i contenuti
/content/_index.en.md # La pagina iniziale che vedi quando clicchi su Home
/content/chapter-folder/ # La cartella per un intero capitolo come "Registrazione"
/content/chapter-folder/_index.en.md # Capitolo
/content/chapter-folder/page/ # Cartella per una pagina in un capitolo, ad esempio "Comprendere il routing"
/content/chapter-folder/page/index.md # Testo originale di quella pagina in inglese
/content/chapter-folder/page/en/ # Screenshot creati con interfaccia utente in inglese
~~~

Tutti i file di testo hanno un codice lingua proprio nel nome del file:

- le pagine normali sono denominate `index.XX.md`,
- i capitoli sono denominati `_index.XX.md`,

dove XX è un codice lingua di due lettere come "de" per il tedesco o "fr" per il francese. 
Dovresti poter utilizzare anche codici di quattro lettere, ad esempio "pt_BR" o "es_AR".
Supponiamo che tu voglia tradurre il capitolo _Guida introduttiva_ in francese. Ecco come procedere.

1. Crea una copia di `getting-started/_index.md` e rinominala `_index.fr.md`. Ora dovresti avere `_index.md` e `_index.fr.md` nella stessa cartella.

2. Traduci `_index.fr.md`. Se hai già tradotto il menu principale, dovresti essere in grado di aprire la pagina originale in inglese, cambiare la lingua in "Français" e vedere la tua pagina tradotta.

3. Vai alla sottocartella `starting-ardour`, crea una copia di `index.en.md` e rinominala `index.fr.md`, quindi traduttela.

4. Ripeti il passaggio 3 per tutte le sottocartelle. In questo modo dovresti ottenere la traduzione di un intero capitolo su come iniziare a utilizzare Ardour.

### Traduzione degli elementi dell'interfaccia utente e degli screenshot

Se l'interfaccia utente di Ardour è disponibile nella lingua in cui stai traducendo questo tutorial, 
in genere spetta a te decidere se fare riferimento all'interfaccia utente localizzata o meno.

Sappiamo che gli utenti sono molto appassionati sia delle interfacce utente localizzate che di quelle non localizzate, 
quindi un approccio che potresti adottare è quello di creare screenshot localizzati, fare riferimento all'interfaccia 
utente localizzata e poi menzionare le controparti inglesi tra parentesi. Ecco un esempio di traduzione in tedesco:

> Nach dem Import einiger Sounds aus dem heruntergeladenen Sample-Pack
(Bassdrum, Snare, Hi-Hat, Clap) sieht unsere Session so aus (in diesem Fall
haben wir die Option _Dateien als neue Spuren hinzufügen_ (EN: _Add files as new
tracks_) verwendet und beim Start der Session eingefügt.

Se si intende creare screenshot dell'interfaccia utente localizzata, creare una sottocartella denominata con il codice 
della lingua (due o quattro lettere, a seconda dei casi) e inserirvi gli screenshot. 
Una volta fatto ciò, aggiornare i riferimenti agli screenshot nel testo. Ad esempio:
```
![Save template](en/ardour7-save-template.png)
```

diventa

```
![Schablone speichern](de/ardour7-schablone-speichern.png)
```

### Invio della traduzione

Il processo è lo stesso per le patch generiche: invia una pull request. Vedi sopra per un link alla guida passo passo.
