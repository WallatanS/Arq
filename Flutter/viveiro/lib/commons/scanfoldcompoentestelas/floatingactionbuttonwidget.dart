import 'package:flutter/material.dart';
import 'package:flutter_viveiro/screens/cadastro/cadastroscreen.dart';

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