import 'package:flutter/material.dart';

import 'homepage.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formularioScreen(),
    );
  }
}

class formularioScreen extends StatefulWidget {
  const formularioScreen({Key? key}) : super(key: key);

  @override
  State<formularioScreen> createState() => _formularioScreenState();
}

class _formularioScreenState extends State<formularioScreen> {
  TextEditingController txtmedico = TextEditingController();
  TextEditingController txtespecialidade = TextEditingController();
  TextEditingController txtdata = TextEditingController();
  TextEditingController txtlocal = TextEditingController();
  TextEditingController txthistorico = TextEditingController();
  TextEditingController txtexames = TextEditingController();

  void Salvar() {
    setState(() {
      String medico;
      String especialidade;
      String data;
      String local;
      String historico;
      String exames;

      medico = txtmedico as String;
      especialidade = txtespecialidade as String;
      data = txtdata as String;
      local = txtlocal as String;
      historico = txthistorico as String;
      exames = txtexames as String;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => homepage(
              medico: medico,
              especialidade: especialidade,
              data: data,
              local: local,
              historico: historico,
              exames: exames),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preencher os dados'),
        backgroundColor: Color(0xFF3E4095),
      ),
      backgroundColor: Color.fromARGB(255, 197, 241, 255),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
                      child: TextField(
                        controller: txtmedico,
                        decoration: InputDecoration(
                            icon: Icon(Icons.account_box),
                            labelText: 'Médico',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white54),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 150,
                        ),
                        child: TextField(
                          controller: txtespecialidade,
                          maxLines: null,
                          decoration: InputDecoration(
                            icon: Icon(Icons.medical_services_outlined),
                            labelText: 'Especialidade',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                      child: TextField(
                        controller: txtdata,
                        decoration: InputDecoration(
                          icon: Icon(Icons.access_time),
                          labelText: 'Data da Consulta',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                      child: TextField(
                        controller: txtlocal,
                        decoration: InputDecoration(
                          icon: Icon(Icons.location_on_outlined),
                          labelText: 'Local',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 150,
                        ),
                        child: TextField(
                          controller: txtexames,
                          maxLines: null,
                          decoration: InputDecoration(
                            icon: Icon(Icons.checklist_outlined),
                            labelText: 'Exames',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 18),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 150,
                        ),
                        child: TextField(
                          controller: txthistorico,
                          maxLines: null,
                          decoration: InputDecoration(
                            icon: Icon(Icons.assignment_outlined),
                            labelText: 'Histórico Clínico',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: Salvar,
                    child: Text('Cadrastrar'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffff04d361),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
