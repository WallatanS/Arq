import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/models/user_model.dart';
import 'package:viveiromobile/repositories/user_repository.dart';
import 'package:viveiromobile/screens/home/home_screen.dart';
import 'package:http/http.dart' as http;
import '../../commons/textfild.dart';

class AcervoArvoreedit extends StatefulWidget {
  final int id;
  const AcervoArvoreedit(this.id, {Key? key}) : super(key: key);

  @override
  State<AcervoArvoreedit> createState() => _AcervoArvoreeditState();
}

class _AcervoArvoreeditState extends State<AcervoArvoreedit> {
  final _repository = UserRepository(Dio());
  final idEditingController = TextEditingController();
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
    String id_ = widget.id.toString();
    return FutureBuilder<UserModel>(
      future: _repository.findById(id_),
      // ignore: dead_code
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final plantas = snapshot.data;
          //idEditingController.text = plantas?.id;
          nomeComumEditingController.text = plantas!.nomeComum;
          nomeCientificoEditingController.text = plantas.nomeCientifico;
          alturaArvoreEditingController.text = plantas.alturaArvore.toString();
          alturaFusteEditingController.text = plantas.alturaFuste.toString();
          capEditingController.text = plantas.cap.toString();
          formacaoCopaEditingController.text = plantas.formacaoCopa;
          formacaoTroncoEditingController.text = plantas.formacaoTronco;
          densidadeOcorrenciaEditingController.text =
              plantas.densidadeOcorrencia.toString();
          ufEditingController.text = plantas.uf;
          cidadeEditingController.text = plantas.cidade;
          tipoSoloEditingController.text = plantas.tipoSolo;
          tipoVegetacaoEditingController.text = plantas.tipoVegetacao;
          enderecoColetaEditingController.text = plantas.enderecoColeta;
          nomeDeterminadorEditingController.text = plantas.nomeDeterminador;
          latitudeEditingController.text = plantas.latitude.toString();
          longitudeEditingController.text = plantas.longitude.toString();
          altitudeEditingController.text = plantas.altitude.toString();
          especiesAssociadasEditingController.text = plantas.especiesAssociadas;
          quantidadeSementesEditingController.text =
              plantas.quantidadeSementes.toString();
          observacoesEditingController.text = plantas.observacoes;
          imagemMatrizEditingController.text = plantas.imagemMatriz;
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
                TextFildUpdtate('ID', '',
                    TextEditingController(text: plantas!.id.toString()), false),
                TextFildUpdtate(
                    'Nome Comum',
                    '',
                    TextEditingController(text: plantas!.nomeComum.toString()),
                    true),
                TextFildUpdtate('Nome Científico', '',
                    nomeCientificoEditingController, true),
                TextFildUpdtate(
                    'Altura Arvore', '', alturaArvoreEditingController, true),
                TextFildUpdtate(
                    'Altura Fuste', '', alturaFusteEditingController, true),
                TextFildUpdtate('CAP', '', capEditingController, true),
                TextFildUpdtate(
                    'Formação Copa', '', formacaoCopaEditingController, true),
                TextFildUpdtate('Formação Tronco', '',
                    formacaoTroncoEditingController, true),
                TextFildUpdtate('densidadeOcorrencia', '',
                    densidadeOcorrenciaEditingController, true),
                TextFildUpdtate('uf', '', ufEditingController, true),
                TextFildUpdtate('Cidade', '', cidadeEditingController, true),
                TextFildUpdtate(
                    'tipoSolo', '', tipoSoloEditingController, true),
                TextFildUpdtate(
                    'tipoVegetacao', '', tipoVegetacaoEditingController, true),
                TextFildUpdtate('enderecoColeta', '',
                    enderecoColetaEditingController, true),
                TextFildUpdtate('nomeDeterminador', '',
                    nomeDeterminadorEditingController, true),
                TextFildUpdtate(
                    'latitude', '', latitudeEditingController, true),
                TextFildUpdtate(
                    'longitude', '', longitudeEditingController, true),
                TextFildUpdtate(
                    'altitude', '', nomeComumEditingController, true),
                TextFildUpdtate('especiesAssociadas', '',
                    especiesAssociadasEditingController, true),
                TextFildUpdtate('especiesAssociadas', '',
                    especiesAssociadasEditingController, true),
                TextFildUpdtate(
                    'tipoVegetacao', '', tipoVegetacaoEditingController, true),
                TextFildUpdtate(
                    'observacoes', '', observacoesEditingController, true),
                TextFildUpdtate(
                    'imagemMatriz', '', imagemMatrizEditingController, true),
                ElevatedButton(
                  onPressed: () async {
                    await _repository.update(UserModel(
                      id: widget.id,
                      nomeComum: nomeComumEditingController.text,
                      nomeCientifico: nomeCientificoEditingController.text,
                      alturaArvore: alturaArvoreEditingController.text,
                      alturaFuste: nomeComumEditingController.text,
                      cap: capEditingController.text,
                      formacaoCopa: formacaoCopaEditingController.text,
                      formacaoTronco: formacaoTroncoEditingController.text,
                      densidadeOcorrencia:
                          densidadeOcorrenciaEditingController.text,
                      uf: ufEditingController.text,
                      cidade: cidadeEditingController.text,
                      tipoSolo: tipoSoloEditingController.text,
                      tipoVegetacao: tipoVegetacaoEditingController.text,
                      enderecoColeta: enderecoColetaEditingController.text,
                      nomeDeterminador: nomeDeterminadorEditingController.text,
                      latitude: latitudeEditingController.text,
                      longitude: longitudeEditingController.text,
                      altitude: altitudeEditingController.text,
                      especiesAssociadas:
                          especiesAssociadasEditingController.text,
                      quantidadeSementes:
                          quantidadeSementesEditingController.text,
                      observacoes: observacoesEditingController.text,
                      imagemMatriz: imagemMatrizEditingController.text,
                    ));
                    updateuser(id: widget.id);
                    setState(() {});
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConstrutorHome()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(24), // Borda arredondada
                    ),
                  ),
                  child: const Text(
                    'Salvar',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        }
        return Container();
      },
    );
  }

  void updateuser({required int id}) async {
    var url = Uri.parse('http://192.168.56.1:8080/arvoreMatriz/find/$id');
    var response = await http.put(url);
    if (response.statusCode == 200) {
      await ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Salvo com sucesso'),
        backgroundColor: Colors.greenAccent,
      ));
      Navigator.pop(context);
    }
  }
}
