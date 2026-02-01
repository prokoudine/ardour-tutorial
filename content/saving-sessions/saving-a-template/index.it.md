---
title: Salvare un modello di sessione
description: Come salvare e utilizzare un modello di sessione in Ardour
weight: 3
cascade:
  type: docs
---

Se spesso ti ritrovi a configurare le stesse informazioni in ogni nuova sessione che crei, come tracce/bus, i loro nomi 
e le interconnessioni, quali plugin con quali impostazioni hai nei canali del mixer ecc., allora potresti voler creare 
un _modello_.

Con un _modello_, è possibile salvare lo stato di una sessione attualmente aperta _senza_ tutti i file di informazioni 
sulla regione. I modelli sono utili se, ad esempio, si sta eseguendo un routing esteso su tracce e bus e si desidera 
salvare lo stato della finestra _Editor_ per utilizzarlo in altre sessioni.

Un esempio potrebbe essere un modello per registrare tracce di batteria, basso, chitarra e voce, ciascuna con il proprio
ingresso sulla scheda audio, che potresti utilizzare come base per ogni sessione creata in quella situazione.

## Salvare un modello

È possibile salvare un nuovo modello dal menu principale: `Sessione > Salva modello`. Verrà richiesto di assegnare un 
nome al nuovo modello e, facoltativamente, di fornire una descrizione che verrà visualizzata nella finestra di dialogo 
_Configurazione sessione_:

{{< figure alt="Salva modello" src="it/ardour8-save-template.png">}}

## Carica un modello

Quando crei una nuova sessione, puoi caricare un modello salvato in precedenza. Tutto quello che devi fare è indicare ad
Ardour dove salvare la sessione sul disco:

{{< figure alt="Finestra di dialogo Configurazione sessione" src="it/ardour8-session-setup-dialog.png">}}

## Conclusione

Congratulazioni, sei arrivato alla fine di questa introduzione ad Ardour! Ci auguriamo che questo tutorial ti sia stato 
utile per imparare le funzioni principali del programma.

Nella sezione seguente, **Appendici**, abbiamo incluso alcune informazioni aggiuntive che riteniamo utili per i nuovi 
utenti di Ardour, tra cui come ottenere [_Ulteriore assistenza_](../../further-help), un [_Glossario_](../../glossary) 
dei termini tecnici utilizzati in questo manuale, alcuni [_Link_](../../links) per ulteriori informazioni su Ardour su 
Internet e, ultimo ma non meno importante, i [_Crediti_](../../credits) di coloro che hanno contribuito alla creazione 
di questo manuale sul software libero e open source (FLOSS).

Grazie per aver letto e, se avete conoscenze su Ardour che non sono incluse qui, non esitate a proporre modifiche 
(maggiori informazioni su come farlo: [_Come contribuire_](../../how-to-contribute/). Inoltre, questo manuale è 
completamente open-source e si trova su [GitHub](https://github.com/prokoudine/ardour-tutorial). Potete anche crearne 
un fork e personalizzarlo a vostro piacimento!

**Appendici:**
[FURTHER HELP](../../further-help)   ||
[GLOSSARY](../../glossary)   ||
[LINKS](../../links)   ||
[CREDITS](../../credits)
