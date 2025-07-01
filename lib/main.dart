/*
3) Información personal
Consigna:
Crear una app con:
• AppBar con el título "Mi Perfil".
• En el body, usar un Column para mostrar:
• Tu nombre en un Text.
• Tu edad en otro Text.
• Un botón que diga "Actualizar edad" que, al presionarse, aumente en 1 la edad
mostrada.
Objetivo del ejercicio:
Practicar el uso de estado (con setState) para actualizar datos en pantalla.
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
      title: "Mi Perfil",
      home: MiPerfil(),
    );
  }
}

class MiPerfil extends StatefulWidget {
  const MiPerfil({super.key});

  @override
  State<MiPerfil> createState() => _MiPerfilState();
}

class _MiPerfilState extends State<MiPerfil> {
  int _edad = 29;

  // para incrementar la edad al resionar el boton
  void _actualizarEdad() {
    setState(() {
      _edad++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi perfil"), //cambiamos el titulo del appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text( //primer elemento texto nombre
              "Milena Abigail Peletay",
            ),
            const SizedBox(height: 10), //segundo elemento espacio
            Text( //tercer elemento texto dinamico con edad
              "$_edad años",
            ),
            const SizedBox(height: 20), //cuarto elemento espacio
            ElevatedButton( //quinto elemento boton
              onPressed: _actualizarEdad,
              child: const Text("Actualizar edad"),
            ),
          ],
        ),
      ),
    );
  }
}
