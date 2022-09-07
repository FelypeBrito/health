import 'package:flutter/material.dart';
import 'package:health/diego.dart';

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
