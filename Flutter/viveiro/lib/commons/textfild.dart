import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  final String nome, dado;

  const TextFieldSample(this.nome, this.dado, {super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  late String name, dado;

  @override
  void initState() {
    super.initState();
    name = widget.nome;
    dado = widget.dado;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '   $name', // Texto acima do campo TextFormField
              style: const TextStyle(
              fontSize: 18,
              //fontWeight: FontWeight.bold,
              //textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 4),
          Container(
              //width: MediaQuery.of(context).size.width * .80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color.fromRGBO(222, 229, 216, 1),
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              //textInputAction: TextInputAction.next,
              //obscureText: true,
              decoration: InputDecoration(
                enabled: false,
                //hintText: name,
                labelText: '   $dado',
                labelStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
                border: InputBorder.none, // Remover as bordas
                //focusedBorder: InputBorder.none, // Remover as bordas quando o campo está em foco
                //errorBorder: InputBorder.none, // Remover as bordas de erro
                //disabledBorder: InputBorder.none, // Remover as bordas quando o campo está desabilitado
                //enabledBorder: InputBorder.none, // Remover as bordas quando o campo está habilitado
              ),
              ),
            ),
        ],
      ),
      );
  }
}

class TextFieldCad extends StatefulWidget {
  final String nome, dado;
  const TextFieldCad(this.nome, this.dado,{super.key});

  @override
  State<TextFieldCad> createState() => _TextFieldCadState();
}

class _TextFieldCadState extends State<TextFieldCad> {
  late String name, dado;

  @override
  void initState() {
    super.initState();
    name = widget.nome;
    dado = widget.dado;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   '   $name', // Texto acima do campo TextFormField
          //   style: const TextStyle(
          //     fontSize: 18,
          //     //fontWeight: FontWeight.bold,
          //     //textAlign: TextAlign.left,
          //   ),
          // ),
          //const SizedBox(height: 4),
          Container(
            //width: MediaQuery.of(context).size.width * .80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(222, 229, 216, 1),
            ),
            child:
            TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              obscureText: true,
              decoration: InputDecoration(
                enabled: true,
                //hintText: '   $name',
                labelText: '   $name',
                labelStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
                border: InputBorder.none, // Remover as bordas
                focusedBorder: InputBorder.none, // Remover as bordas quando o campo está em foco
                errorBorder: InputBorder.none, // Remover as bordas de erro
                disabledBorder: InputBorder.none, // Remover as bordas quando o campo está desabilitado
                enabledBorder: InputBorder.none, // Remover as bordas quando o campo está habilitado
              ),
            ),
          ),
        ],
      ),
    );
  }
}
