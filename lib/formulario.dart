import 'package:flutter/material.dart';
import 'package:health/consultas.dart';
import 'package:health/home.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormularioScreen(),
    );
  }
}

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({Key? key}) : super(key: key);

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  TextEditingController txtmedico = TextEditingController();
  TextEditingController txtespecialidade = TextEditingController();
  TextEditingController txtdata = TextEditingController();
  TextEditingController txtlocal = TextEditingController();
  TextEditingController txthistorico = TextEditingController();
  TextEditingController txtexames = TextEditingController();

  void salvar() {
    setState(() {
      String medico;
      String especialidade;
      String data;
      String local;
      String historico;
      String exames;

      medico = txtmedico.text;
      especialidade = txtespecialidade.text;
      data = txtdata.text;
      local = txtlocal.text;
      historico = txthistorico.text;
      exames = txtexames.text;

      Consulta dados = Consulta(
        medico: medico,
        especialidade: especialidade,
        data: data,
        local: local,
        historico: historico,
        exames: exames,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => Homepage(
                medico: dados.medico,
                especialidade: dados.especialidade,
                data: dados.data,
                local: dados.local,
                historico: dados.historico,
                exames: dados.exames)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preencher os dados'),
        backgroundColor: const Color(0xFF3E4095),
      ),
      backgroundColor: const Color(0xFFD4E7FC),
      body: SingleChildScrollView(
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
                      decoration: const InputDecoration(
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
                      constraints: const BoxConstraints(
                        maxHeight: 150,
                      ),
                      child: TextField(
                        controller: txtespecialidade,
                        maxLines: null,
                        decoration: const InputDecoration(
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
                      decoration: const InputDecoration(
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
                      decoration: const InputDecoration(
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
                      constraints: const BoxConstraints(
                        maxHeight: 150,
                      ),
                      child: TextField(
                        controller: txtexames,
                        maxLines: null,
                        decoration: const InputDecoration(
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
                      constraints: const BoxConstraints(
                        maxHeight: 150,
                      ),
                      child: TextField(
                        controller: txthistorico,
                        maxLines: null,
                        decoration: const InputDecoration(
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
                  onPressed: salvar,
                  child: const Text('Cadrastrar'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff04d361),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              )
            ]),
      ),
    );
  }
}
