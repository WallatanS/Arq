import 'package:flutter/material.dart';
import 'package:viveiromobile/commons/scanfoldcompoentestelas/floatingactionbuttonwidget.dart';
import 'listacervo.dart';

class AcervoScreeen extends StatefulWidget {
  final int opcao;
  final int id;

  const AcervoScreeen(this.opcao, this.id, {Key? key}) : super(key: key);

  @override
  State<AcervoScreeen> createState() => _AcervoScreeenState();
}

class _AcervoScreeenState extends State<AcervoScreeen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(252, 253, 246, 1),
        appBar: AppBar(
          title: const Text('Acervo'),
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
          index: 0,
          children: <Widget>[
            AcervoArvore(widget.id),
            //AcervoSemente(id),
            //AcervoMuda(id),
          ],
        ),
        floatingActionButton:
            floatingactionbuttonWidgetedit(widget.opcao, widget.id),
        //bottomNavigationBar: BottonNavigatorBar(opcaoSelecionada),
      ),
    );
  }
}
