import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:viveiromobile/commons/textfildenable.dart';

class ArqUrl {
  final int id;
  final String nomeComum;
  final String nomeCientifico;
  final double alturaArvore;
  final double alturaFuste;
  //final String cap; //erro
  final String formacaoCopa;
  final String formacaoTronco;
  final double densidadeOcorrencia;
  final String uf;
  final String cidade;
  final String tipoSolo;
  //final String tipoVegetacao; //erro
  final String enderecoColeta;
  final String nomeDeterminador;
  //final double latitude; //erro
  final double longitude;
  final double altitude;
  final String especiesAssociadas;
  final int quantidadeSementes;
  final String observacoes;
  final String imagemMatriz;

  ArqUrl({
    required this.id,
    required this.nomeComum,
    required this.nomeCientifico,
    required this.alturaArvore,
    required this.alturaFuste,
    //required this.cap,
    required this.formacaoCopa,
    required this.formacaoTronco,
    required this.densidadeOcorrencia,
    required this.uf,
    required this.cidade,
    required this.tipoSolo,
    //required this.tipoVegetacao,
    required this.enderecoColeta,
    required this.nomeDeterminador,
    //required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.especiesAssociadas,
    required this.quantidadeSementes,
    required this.observacoes,
    required this.imagemMatriz,
  });
}

class EditAcervoArvore extends StatefulWidget {
  final int id;
  const EditAcervoArvore(this.id, {Key? key}) : super(key: key);

  @override
  State<EditAcervoArvore> createState() => _EditAcervoArvoreState();
}

class _EditAcervoArvoreState extends State<EditAcervoArvore> {
  late int _id;
  late String bancoUrl;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    print('id $_id');
    bancoUrl = 'http://10.77.53.102:8080/arvoreMatriz/find/$_id';
  }

  Future<ArqUrl> fetchData() async {
    final response = await http.get(Uri.parse(bancoUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return ArqUrl(
        id: data['id'],
        nomeComum: data['nomeComum'],
        nomeCientifico: data['nomeCientifico'],
        alturaArvore: double.parse(data['alturaArvore'].toString()),
        alturaFuste: double.parse(data['alturaFuste'].toString()),
        //cap: data['cap'], //erro
        formacaoCopa: data['formacaoCopa'],
        formacaoTronco: data['formacaoTronco'],
        densidadeOcorrencia: double.parse(data['densidadeOcorrencia'].toString()),
        uf: data['uf'],
        cidade: data['cidade'],
        tipoSolo: data['tipoSolo'],
        //tipoVegetacao: data['tipoVegetacao'], //erro
        enderecoColeta: data['enderecoColeta'],
        nomeDeterminador: data['nomeDeterminador'],
        //latitude: double.parse(data['latitude'].toString()), //erro
        longitude: double.parse(data['longitude'].toString()),
        altitude: double.parse(data['altitude'].toString()),
        especiesAssociadas: data['especiesAssociadas'],
        quantidadeSementes: data['quantidadeSementes'],
        observacoes: data['observacoes'],
        imagemMatriz: data['imagemMatriz'],
      );
    } else {
      throw Exception('Failed to fetch data from the database.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArqUrl>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final ArqUrl? data = snapshot.data;
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
                  ),),
                const SizedBox(height: 16),
                TextFieldSample(false, 'ID', data?.id.toString() ?? ''),
                TextFieldSample(true, 'Nome Comum', data?.nomeComum ?? ''),
                TextFieldSample(true, 'Nome Cientifico', data?.nomeCientifico ?? ''),
                TextFieldSample(true, 'Altura Arvore', data?.alturaArvore.toString() ?? ''),
                TextFieldSample(true, 'Altura Fuste', data?.alturaFuste.toString() ?? ''),
                //TextFieldSample('CAP', data?.cap ?? ''),
                TextFieldSample(true, 'Formacao Copa', data?.formacaoCopa ?? ''),
                TextFieldSample(true, 'Formacao Tronco', data?.formacaoTronco ?? ''),
                TextFieldSample(true, 'Densidade Ocorrencia', data?.densidadeOcorrencia.toString() ?? ''),
                TextFieldSample(true, 'UF', data?.uf ?? ''),
                TextFieldSample(true, 'Cidade', data?.cidade ?? ''),
                TextFieldSample(true, 'Tipo Solo', data?.tipoSolo ?? ''),
                //TextFieldSample('Tipo Vegetação', data?.tipoVegetacao ?? ''),
                TextFieldSample(true, 'Endereço Coleta', data?.enderecoColeta ?? ''),
                //TextFieldSample('Latitude', data?.latitude.toString() ?? ''),
                TextFieldSample(true, 'Longitude', data?.longitude.toString() ?? ''),
                TextFieldSample(true, 'Altitude', data?.altitude.toString() ?? ''),
                TextFieldSample(true, 'Especies Associadas', data?.especiesAssociadas ?? ''),
                TextFieldSample(true, 'Quantidade de Sementes', data?.quantidadeSementes.toString() ?? ''),
                TextFieldSample(true, 'Observacoes', data?.observacoes ?? ''),
                const SizedBox(height: 40),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
