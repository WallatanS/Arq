// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['id'] as int,
      json['nomeComum'] as String,
      json['nomeCientifico'] as String,
      (json['alturaArvore'] as num).toDouble(),
      (json['alturaFuste'] as num).toDouble(),
      json['cap'] as String,
      json['formacaoCopa'] as String,
      json['formacaoTronco'] as String,
      (json['densidadeOcorrencia'] as num).toDouble(),
      json['uf'] as String,
      json['cidade'] as String,
      json['tipoSolo'] as String,
      json['tipoVegetacao'] as String,
      json['enderecoColeta'] as String,
      json['nomeDeterminador'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      (json['altitude'] as num).toDouble(),
      json['especiesAssociadas'] as String,
      json['quantidadeSementes'] as int,
      json['observacoes'] as String,
      json['imagemMatriz'] as String,
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
