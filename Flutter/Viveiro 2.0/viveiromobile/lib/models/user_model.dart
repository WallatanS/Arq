import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String nomeComum;
  String nomeCientifico;
  double alturaArvore;
  double alturaFuste;
  String cap;
  String formacaoCopa;
  String formacaoTronco;
  double densidadeOcorrencia;
  String uf;
  String cidade;
  String tipoSolo;
  String tipoVegetacao;
  String enderecoColeta;
  String nomeDeterminador;
  double latitude;
  double longitude;
  double altitude;
  String especiesAssociadas;
  int quantidadeSementes;
  String observacoes;
  String imagemMatriz;

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
