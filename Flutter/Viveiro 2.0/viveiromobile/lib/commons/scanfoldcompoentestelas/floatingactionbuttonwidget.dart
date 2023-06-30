import 'package:flutter/material.dart';
import 'package:viveiromobile/screens/cadastro/cadastroscreen.dart';
import 'package:viveiromobile/screens/edit/editscreen.dart';

class floatingactionbuttonWidget extends StatefulWidget {
  final int opcao;
  const floatingactionbuttonWidget(this.opcao,{
    super.key,
  });

  @override
  State<floatingactionbuttonWidget> createState() => _floatingactionbuttonWidgetState();
}
class _floatingactionbuttonWidgetState extends State<floatingactionbuttonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
      onPressed: () {
        Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  CadastroScreeen(widget.opcao)),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

class floatingactionbuttonWidgetedit extends StatefulWidget {
  final int opcao;
  final int id;
  const floatingactionbuttonWidgetedit(this.opcao, this.id,{super.key});

  @override
  State<floatingactionbuttonWidgetedit> createState() => _floatingactionbuttonWidgeteditState();
}

class _floatingactionbuttonWidgeteditState extends State<floatingactionbuttonWidgetedit> {

  late int _id, opcao;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    opcao = widget.opcao;
    print('id $_id');
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  EditScreen(widget.opcao, widget.id)),
        );
      },
      child: const Icon(Icons.edit),
    );
  }
}
