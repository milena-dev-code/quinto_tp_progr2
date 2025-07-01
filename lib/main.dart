/*
4) Contador múltiple
Consigna:
Crear una app que contenga:
• Un Scaffold con un AppBar titulado "Contadores".
• Un Column con dos contadores independientes:
• Cada contador debe tener:
• Un Text que muestre el valor.
• Un botón para incrementarlo.
• Debajo, un botón que diga "Reiniciar" y ponga ambos contadores en 0.
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
      title: "Contadores",
      home: Contadores(),
    );
  }
}

class Contadores extends StatefulWidget {
  const Contadores({super.key});

  @override
  State<Contadores> createState() => _ContadoresState();
}

class _ContadoresState extends State<Contadores> {
  int _c1 = 0;
  int _c2 = 0;

  void _incrementarC1() {
    setState(() {
      _c1++;
    });
  }

  void _incrementarC2() {
    setState(() {
      _c2+=2;
    });
  }

  void _reiniciar() {
    setState(() {
      _c1 = 0;
      _c2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contadores"), //cambiamos el titulo del appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_c1'), //primer elemento el valor dinamico del contador 1
            ElevatedButton( //segundo elemento el boton de incrementar
              onPressed: _incrementarC1,
              child: const Text("Incrementar +1"),
            ),
            const SizedBox(height: 30),//tercer elemento espacio
           
            Text('$_c2',), //cuarto elemento texto dinamico con valor del contador 2
            ElevatedButton( //quinto elemento boton c2
              onPressed: _incrementarC2,
              child: const Text("Incrementar +2"),
            ),
            const SizedBox(height: 40),//sexto elemento espacio
            ElevatedButton( //septimo elemento boton reinicio
              onPressed: _reiniciar,
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 54, 54, 244)),
              child: const Text("Reiniciar", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
