import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ArqUrl {
  final int id;
  final String nomeComum;
  final String nomeCientifico;
  final double alturaArvore;
  final double alturaFuste;
  final String formacaoCopa;
  final String formacaoTronco;
  final double densidadeOcorrencia;
  final String uf;
  final String cidade;
  final String tipoSolo;
  final String enderecoColeta;
  final String nomeDeterminador;
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
    required this.formacaoCopa,
    required this.formacaoTronco,
    required this.densidadeOcorrencia,
    required this.uf,
    required this.cidade,
    required this.tipoSolo,
    required this.enderecoColeta,
    required this.nomeDeterminador,
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
  late ArqUrl _data;
  late TextEditingController _nomeComumController;
  late TextEditingController _nomeCientificoController;
  late TextEditingController _alturaArvoreController;
  late TextEditingController _alturaFusteController;
  late TextEditingController _formacaoCopaController;
  late TextEditingController _formacaoTroncoController;
  late TextEditingController _densidadeOcorrenciaController;
  late TextEditingController _ufController;
  late TextEditingController _cidadeController;
  late TextEditingController _tipoSoloController;
  late TextEditingController _enderecoColetaController;
  late TextEditingController _nomeDeterminadorController;
  late TextEditingController _longitudeController;
  late TextEditingController _altitudeController;
  late TextEditingController _especiesAssciadasController;
  late TextEditingController _quantidadeSementesController;
  late TextEditingController _observacoesController;
  late TextEditingController _imagemMatrizController;
  // Adicione os outros controladores para os campos que podem ser atualizados

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    bancoUrl = 'http://10.77.53.102:8080/arvoreMatriz/find/$_id';
    _data = ArqUrl(
      id: 0,
      nomeComum: '',
      nomeCientifico: '',
      alturaArvore: 0,
      alturaFuste: 0,
      formacaoCopa: '',
      formacaoTronco: '',
      densidadeOcorrencia: 0,
      uf: '',
      cidade: '',
      tipoSolo: '',
      enderecoColeta: '',
      nomeDeterminador: '',
      longitude: 0,
      altitude: 0,
      especiesAssociadas: '',
      quantidadeSementes: 0,
      observacoes: '',
      imagemMatriz: '',
    );
    _nomeComumController = TextEditingController();
    _nomeCientificoController = TextEditingController();
    _nomeComumController = TextEditingController();
    _nomeCientificoController = TextEditingController();
    _alturaArvoreController = TextEditingController();
    _alturaFusteController = TextEditingController();
    _formacaoCopaController = TextEditingController();
    _formacaoTroncoController = TextEditingController();
    _densidadeOcorrenciaController = TextEditingController();
    _ufController = TextEditingController();
    _cidadeController = TextEditingController();
    _tipoSoloController = TextEditingController();
    _enderecoColetaController = TextEditingController();
    _nomeDeterminadorController = TextEditingController();
    _longitudeController = TextEditingController();
    _altitudeController = TextEditingController();
    _especiesAssciadasController = TextEditingController();
    _quantidadeSementesController = TextEditingController();
    _observacoesController = TextEditingController();
    _imagemMatrizController = TextEditingController();
    // Inicialize os outros controladores
    fetchData();
  }

  @override
  void dispose() {
    _nomeComumController.dispose();
    _nomeCientificoController.dispose();
    _alturaArvoreController.dispose();
    _alturaFusteController.dispose();
    _formacaoCopaController.dispose();
    _formacaoTroncoController.dispose();
    _densidadeOcorrenciaController.dispose();
    _ufController.dispose();
    _cidadeController.dispose();
    _tipoSoloController.dispose();
    _enderecoColetaController.dispose();
    _nomeDeterminadorController.dispose();
    _longitudeController.dispose();
    _altitudeController.dispose();
    _especiesAssciadasController.dispose();
    _quantidadeSementesController.dispose();
    _observacoesController.dispose();
    _imagemMatrizController.dispose();
    // Dispose os outros controladores
    super.dispose();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(bancoUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        _data = ArqUrl(
          id: data['id'],
          nomeComum: data['nomeComum'],
          nomeCientifico: data['nomeCientifico'],
          alturaArvore: double.parse(data['alturaArvore'].toString()),
          alturaFuste: double.parse(data['alturaFuste'].toString()),
          formacaoCopa: data['formacaoCopa'],
          formacaoTronco: data['formacaoTronco'],
          densidadeOcorrencia: double.parse(data['densidadeOcorrencia'].toString()),
          uf: data['uf'],
          cidade: data['cidade'],
          tipoSolo: data['tipoSolo'],
          enderecoColeta: data['enderecoColeta'],
          nomeDeterminador: data['nomeDeterminador'],
          longitude: double.parse(data['longitude'].toString()),
          altitude: double.parse(data['altitude'].toString()),
          especiesAssociadas: data['especiesAssociadas'],
          quantidadeSementes: data['quantidadeSementes'],
          observacoes: data['observacoes'],
          imagemMatriz: data['imagemMatriz'],
        );
        // Atualize os valores dos controladores
        _nomeComumController.text = _data.nomeComum;
        _nomeCientificoController.text = _data.nomeCientifico;
        _alturaArvoreController.text = _data.alturaArvore.toString();
        _alturaFusteController.text = _data.alturaFuste.toString();
        _formacaoCopaController.text = _data.formacaoCopa;
        _formacaoTroncoController.text = _data.formacaoTronco;
        _densidadeOcorrenciaController.text = _data.densidadeOcorrencia.toString();
        _ufController.text = _data.uf;
        _cidadeController.text = _data.cidade;
        _tipoSoloController.text = _data.tipoSolo;
        _enderecoColetaController.text = _data.enderecoColeta;
        _nomeDeterminadorController.text = _data.nomeDeterminador;
        _longitudeController.text = _data.longitude.toString();
        _altitudeController.text = _data.altitude.toString();
        _especiesAssciadasController.text = _data.especiesAssociadas;
        _quantidadeSementesController.text = _data.quantidadeSementes.toString();
        _observacoesController.text = _data.observacoes;
        _imagemMatrizController.text = _data.imagemMatriz;


        // Atualize os valores dos outros controladores
      });
    } else {
      throw Exception('Failed to fetch data from the database.');
    }
  }

  Future<void> updateData(String field, String value) async {
    final url = 'http://10.77.53.102:8080/arvoreMatriz/update';
    final response = await http.put(
      Uri.parse(url),
      body: {
        'id': _id.toString(),
        'nomeComum': value,
        //'value': value,
      },
    );

    if (response.statusCode == 200) {
      // Dados atualizados com sucesso
      print('Dados atualizados com sucesso.');
    } else {
      // Houve um erro ao atualizar os dados
      print('Erro ao atualizar os dados.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            TextFieldSample(
              nome: 'Nome Comum',
              dado: _nomeComumController.text,
              status: true,
              onEditingComplete: (value) {
                updateData('nomeComum', value);
              },
              controller: _nomeComumController,
            ),
            /*TextFieldSample(
              nome: 'Nome Cientifico',
              dado: _nomeCientificoController.text,
              status: true,
              onChanged: (value) {
                updateData('nomeCientifico', value);
              },
              controller: _nomeCientificoController,
            ),

            TextFieldSample(
              nome: 'Altura Arvore',
              dado: _alturaArvoreController.text,
              status: true,
              onChanged: (value) {
                updateData('alturaArvore', value);
              },
              controller: _alturaArvoreController,
            ),

            TextFieldSample(
              nome: 'Altura Fuste',
              dado: _alturaFusteController.text,
              status: true,
              onChanged: (value) {
                updateData('alturaFuste', value);
              },
              controller: _alturaFusteController,
            ),

            TextFieldSample(
              nome: 'formacao Copa',
              dado: _formacaoCopaController.text,
              status: true,
              onChanged: (value) {
                updateData('formacaoCopa', value);
              },
              controller: _formacaoCopaController,
            ),
            TextFieldSample(
              nome: 'formacao Tronco',
              dado: _formacaoTroncoController.text,
              status: true,
              onChanged: (value) {
                updateData('formacao Tronco', value);
              },
              controller: _formacaoTroncoController,
            ),
            TextFieldSample(
              nome: 'densidade Ocorrencia',
              dado: _densidadeOcorrenciaController.text,
              status: true,
              onChanged: (value) {
                updateData('densidadeOcorrencia', value);
              },
              controller: _densidadeOcorrenciaController,
            ),
            TextFieldSample(
              nome: 'UF',
              dado: _ufController.text,
              status: true,
              onChanged: (value) {
                updateData('uf', value);
              },
              controller: _ufController,
            ),
            TextFieldSample(
              nome: 'Cidade',
              dado: _cidadeController.text,
              status: true,
              onChanged: (value) {
                updateData('cidade', value);
              },
              controller: _cidadeController,
            ),
            TextFieldSample(
              nome: 'Tipo Solo',
              dado: _tipoSoloController.text,
              status: true,
              onChanged: (value) {
                updateData('tipoSolo', value);
              },
              controller: _tipoSoloController,
            ),
            TextFieldSample(
              nome: 'Endereco Coleta',
              dado: _enderecoColetaController.text,
              status: true,
              onChanged: (value) {
                updateData('enderecoColeta', value);
              },
              controller: _enderecoColetaController,
            ),
            TextFieldSample(
              nome: 'Nome Determinador',
              dado: _nomeDeterminadorController.text,
              status: true,
              onChanged: (value) {
                updateData('nomeDeterminador', value);
              },
              controller: _nomeDeterminadorController,
            ),
            TextFieldSample(
              nome: 'Longitude',
              dado: _longitudeController.text,
              status: true,
              onChanged: (value) {
                updateData('longitude', value);
              },
              controller: _longitudeController,
            ),
            TextFieldSample(
              nome: 'Altiude',
              dado: _altitudeController.text,
              status: true,
              onChanged: (value) {
                updateData('altitude', value);
              },
              controller: _altitudeController,
            ),
            TextFieldSample(
              nome: 'Especies Associadas',
              dado: _especiesAssciadasController.text,
              status: true,
              onChanged: (value) {
                updateData('especiesAssociadas', value);
              },
              controller: _especiesAssciadasController,
            ),
            TextFieldSample(
              nome: 'Quantidade Sementes',
              dado: _quantidadeSementesController.text,
              status: true,
              onChanged: (value) {
                updateData('quantidadeSementes', value);
              },
              controller: _quantidadeSementesController,
            ),
            TextFieldSample(
              nome: 'Observações',
              dado: _observacoesController.text,
              status: true,
              onChanged: (value) {
                updateData('observacoes', value);
              },
              controller: _observacoesController,
            ),


            // Adicione outros TextFieldSamples para os campos que podem ser atualizados*/
          ],
        ),
      ),
    );
  }
}

class TextFieldSample extends StatelessWidget {
  final String nome;
  final String dado;
  final bool status;
  final void Function(String) onEditingComplete;
  final TextEditingController controller;

  const TextFieldSample({
    required this.nome,
    required this.dado,
    required this.status,
    required this.onEditingComplete,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nome,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          //onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
            enabled: status,
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

