import 'dart:convert';
import 'package:flutter/material.dart';
import '../commons/customlistitem.dart';
import 'package:http/http.dart' as http;

class arqUrl {
  final int id;
  final String nomeComum;
  final String nomeCientifico;
  /*
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
  */
  final String observacoes;
  final String imagemMatriz;

  arqUrl({
    required this.id,
    required this.nomeComum,
    required this.nomeCientifico,
    /*
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
    */
    required this.observacoes,
    required this.imagemMatriz,
  });
}

class ArvoreMatrixURL extends StatelessWidget {
  final String bancoUrl = 'http://192.168.0.5:8080/arvoreMatriz/find/all';
  final http.Client client = http.Client();

  Future<List<arqUrl>> fetchData() async {
    final response =
        await client.get(Uri.parse(bancoUrl)).timeout(Duration(seconds: 30));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) {
        return arqUrl(
          id: item['id'],
          nomeComum: item['nomeComum'],
          nomeCientifico: item['nomeCientifico'],
          observacoes: item['observacoes'],
          imagemMatriz: item['imagemMatriz'],
        );
      }).toList();
    } else {
      print('texto ${response.statusCode}');
      throw Exception('Failed -- to fetch data from the database.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<arqUrl>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<arqUrl>? data = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                for (final item in data!)
                  CustListItem(
                    title: item.nomeComum,
                    subtitle: item.nomeCientifico,
                    imageJSON: item.imagemMatriz,
                    id: item.id,
                    backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
                    opcao: 0,
                  ),
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

/*
class SementeMatrixURL extends StatelessWidget {
  final String bancoUrl = 'http://10.77.53.102/arvoreMatriz/all';
  Future<List<arqUrl>> fetchData() async {
    final response = await http.get(Uri.parse(bancoUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) {
        return arqUrl(
          id: item['id'],
          nomeComum: item['nomeComum'],
          nomeCientifico: item['nomeCientifico'],
          alturaArvore: item['alturaArvore'],
          alturaFuste: item['alturaFuste'],
          cap: item['cap'],
          formacaoCopa: item['formacaoCopa'],
          formacaoTronco: item['formacaoTronco'],
          densidadeOcorrencia: item['densidadeOcorrencia'],
          uf: item['uf'],
          cidade: item['cidade'],
          tipoSolo: item['tipoSolo'],
          tipoVegetacao: item['tipoVegetacao'],
          enderecoColeta: item['enderecoColeta'],
          nomeDeterminador: item['nomeDeterminador'],
          latitude: item['latitude'],
          longitude: item['longitude'],
          altitude: item['altitude'],
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

  final String jsonImage =
      '{"image": "data:image/png;base64,iVBORw0KG..."}'; // Exemplo de imagem em formato JSON

  Uint8List convertJsonToPng(String json) {
    final imageData = jsonDecode(json)['image'];
    final bytes = base64Decode(imageData.split(',').last);
    return bytes;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<arqUrl>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<arqUrl>? data = snapshot.data;
          return ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListView(
                children: [
                  CustListItem(
                    title: item.nomeComum,
                    subtitle: item.observacoes,
                    imageUrl: item.imagemMatriz,
                    id: item.id,
                    backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
                    opcao: 1,
                  ),
                ],
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

class MudaMatrixURL extends StatelessWidget {
  final String bancoUrl = 'http://10.77.53.102/arvoreMatriz/all';
  Future<List<arqUrl>> fetchData() async {
    final response = await http.get(Uri.parse(bancoUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) {
        return arqUrl(
          id: item['id'],
          nomeComum: item['nomeComum'],
          nomeCientifico: item['nomeCientifico'],
          alturaArvore: item['alturaArvore'],
          alturaFuste: item['alturaFuste'],
          cap: item['cap'],
          formacaoCopa: item['formacaoCopa'],
          formacaoTronco: item['formacaoTronco'],
          densidadeOcorrencia: item['densidadeOcorrencia'],
          uf: item['uf'],
          cidade: item['cidade'],
          tipoSolo: item['tipoSolo'],
          tipoVegetacao: item['tipoVegetacao'],
          enderecoColeta: item['enderecoColeta'],
          nomeDeterminador: item['nomeDeterminador'],
          latitude: item['latitude'],
          longitude: item['longitude'],
          altitude: item['altitude'],
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

  final String jsonImage =
      '{"image": "data:image/png;base64,iVBORw0KG..."}'; // Exemplo de imagem em formato JSON

  Uint8List convertJsonToPng(String json) {
    final imageData = jsonDecode(json)['image'];
    final bytes = base64Decode(imageData.split(',').last);
    return bytes;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<arqUrl>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<arqUrl>? data = snapshot.data;
          return ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListView(
                children: [
                  CustListItem(
                    title: item.nomeComum,
                    subtitle: item.observacoes,
                    imageUrl: item.imagemMatriz,
                    id: item.id,
                    backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
                    opcao: 2,
                  ),
                ],
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


 */