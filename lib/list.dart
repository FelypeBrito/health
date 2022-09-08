/*import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  criarListView() {
    var lista = <String>[];

    for (int i = 0; i <= 100; i++)
      return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.camera),
            title: Text('${lista[index]} foi selecionado'),
            subtitle: Text('Exemplo de subtitulo'),
            onTap: () {
              print('${lista[index]} foi selecionado');
            },
          );
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return criarListView();
  }
}*/
