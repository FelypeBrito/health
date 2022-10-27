import 'package:flutter/material.dart';
import 'package:health/formulario.dart';
import 'package:health/home.dart';

void main() {
  runApp(const Formulario());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF3E4095),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset(
                    'imagens/topo_saude 4.png',
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
