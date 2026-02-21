---
title: Iniciar Ardour
description: Iniciar Ardour en Ubuntu Linux, primeros pasos
weight: 2
cascade:
  type: docs
---

Ardour es compatible con Linux, Windows y macOS. Hay muy pocas diferencias
en la forma en que funciona en estos sistemas operativos. Por lo tanto,
aunque este tutorial asume el uso de Ubuntu Linux, deberías esperar que
funcione de la misma manera en otros sistemas operativos y distribuciones
de Linux.

## Asistente de configuración inicial

Cuando inicias Ardour por primera vez, se te harán algunas preguntas para
realizar una personalización básica: interfaz de usuario y escala de fuente
(si tienes una pantalla HiDPI), carpeta predeterminada donde se crearán las
nuevas sesiones, método preferido para monitorizar la señal que se está
grabando, etc.

{{< figure src="en/ardour7-gui-and-font-scaling.png" alt="Escalado de la interfaz y la fuente" >}}

Este diálogo no volverá a mostrarse, a menos que borres todos los ajustes.
Puedes cambiar en cualquier momento todas las preferencias que definas aquí
desde el diálogo de _Preferencias_.

## Crear una nueva sesión

Una vez que hayas superado el asistente de configuración inicial, Ardour te sugerirá crear una nueva _sesión_ a partir de una de las plantillas disponibles.

{{< figure src="en/ardour7-new-session-templates.png" alt="Plantillas de nueva sesión" >}}

Una sesión engloba todo el material que tienes: pistas con datos de audio y
MIDI, efectos asociados a pistas y buses, etc. Por lo tanto, una sesión es
esencialmente un archivo de proyecto desde el cual puedes renderizar un
archivo de audio mono o estéreo para entregarlo a un cliente, usarlo en un
vídeo o subirlo a un servicio de streaming.

Por simplicidad, elijamos una sesión vacía como se muestra arriba.

Ardour siempre sugerirá automáticamente guardar una nueva sesión en la
carpeta predeterminada que configuraste en el paso anterior.

Al asignar un nombre a una nueva sesión, evita usar caracteres distintos de
letras y números, como espacios en blanco, letras acentuadas, `!@#$%*()+`,
puntos, comas, etc. Usa guiones o guiones bajos si lo deseas. Por ejemplo, en lugar de "My Great Session!", usa "My_Great_Session",
"MyGreatSession" o "my-great-session". En lugar de "Açaí", escribe "Acai"
(sin letras acentuadas), etc.

La configuración predeterminada del marco temporal afecta principalmente a
las reglas y los marcadores. Con "Audio Time" se habilita el conjunto de
reglas con minutos, segundos y código de tiempo. Con "Musical Time" se
habilitan las reglas de tiempo musical — Compases:Tiempos, Compás, Tempo.

Asigna un nombre a tu nuevo proyecto y haz clic en **Abrir**.

Una vez que hayas creado tu sesión de Ardour, _no_ cambies manualmente el
nombre de ninguna carpeta o archivo que pertenezca a la sesión. De lo
contrario, Ardour no podrá localizar los archivos dentro de esas carpetas y
te pedirá que indiques su ubicación.

> [!NOTE]
> Una vez que hayas guardado al menos una sesión, el diálogo de
> _Configuración de sesión_ se verá diferente: habrá una lista de sesiones
> abiertas recientemente y una opción para abrir una sesión existente que
> no esté en esa lista.

## Elegir el sistema de audio y su configuración

En el siguiente paso, deberás elegir y configurar el _sistema de audio_.

Para obtener más detalles sobre cómo seleccionar el backend de audio,
consulta [este capítulo](/using-your-gear/audio-interfaces/).

Una vez que hayas elegido, configurado e iniciado el backend de audio/MIDI,
Ardour intentará detectar nuevos plugins y, a continuación, se mostrará la
ventana principal de Ardour:

{{< figure src="en/ardour7-ardour-empty-session.png" alt="Ventana principal de Ardour, sesión vacía" >}}

**Continuación**

En el próximo capítulo te familiarizarás con la interfaz de usuario de
Ardour y sus ventanas principales: Editor, Mezclador, Grabador y Cue.
