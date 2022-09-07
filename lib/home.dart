import 'package:flutter/material.dart';

import 'package:health/formulario.dart';

class homepage extends StatefulWidget {
  String medico;
  String especialidade;
  String data;
  String local;
  String historico;
  String exames;

  homepage({
    Key? key,
    required this.medico,
    required this.especialidade,
    required this.data,
    required this.local,
    required this.historico,
    required this.exames,
  }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> listProdutos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu histórico'),
        backgroundColor: Color(0xFF3E4095),
      ),
      body: ListView.builder(
        itemCount: listProdutos.length,
        itemBuilder: (context, indice) {
          return ListTile(
            title: Text(listProdutos[indice]),
          );
        },
      ),
      backgroundColor: Color(0xFFD4E7FC),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 63.0,
          color: Color(0xFF3E4095),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => Formulario())),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFF3E4095),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
