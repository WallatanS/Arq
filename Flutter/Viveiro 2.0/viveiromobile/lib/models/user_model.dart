import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String nomeComum;
  final String nomeCientifico;
  final double alturaArvore;
  final double alturaFuste;
  final double cap;
  final String formacaoCopa;
  final String formacaoTronco;
  final int densidadeOcorrencia;
  final String uf;
  final String cidade;
  final String tipoSolo;
  final String tipoVegetacao;
  final String enderecoColeta;
  final String nomeDeterminador;
  final String latitude;
  final String longitude;
  final String altitude;
  final String especiesAssociadas;
  final int quantidadeSementes;
  final String observacoes;
  final String imagemMatriz;

  UserModel(
      this.id,
      this.nomeComum,
      this.nomeCientifico,
      this.alturaArvore,
      this.alturaFuste,
      this.cap,
      this.formacaoCopa,
      this.formacaoTronco,
      this.densidadeOcorrencia,
      this.uf,
      this.cidade,
      this.tipoSolo,
      this.tipoVegetacao,
      this.enderecoColeta,
      this.nomeDeterminador,
      this.latitude,
      this.longitude,
      this.altitude,
      this.especiesAssociadas,
      this.quantidadeSementes,
      this.observacoes,
      this.imagemMatriz);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
