+++
title= "Dynamique"
description = "Applying limiters, compressors, and a gate in Ardour"
description = " Utiliser limiteurs, compresseurs et gate dans Ardour"
chapter = false
weight = 6
+++

Un des problèmes que vous pouvez rencontrer lors d'un mixage, selon le matériel sonore, est que les parties fortes sont trop fortes et/ou que les parties faibles sont trop faibles.     

Ce genre de problème ne peut pas être facilement résolu en utilisant uniquement les atténuateurs pour ajuster les niveaux.
Vous pourriez mettre les niveaux tellement haut que cela saturerait, ou vous pourriez ajouter du bruit de fond non désiré en montant simplement les volumes.
Cet ensemble de problèmes est appelé la _plage dynamique_, par exemple, la différence entre les parties fortes et les parties calmes de votre session.
Il y a plusieurs types d'outils pour ajuster la plage dynamique en général disponibles en tant que greffons externe à Ardour, dont notamment _limitation_, _compression_ et _déclenchement_.   

## Limitation

Un _limiteur_ est un outil qui empêche le volume d'une piste d'aller au-delà d'un certain niveau, habituellement le niveau de crête (0dB) ou quelque chose qui s'en rapproche. Beaucoup de limiteurs ont une option pour augmenter le niveau du signal entrant avant de le limiter, ce qui permet de "resserer l'écart" entre les parties les plus fortes et les parties les plus calmes de votre mix. 
Un limiteur peut-être utilisé sur le bus _Master_ pour empêcher l'ensemble du mix de saturer. Les limiteurs sont quasiment toujours utilisés post-atténuateurs.

Dans l'exemple ci-dessous, on utilise un greffon nommé _Fast Lookahead Limiter_ (si vous ne le trouvez pas dans vos greffons déjà installés, cherchez-en un autre avec "Limiter"). Pour régler le niveau de limitation, ajustez simplement le réglage _Limit (dB)_.
Le greffon _Fast Lookahead Limiter_ observe le signal avec une avance de quelques millisecondes et quand il voit que celui-ci est proche de dépasser la limite que vous avez définie, il baisse automatiquement le niveau.

![limiter](en/ardour7-fast-lookahead-lmiter.png?width=500)

Le réglage _Input Gain (dB)_ détermine la manière dont les niveaux sont augmentés avant d'atteindre le limiteur, le vue-mètre _Attenuation (dB)_ du côté droit montre la manière dont les niveaux sont réduits à n'importe quel moment.
Alors que la réduction du volume est quasiment instantanée, le réglage _Release time (s)_ (temps de relâche) détermine la durée mise par le limiteur pour retourner au 0dB de l'_Attenuation_.

Notez que plus "dur" est le réglage du limiteur (en augmentant le gain d'entrée et/ou en diminuant la limite de pic autorisée), plus le limiteur est forcé de faire une réduction et plus il sera probable que des artefacts du processus apparaisent (comme de la distortion ou des changements erratiques de volume).
Sur le bus _Master_, il est généralement mieux d'éviter une limitation excessive.  

## Compression

Un _compresseur_ augmente le volume global d'un son, mais ensuite l'"écrase" en fonction de la force de son volume. Cela peut mettre en avant les voix ou faire sonner les batteries plus complètes et plus fortes. L'effet final est similaire à la façon dont un limiteur peut réduire l'écart entre le son le plus fort et le son le plus faible, même si l'effet est plus sélectif quand on utilise un compresseur.

Un compresseur type aura obligatoirement ces contrôles :

**Seuil**
: Détermine le niveau à partir duquel le compresseur commencera à agir.


**Ratio**
: Contrôle la façon dont le compresseur va "écraser" le son.

**Attaque** et **Relâchement**
: Contrôle la rapidité du compresseur pour agir sur le son.

![ACE Compressor](en/ardour7-ace-compressor.png?width=450)

Le greffon _ACE Compressor_ sur la capture d'écran ci-dessus a deux contrôles en plus:

**Niveau de seuil** (en dB)
: Détermine le niveau à partir duquel le compresseur va compresser ou écraser le son.

**Gain additionnel**
: Augmente l'ensemble du signal après l'application de la compression.

Pour adoucir une voix, par exemple, vous pouvez régler le _Threshold level_ aux envrions de -10dB et le _Ratio_ sur 2.5, ensuite remonter le volume avec le _Makeup gain_. Les trois autres contrôles — _Attack time_, _Release time_, _Knee_ — vous permettent de contrôler la forme de la compression.

Pour une compression douce de voix, vous pourriez vouloir un temps d'attaque semi-rapide afin que le compresseur attrape le début de chaque mot, un temps de relâchement plus lent pour laisser la voix retentir ainsi qu'un angle de genou doux pour créer une forme de compression en douceur qui ne serait pas trop perceptible. 

Si vous voulez faire en sorte que la batterie sonne de manière imposante, vous pouvez essayer un temps d'attaque lent comme ça vous ne compressez pas l'attaque du fût, un temps de relâchement rapide comme ça le compresseur peut attraper la prochaine frappe, ainsi qu'un fort ratio pour faire en sorte que la dynamique entre le début et la fin de la frappe du fût soit similaire. 

Voici une capture d'écran d'un compresseur similaire qui vient de [LSP plugins
suite](https://lsp-plug.in/): 

{{< figure alt="LSP Compressor Mono" src="en/ardour7-lsp-compressor-mono.png" >}}

Si vous voulez accélérer dans l'apprentisage de l'utilisation d'un compresseur, une bonne idée en général est d'insérer un greffon de visualisation d'un oscilloscope avant le compresseur et un autre juste après, puis d'ouvrir les deux.
 
## Gating

La forme la plus simple d'un _gate_ (déclencehur) autorise un signal à passer au travers au dessus d'un certain niveau et bloque le signal lorsqu'il est en deça de ce niveau.  

Les "gates" sont souvent utilisés pour faire office de réducteur de bruit. Par exemple, un gate sur la piste d'un microphone pourrait s'ouvrir uniquement lorsque le chanteur ou la chanteuse chante, ce qui empêche les bruits de fond d'être entendus quand il/elle ne chante pas. Utiliser un "gate" sur une batterie est un truc assez connu dans le monde de l'enregistrement afin de la faire mieux sonner.

Ici, nous avons le greffon _Hard Gate_ (issu d'une suite de greffons LADSPA appelée 
[CMT](https://www.ladspa.org/cmt/overview.html)) qui présente un seul paramètre de contrôle: le _Threshold_ (seuil) à partir duquel le "gate" va s'ouvrir et laisser passer le signal.

![Hard Gate](en/ardour7-hard-gate.png?width=400)


D'autres types de "gates", comme le greffon _LSP Gate_ présenté sur la capture d'écran ci-dessous, sont plus complexes. Ils ont un contrôle indépendant sur la rapidité à laquelle le "gate" s'ouvre (_Attack_) et se referme (_Release_), ainsi que d'autres paramètres assez similaires à ceux décrits pour le SC Compressor ci-dessus.

{{< figure alt="LSP Gate" src="en/ardour7-lsp-gate-mono.png" >}}

## Poursuivre

Maintenant que nous avons exploré quelques outils pour positionner la plage dynamique là où vous le souhaitez, il est temps de procéder au réglage de la balance des fréquences présentes dans chaque piste individuelle et dans votre mix global.
Dans le prochain chapitre, nous apprendrons comment utiliser l'égaliseur pour faire cela correctement.

Suite: [ÉGALISER](../equalizing)
