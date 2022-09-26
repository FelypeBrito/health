import 'package:flutter/material.dart';
import 'package:health/formulario.dart';
import 'package:health/home.dart';
import 'package:health/main.dart';

class FichaDetalhe extends StatefulWidget {
  String medico;
  String especialidade;
  String data;
  String local;
  String historico;
  String exames;

  FichaDetalhe(
      {Key? key,
      required this.medico,
      required this.especialidade,
      required this.data,
      required this.local,
      required this.historico,
      required this.exames})
      : super(key: key);
  @override
  State<FichaDetalhe> createState() => FichaDetalheState();
}

class FichaDetalheState extends State<FichaDetalhe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFD4E7FC),
        appBar: AppBar(
          title: Text('Detalhes'),
          backgroundColor: const Color(0xFF3E4095),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Médico: '),
                  subtitle: Text(widget.medico),
                ),
              ),
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Especialidade: '),
                  subtitle: Text(widget.especialidade),
                ),
              ),
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Data da Consulta: '),
                  subtitle: Text(widget.data),
                ),
              ),
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Local: '),
                  subtitle: Text(widget.local),
                ),
              ),
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Exames: '),
                  subtitle: Text(widget.exames),
                ),
              ),
              Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: ListTile(
                  title: Text('Histórico: '),
                  subtitle: Text(widget.historico),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
