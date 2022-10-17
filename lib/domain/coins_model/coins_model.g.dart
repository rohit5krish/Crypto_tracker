// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinsModel _$$_CoinsModelFromJson(Map<String, dynamic> json) =>
    _$_CoinsModel(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      currentPrice: (json['current_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoinsModelToJson(_$_CoinsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
    };
