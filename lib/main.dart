/*
2) Fila de botones
Consigna:
Crear una app que contenga:
• Un Scaffold con AppBar titulada "Ejercicio 2".
• En el body, mostrar una Row centrada con tres botones (ElevatedButton).
• Cada botón debe tener una etiqueta diferente: "Rojo", "Verde" y "Azul".
• Al presionar un botón, debe mostrarse un Text debajo de la fila indicando qué color fue
seleccionado.
Sugerencia:
Usar setState() para cambiar el contenido del Text.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ejercicio 2",
      home: Ejercicio2(),
    );
  }
}

class Ejercicio2 extends StatefulWidget {
  const Ejercicio2({super.key});

  @override
  State<Ejercicio2> createState() => _Ejercicio2State();
}

class _Ejercicio2State extends State<Ejercicio2> {
  // esta variable se usara en el texto que muestra el color seleccionado
  String _colorSeleccionado = "";

  // para actualizar el contenido de la variable segun el color seleccionado
  void _seleccionarColor(String color) {
    setState(() {
      _colorSeleccionado = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 2"), //cambiamos el titulo del appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // creamos la fila que mantendra centrados los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ //primer elemento: boton Rojo
                ElevatedButton(
                  onPressed: () => _seleccionarColor("Rojo"),
                  child: const Text("Rojo"),
                ),
                const SizedBox(width: 20), // segundo elemento espacio entre botones
                ElevatedButton( //tercer elemento boton verde
                  onPressed: () => _seleccionarColor("Verde"),
                  child: const Text("Verde"),
                ),
                const SizedBox(width: 20), //cuarto elemento espacio entre botones
                ElevatedButton( //quinto elemento boton azul
                  onPressed: () => _seleccionarColor("Azul"),
                  child: const Text("Azul"),
                ),
              ],
            ),

            const SizedBox(height: 30), // espacio que separa la row del texto 

            // texto que muestra el color seleccionado
            if (_colorSeleccionado.isNotEmpty)
              Text(
                "Color seleccionado: $_colorSeleccionado",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
