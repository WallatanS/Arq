import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/models/user_model.dart';
import 'package:viveiromobile/repositories/user_repository.dart';

import '../../commons/textfild.dart';

class AcervoArvore extends StatefulWidget {
  final int id;
  const AcervoArvore(this.id, {Key? key}) : super(key: key);

  @override
  State<AcervoArvore> createState() => _AcervoArvoreState();
}

class _AcervoArvoreState extends State<AcervoArvore> {
  final _repository = UserRepository(Dio());

  @override
  Widget build(BuildContext context) {
    String id = widget.id.toString();
    return FutureBuilder<UserModel>(
      future: _repository.findById(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          final plantas = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/arvore.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFieldSample('ID', plantas!.id.toString()),
                TextFieldSample('Nome Comum', plantas.nomeComum),
                TextFieldSample('Nome Cientifico', plantas.nomeCientifico),
                TextFieldSample(
                    'Altura Arvore', plantas.alturaArvore.toString()),
                TextFieldSample('Altura Fuste', plantas.alturaFuste.toString()),
                TextFieldSample('CAP', plantas.cap.toString()),
                TextFieldSample('Formacao Copa', plantas.formacaoCopa),
                TextFieldSample('Formacao Tronco', plantas.formacaoTronco),
                TextFieldSample('Densidade Ocorrencia',
                    plantas.densidadeOcorrencia.toString()),
                TextFieldSample('UF', plantas.uf),
                TextFieldSample('Cidade', plantas.cidade),
                TextFieldSample('Tipo Solo', plantas.tipoSolo),
                TextFieldSample('Tipo Vegetação', plantas.tipoVegetacao),
                TextFieldSample('Endereço Coleta', plantas.enderecoColeta),
                TextFieldSample('Latitude', plantas.latitude.toString()),
                TextFieldSample('Longitude', plantas.longitude.toString()),
                TextFieldSample('Altitude', plantas.altitude.toString()),
                TextFieldSample(
                    'Especies Associadas', plantas.especiesAssociadas),
                TextFieldSample('Quantidade de Sementes',
                    plantas.quantidadeSementes.toString()),
                TextFieldSample('Observacoes', plantas.observacoes),
                const SizedBox(height: 40),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
