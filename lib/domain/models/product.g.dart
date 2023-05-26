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
      available: json['available'] as bool,
      cityFias: json['cityFias'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'picture': instance.picture,
    'description': instance.description,
    'badges': instance.badges.map((e) => e.toJson()).toList(),
    'available': instance.available,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cityFias', instance.cityFias);
  return val;
}
