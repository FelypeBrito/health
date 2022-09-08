import 'package:flutter/material.dart';
import 'package:health/consultaRepositorio.dart';

import 'package:health/consultas.dart';
import 'package:health/formulario.dart';

class Homepage extends StatefulWidget {
  String medico;
  String especialidade;
  String data;
  String local;
  String historico;
  String exames;

  Homepage({
    required this.medico,
    required this.especialidade,
    required this.data,
    required this.local,
    required this.historico,
    required this.exames,
  }) : super();

  List<Consulta> listConsulta = [];

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(
          medico: widget.medico,
          especialidade: widget.especialidade,
          data: widget.data,
          local: widget.local,
          historico: widget.historico,
          exames: widget.exames),
    );
  }
}

class Home extends StatefulWidget {
  String medico;
  String especialidade;
  String data;
  String local;
  String historico;
  String exames;

  Home({
    Key? key,
    required this.medico,
    required this.especialidade,
    required this.data,
    required this.local,
    required this.historico,
    required this.exames,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> listProdutos = [];
  final tabela = ConsultaRepositorio.tabela;
  int cont = ConsultaRepositorio.cont;

  //List<Consulta> listConsultas = [];

  @override
  Widget build(BuildContext context) {
    /*List<Consulta> listConsultas = [
      Consulta(
          medico: widget.medico,
          especialidade: widget.especialidade,
          data: widget.data,
          local: widget.local,
          historico: widget.historico,
          exames: widget.exames)
    ];*/
    print('Tamanho Tabela: ${tabela.length}');
    /*if (tabela.length == 0) {
      tabela.;
      cont++;
    }*/

    tabela.add(
      Consulta(
          medico: widget.medico,
          especialidade: widget.especialidade,
          data: widget.data,
          local: widget.local,
          historico: widget.historico,
          exames: widget.exames),
    );

    listProdutos.add((widget.medico.toString()));

    return Scaffold(
      appBar: AppBar(
        title: Text('Meu histórico'),
        backgroundColor: Color(0xFF3E4095),
      ),
      body: ListView.builder(
        itemCount: tabela.length,
        itemBuilder: (context, indice) {
          return ListTile(
            title: Text(tabela[indice].medico),
            subtitle: Text(tabela[indice].especialidade),
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
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Formulario(),
            ),
          ),
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFF3E4095),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
