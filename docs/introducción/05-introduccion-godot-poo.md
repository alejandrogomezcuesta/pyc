# Introducción a Godot y programación orientada a objetos

<!-- markdownlint-disable MD024 MD060 -->

## Introducción a Godot

Godot es un motor para crear videojuegos y aplicaciones interactivas. Una aplicación se organiza en **escenas**. Cada escena contiene un árbol de **nodos**: cada nodo representa un elemento con una función concreta, como una ventana (`Control`), una etiqueta (`Label`), una entrada de texto (`LineEdit`) o un botón (`Button`).

El flujo básico de trabajo es el siguiente:

1. Se crea un proyecto, que contiene las escenas, los scripts y los recursos.
2. Se crea una escena y se añade un nodo raíz.
3. Se añaden nodos hijos para formar la interfaz. Los contenedores, como `VBoxContainer`, organizan automáticamente esos nodos.
4. Se configura cada nodo desde el **Inspector**, por ejemplo cambiando el texto de un `Label`.
5. Se adjunta un script GDScript al nodo que controla la escena.
6. Al ejecutar la escena, Godot crea los nodos, llama a `_ready()` y espera acciones de la persona usuaria, como pulsar un botón.

En los ejercicios de [práctica con cinco ejercicios independientes](06-ejercicios-godot.md), el botón emite la señal `pressed`. El script conecta esa señal con una función, lee el texto de los `LineEdit`, realiza la operación y cambia el texto del `Label` de resultado.

## Relación con la programación orientada a objetos

Godot utiliza objetos y clases para representar los elementos de una escena:

- **Clase:** `Control`, `Label`, `LineEdit`, `Button` y `VBoxContainer` son clases con propiedades, funciones y señales ya definidas.
- **Objeto o instancia:** cada nodo que se añade a la escena es un objeto concreto de una de esas clases. Por ejemplo, `PrecioInput` es una instancia de `LineEdit`.
- **Herencia:** `extends Control` indica que el script usa `Control` como clase base. El script hereda su comportamiento y le añade funciones propias, como `calcular_total()`.
- **Composición:** la escena se construye agrupando objetos: el `Control` contiene un `VBoxContainer`, y este contiene etiquetas, entradas, botones y resultados.
- **Encapsulación:** cada script mantiene juntas las referencias a sus controles y las funciones que trabajan con ellos. Desde fuera solo hace falta pulsar el botón para iniciar el cálculo.
- **Comunicación mediante señales:** `pressed.connect(...)` permite que un objeto (`Button`) avise a otro comportamiento cuando ocurre una acción, sin que el botón tenga que conocer los detalles del cálculo.

No es necesario crear clases nuevas para esta práctica. Se usan las clases que Godot ya proporciona y se especializa el nodo raíz mediante un script.
