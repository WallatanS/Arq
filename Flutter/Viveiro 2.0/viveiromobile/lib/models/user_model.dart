import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int? id;
  String nomeComum;
  String nomeCientifico;
  dynamic alturaArvore;
  dynamic alturaFuste;
  dynamic cap;
  String formacaoCopa;
  String formacaoTronco;
  dynamic densidadeOcorrencia;
  String uf;
  String cidade;
  String tipoSolo;
  String tipoVegetacao;
  String enderecoColeta;
  String nomeDeterminador;
  String latitude;
  String longitude;
  String altitude;
  String especiesAssociadas;
  dynamic quantidadeSementes;
  String observacoes;
  String imagemMatriz;

  UserModel({
    this.id,
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

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
