---
title: Exporter une région
description: Comment exporter des régions dans Ardour
weight: 2
cascade:
  type: docs
---

Vous pouvez souhaiter n'exporter qu'une partie de votre session, par exemple pour l'utiliser comme échantillon dans une autre application, ou pour l'éditer dans un autre programme. Ce chapitre vous montre comment procéder.

## Exporter une région

Pour exporter une région, selectionnez la dans le mode _Grab_ et cliquez-droit dans le sous-menu _Export_, ou utilisez le menu principal : `Region > Export`.

![exporter une région](en/ardour7-export-region-in-right-click-menu.png?width=600)

Cela ouvrira la même boîte de dialogue d'exportation que celle expliquée dans le chapitre [Exporter des sessions](../exporting-a-session). Choisissez vos options et cliquez **Export**. Seule la région selectionnée sera exportée.

{{< callout type="info" >}}
Tous les paramètres et toutes les modifications ne sont pas pris en compte lors de l'exportation d'une région.
Les régions rognées, divisées, étirées et inversées peuvent être exportées, les éditions telles que le panoramique et l'automatisation ne sont _pas_ exportées.
{{< /callout >}}

De même, le volume de la piste audio elle-même ou du bus _Master_ n'affecte pas le fichier exporté.
Pour exporter ces éditions, veuillez consulter les chapitres sur l'exportation d'un intervalle et l'exportation d'une session.

## Exporter plusieurs régions à la fois

Si vous créez une collection d'échantillons que vous utiliserez plus tard dans un autre logiciel et que vos échantillons sont essentiellement des régions découpées et éditées, vous devrez, à la fin du processus, toutes les exporter. Si leur nombre est important, les exporter manuellement peut s'avérer fastidieux. Voici une façon d'exporter plusieurs régions à la fois.

1. Dans le mode _Grab_ (raccourci **G**), selectionnez toutes les régions que vous voulez exporter. Elles n'ont pas besoin d'être situées sur la même piste.

{{< figure alt="exporter région" src="en/ardour7-export-multiple-regions-1.png" >}}

2. Allez dans le menu `Region > Ranges` et choisissez _Add Range Marker Per Region_.

{{< figure alt="exporter région" src="en/ardour7-export-multiple-regions-2.png" >}}

3. Ardour vient de créer des marqueurs de intervalle qui correspondent exactement au début et à la fin des régions sélectionnées (voir les rectangles verts dans la règle des marqueurs d'intervalle) :

{{< figure alt="exporter région" src="en/ardour7-export-multiple-regions-3.png" >}}

4. Allez dans le menu `Session > Export` et choisissez _Export to Audio File(s)_ (**Alt+E**).

5. Dans la boîte de dialogue d'exportation, cliquez sur l'onglet _Time span_. Vous verrez que tous les intervalles nouvellement créées y sont répertoriés. Il existe également un intervalle par défaut qui représente l'ensemble de la session. 

6. Dans _Time Span_, cliquez **Select All** et désélectionnez le tout premier intervalle (l'intervalle "session"). La raison est que nous voulons exporter des régions plus courtes, pas la session entière.

{{< figure alt="exporter region" src="en/ardour7-export-multiple-regions-4.png" >}}

7. Retournez sur l'onglet principal (_File format_) et cliquez sur **Export**.

Vos régions ont maintenant été exportées dans des fichiers audio.

{{< callout type="info" >}}
Cette méthode exporte *tout* ce qui se trouve dans chaque intervalle de temps défini. En d'autres termes, si vous avez d'autres régions dans d'autres pistes qui sonnent en même temps que les régions que vous voulez exporter, elles seront mélangées.
Une autre façon de voir les choses est la suivante : l'opération d'exportation va exporter tout ce qui *joue* dans les intervalles temporels définis. Si ce n'est pas ce que vous voulez, vous pouvez utiliser les boutons solo ou mute sur certaines pistes pour vous assurer de n'exporter que ce que vous voulez.
{{< /callout >}}

## Poursuivre

Enfin, le prochain chapitre traitera de l'exportation d'intervalles plutôt que d'une région individuelle. La dernière astuce (exporter plusieurs régions en même temps) en fait, impliquait déjà l'utilisation d'intervalles, comme vous l'avez peut-être deviné.

Suivant : [EXPORTER UN INTERVALLE](../exporting-a-range)
