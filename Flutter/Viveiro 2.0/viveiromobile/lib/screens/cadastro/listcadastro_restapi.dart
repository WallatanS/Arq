import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/commons/textfild.dart';
import 'package:viveiromobile/repositories/user_repository.dart';

import '../../commons/botonlogin.dart';

class AcervoArvore extends StatelessWidget {
  const AcervoArvore({super.key});

  @override
  Widget build(BuildContext context) {
    final _repository = UserRepository(Dio());
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
      child: Column(children: [
        const SizedBox(height: 16),
        const Text(
          'Adicionar Foto', // Texto acima do campo TextFormField
          style: TextStyle(
            fontSize: 18,
            //fontWeight: FontWeight.bold,
            //textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            //
            // if (result != null) {
            //   String? filePath = result.files.single.path;
            //   // Faça o que você precisa com o caminho do arquivo selecionado
            //   print('Caminho do arquivo: $filePath');
            // }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(32),
            backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
          ),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: const [
              SizedBox(height: 16),
              TextFieldCad('ID', '1'),
              TextFieldCad('Estagio', 'semente'),
              TextFieldCad('Especie', 'cad'),
              TextFieldCad('Adubação', ''),
              TextFieldCad('Altura da planta', ''),
              TextFieldCad('Altura do fuste', ''),
              TextFieldCad('Formacao da copa', ''),
              TextFieldCad('formacao do tronco', ''),
              TextFieldCad('municipio', ''),
              TextFieldCad('Endereço', ''),
              TextFieldCad('Latitude', ''),
              TextFieldCad('Longitude', ''),
              TextFieldCad('Altitude', ''),
              TextFieldCad('tipo de solo', ''),
              TextFieldCad('tipo de vegetação', ''),
              TextFieldCad('nome do determinador', ''),
              TextFieldCad('inst. determinador', ''),
              TextFieldCad('CAP', ''),
              TextFieldCad('Densidade de Ocorrencia', ''),
              TextFieldCad('Area de coleta', ''),
              TextFieldCad('Outras Especies associadas', ''),
              TextFieldCad('Observações', ''),
              SizedBox(height: 40),
            ],
          ),
        ),
        const SizedBox(height: 16),
        botonLogin(context, 'Salvar'),
      ]),
    );
  }
}
