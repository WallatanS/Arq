// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      nomeComum: json['nomeComum'] as String,
      nomeCientifico: json['nomeCientifico'] as String,
      alturaArvore: json['alturaArvore'],
      alturaFuste: json['alturaFuste'],
      cap: json['cap'],
      formacaoCopa: json['formacaoCopa'] as String,
      formacaoTronco: json['formacaoTronco'] as String,
      densidadeOcorrencia: json['densidadeOcorrencia'],
      uf: json['uf'] as String,
      cidade: json['cidade'] as String,
      tipoSolo: json['tipoSolo'] as String,
      tipoVegetacao: json['tipoVegetacao'] as String?,
      enderecoColeta: json['enderecoColeta'] as String,
      nomeDeterminador: json['nomeDeterminador'] as String,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String,
      altitude: json['altitude'] as String,
      especiesAssociadas: json['especiesAssociadas'] as String,
      quantidadeSementes: json['quantidadeSementes'],
      observacoes: json['observacoes'] as String,
      imagemMatriz: json['imagemMatriz'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'nomeComum': instance.nomeComum,
      'nomeCientifico': instance.nomeCientifico,
      'alturaArvore': instance.alturaArvore,
      'alturaFuste': instance.alturaFuste,
      'cap': instance.cap,
      'formacaoCopa': instance.formacaoCopa,
      'formacaoTronco': instance.formacaoTronco,
      'densidadeOcorrencia': instance.densidadeOcorrencia,
      'uf': instance.uf,
      'cidade': instance.cidade,
      'tipoSolo': instance.tipoSolo,
      'tipoVegetacao': instance.tipoVegetacao,
      'enderecoColeta': instance.enderecoColeta,
      'nomeDeterminador': instance.nomeDeterminador,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'especiesAssociadas': instance.especiesAssociadas,
      'quantidadeSementes': instance.quantidadeSementes,
      'observacoes': instance.observacoes,
      'imagemMatriz': instance.imagemMatriz,
    };
