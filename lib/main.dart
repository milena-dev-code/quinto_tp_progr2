/*
1) Mi primera pantalla
Consigna:
Crear una app con un Scaffold que contenga:
• Un AppBar con el título "Bienvenido a Flutter".
• Un Column en el body que incluya:
• Un Text con el mensaje "Hola, este es mi primer ejercicio en Flutter".
• Un ElevatedButton que al presionarlo muestre un texto diferente debajo (puede
cambiarse un estado o mostrar un nuevo widget).
Resultado esperado:
Al presionar el botón, aparece un nuevo mensaje como "¡Botón presionado!".
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
      title: 'Primera Pantalla',
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatefulWidget {
  const PrimeraPantalla({super.key});

  @override
  State<PrimeraPantalla> createState() => _PrimeraPantallaState();
}

class _PrimeraPantallaState extends State<PrimeraPantalla> {
  String _mensaje = ""; 

  // actualiza el mensaje luego de presionar el boton
  void _mostrarMensaje() {
    setState(() {
      _mensaje = "Boton presionado";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenido a flutter"), //appbar con el titulo
      ),
      body: Center(
        child: Column( //columna que organiza los elementos del body
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hola, este es mi primer ejercicio",
            ), //primer elemento texto con mensaje
            const SizedBox(height: 20), //segundo elemento espacio
            ElevatedButton(
              onPressed: _mostrarMensaje,
              child: const Text("Presioname"),
            ), //tercer elemento boton con texto presioname
            const SizedBox(height: 20), //cuarto elemento espacio
            if (_mensaje.isNotEmpty) //condicional que verifica si la variable no tiene caracteres
              Text( //quinto elemento,texto
                _mensaje, //los caracteres que muestra el elemento text son controlados por la funcion
              ),
          ],
        ),
      ),
    );
  }
}
