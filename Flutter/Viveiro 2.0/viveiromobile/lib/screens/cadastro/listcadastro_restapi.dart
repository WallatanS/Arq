import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/commons/textfild.dart';
import 'package:viveiromobile/models/user_model.dart';
import 'package:viveiromobile/repositories/user_repository.dart';
import 'package:viveiromobile/screens/home/homescreen.dart';

class AcervoArvore extends StatefulWidget {
  const AcervoArvore({super.key});

  @override
  State<AcervoArvore> createState() => _AcervoArvoreState();
}

class _AcervoArvoreState extends State<AcervoArvore> {
  final _repository = UserRepository(Dio());
  final nomeComumEditingController = TextEditingController();
  final nomeCientificoEditingController = TextEditingController();
  final alturaArvoreEditingController = TextEditingController();
  final alturaFusteEditingController = TextEditingController();
  final capEditingController = TextEditingController();
  final formacaoCopaEditingController = TextEditingController();
  final formacaoTroncoEditingController = TextEditingController();
  final densidadeOcorrenciaEditingController = TextEditingController();
  final ufEditingController = TextEditingController();
  final cidadeEditingController = TextEditingController();
  final tipoSoloEditingController = TextEditingController();
  final tipoVegetacaoEditingController = TextEditingController();
  final enderecoColetaEditingController = TextEditingController();
  final nomeDeterminadorEditingController = TextEditingController();
  final latitudeEditingController = TextEditingController();
  final longitudeEditingController = TextEditingController();
  final altitudeEditingController = TextEditingController();
  final especiesAssociadasEditingController = TextEditingController();
  final quantidadeSementesEditingController = TextEditingController();
  final observacoesEditingController = TextEditingController();
  final imagemMatrizEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
      child: ListView(children: [
        const SizedBox(height: 16),
        Form(
          child: Column(
            children: [
              TextFieldCad('Nome Comum', '', nomeComumEditingController),
              TextFieldCad(
                  'Nome Científico', '', nomeCientificoEditingController),
              TextFieldCad('Altura Arvore', '', alturaArvoreEditingController),
              TextFieldCad('Altura Fuste', '', alturaFusteEditingController),
              TextFieldCad('CAP', '', capEditingController),
              TextFieldCad('Formação Copa', '', formacaoCopaEditingController),
              TextFieldCad(
                  'Formação Tronco', '', formacaoTroncoEditingController),
              TextFieldCad('densidadeOcorrencia', '',
                  densidadeOcorrenciaEditingController),
              TextFieldCad('uf', '', ufEditingController),
              TextFieldCad('Cidade', '', cidadeEditingController),
              TextFieldCad('tipoSolo', '', tipoSoloEditingController),
              TextFieldCad('tipoVegetacao', '', tipoVegetacaoEditingController),
              TextFieldCad(
                  'enderecoColeta', '', enderecoColetaEditingController),
              TextFieldCad(
                  'nomeDeterminador', '', nomeDeterminadorEditingController),
              TextFieldCad('latitude', '', latitudeEditingController),
              TextFieldCad('longitude', '', longitudeEditingController),
              TextFieldCad('altitude', '', nomeComumEditingController),
              TextFieldCad('especiesAssociadas', '',
                  especiesAssociadasEditingController),
              TextFieldCad('especiesAssociadas', '',
                  especiesAssociadasEditingController),
              TextFieldCad('tipoVegetacao', '', tipoVegetacaoEditingController),
              TextFieldCad('observacoes', '', observacoesEditingController),
              TextFieldCad('imagemMatriz', '', imagemMatrizEditingController),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () async {
            await _repository.save(UserModel(
              nomeComum: nomeComumEditingController.text,
              nomeCientifico: nomeCientificoEditingController.text,
              alturaArvore: alturaArvoreEditingController.text,
              alturaFuste: nomeComumEditingController.text,
              cap: capEditingController.text,
              formacaoCopa: formacaoCopaEditingController.text,
              formacaoTronco: formacaoTroncoEditingController.text,
              densidadeOcorrencia: densidadeOcorrenciaEditingController.text,
              uf: ufEditingController.text,
              cidade: cidadeEditingController.text,
              tipoSolo: tipoSoloEditingController.text,
              tipoVegetacao: tipoVegetacaoEditingController.text,
              enderecoColeta: enderecoColetaEditingController.text,
              nomeDeterminador: nomeDeterminadorEditingController.text,
              latitude: latitudeEditingController.text,
              longitude: longitudeEditingController.text,
              altitude: altitudeEditingController.text,
              especiesAssociadas: especiesAssociadasEditingController.text,
              quantidadeSementes: quantidadeSementesEditingController.text,
              observacoes: observacoesEditingController.text,
              imagemMatriz: imagemMatrizEditingController.text,
            ));
            setState(() {});
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ConstrutorHome()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green, // Cor de fundo do botão
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24), // Borda arredondada
            ),
          ),
          child: const Text(
            'Salvar',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        )
      ]),
    );
  }
}
