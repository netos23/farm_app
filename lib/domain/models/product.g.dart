// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      name: json['name'] as String,
      picture: json['picture'] as String,
      description: json['description'] as String,
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'description': instance.description,
      'badges': instance.badges,
    };
