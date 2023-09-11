import 'package:flutter/material.dart';
import 'package:viveiromobile/screens/edit/listedit_restapi.dart';

class EditScreen extends StatefulWidget {
  final int id;
  final int opcao;

  const EditScreen(this.opcao, this.id, {super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  int opcaoSelecionada = 0;
  int _id = 0;

  void initState() {
    super.initState();
    _id = widget.id;
    print(_id);
    opcaoSelecionada = widget.opcao;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Editar'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(40, 108, 42, 1),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  'assets/images/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        body: IndexedStack(
          index: opcaoSelecionada,
          children: <Widget>[
            AcervoArvoreedit(_id),
          ],
        ),
      ),
    );
  }
}
