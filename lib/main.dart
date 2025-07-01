/*
5 ) Calculadora de suma de dos números
Consigna:
Crear una app que permita ingresar dos números y mostrar la suma al presionar un botón.
Requisitos:
• Un Scaffold con AppBar titulado "Calculadora Simple".
• En el body, un Column que contenga:
• Dos valores enteros predefinidos (por ejemplo, numero1 = 5, numero2 =
3), mostrados con widgets Text.
• Un botón que diga "Sumar" y al presionarlo muestre un Text con el resultado
de la suma.
• Un botón que diga "Reiniciar" y vuelva a ocultar el resultado.
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
      title: "Calculadora",
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int n1 = 5;
  int n2 = 3;
  int resultado = 0;

  void _sumar() {
    setState(() {
      resultado = n1 + n2;
    });
  }

  void _reiniciar() {
    setState(() {
      resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora simple"), //cambiamos el titulo del appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("numero1 = $n1"), //primer elemento texto dinamico con valor de n1
            Text("numero2 = $n2"), //segundo elemento texto dinamico con valor de n2
            const SizedBox(height: 20), //tercer elemento espacio
            ElevatedButton( //cuarto elemento boton de sumar
              onPressed: _sumar,
              child: const Text("Sumar"),
            ),
            const SizedBox(height: 10), //quinto elemento espacio
            ElevatedButton( //sexto elemento boton reiniciar
              onPressed: _reiniciar,
              child: const Text("Reiniciar",),
            ),
            const SizedBox(height: 20), //sexto elemento espacio
            if (resultado != 0)
              Text( //septimo elemento texto con resultado de suma
                "Resultado $n1 + $n2 = $resultado",
              ),
          ],
        ),
      ),
    );
  }
}
