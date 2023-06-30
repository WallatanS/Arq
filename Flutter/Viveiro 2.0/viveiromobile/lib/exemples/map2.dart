import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomListItem {
  final String nomeComum;
  final String nomeCientifico;
  final double alturaArvore;
  final double alturaFuste;
  final String cap;
  final String formacaoCopa;
  final String formacaoTronco;
  final double densidadeOcorrencia;
  final String uf;
  final String cidade;
  final String tipoSolo;
  final String tipoVegetacao;
  final String enderecoColeta;
  final String nomeDeterminador;
  final double latitude;
  final double longitude;
  final double altitude;
  final String especiesAssociadas;
  final int quantidadeSementes;
  final String observacoes;
  final String imagemMatriz;

  CustomListItem({
    required this.nomeComum,
    required this.nomeCientifico,
    required this.alturaArvore,
    required this.alturaFuste,
    required this.cap,
    required this.formacaoCopa,
    required this.formacaoTronco,
    required this.densidadeOcorrencia,
    required this.uf,
    required this.cidade,
    required this.tipoSolo,
    required this.tipoVegetacao,
    required this.enderecoColeta,
    required this.nomeDeterminador,
    required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.especiesAssociadas,
    required this.quantidadeSementes,
    required this.observacoes,
    required this.imagemMatriz,
  });
}

class MyWidget extends StatelessWidget {
  final String bancoUrl = 'http://localhost:8080/arvoreMatriz/save';

  Future<List<CustomListItem>> fetchData() async {
    final response = await http.get(Uri.parse(bancoUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) {
        return CustomListItem(
          nomeComum: item['nomeComum'],
          nomeCientifico: item['nomeCientifico'],
          alturaArvore: item['alturaArvore'].toDouble(),
          alturaFuste: item['alturaFuste'].toDouble(),
          cap: item['cap'],
          formacaoCopa: item['formacaoCopa'],
          formacaoTronco: item['formacaoTronco'],
          densidadeOcorrencia: item['densidadeOcorrencia'].toDouble(),
          uf: item['uf'],
          cidade: item['cidade'],
          tipoSolo: item['tipoSolo'],
          tipoVegetacao: item['tipoVegetacao'],
          enderecoColeta: item['enderecoColeta'],
          nomeDeterminador: item['nomeDeterminador'],
          latitude: item['latitude'].toDouble(),
          longitude: item['longitude'].toDouble(),
          altitude: item['altitude'].toDouble(),
          especiesAssociadas: item['especiesAssociadas'],
          quantidadeSementes: item['quantidadeSementes'],
          observacoes: item['observacoes'],
          imagemMatriz: item['imagemMatriz'],
        );
      }).toList();
    } else {
      throw Exception('Failed to fetch data from the database.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CustomListItem>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<CustomListItem>? data = snapshot.data;
          return ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListTile(
                title: Text(item.nomeComum),
                subtitle: Text(item.nomeCientifico),

                // Outros campos de dados podem ser exibidos aqui
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
