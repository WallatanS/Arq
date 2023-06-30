import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  final String nome, dado;
  final bool status;

  const TextFieldSample(this.status,this.nome, this.dado, {Key? key}) : super(key: key);

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  late String name, dado;
  late bool status;

  @override
  void initState() {
    super.initState();
    name = widget.nome;
    dado = widget.dado;
    status = widget.status;
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
                enabled: status,
                //hintText: name,
                labelText: '   $dado',
                labelStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
                border: InputBorder.none, // Remover as bordas
              ),
            ),
          ),
        ],
      ),
    );
  }
}