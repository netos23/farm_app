// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Image _$$ImageFromJson(Map<String, dynamic> json) => _$Image(
      imageUrl: json['imageUrl'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageToJson(_$Image instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'link': instance.link,
      'type': instance.$type,
    };

_$Button _$$ButtonFromJson(Map<String, dynamic> json) => _$Button(
      text: json['text'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ButtonToJson(_$Button instance) => <String, dynamic>{
      'text': instance.text,
      'link': instance.link,
      'type': instance.$type,
    };

_$Title _$$TitleFromJson(Map<String, dynamic> json) => _$Title(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TitleToJson(_$Title instance) => <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$Markdown _$$MarkdownFromJson(Map<String, dynamic> json) => _$Markdown(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MarkdownToJson(_$Markdown instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$Slider _$$SliderFromJson(Map<String, dynamic> json) => _$Slider(
      images: (json['images'] as List<dynamic>)
          .map((e) => SliderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SliderToJson(_$Slider instance) => <String, dynamic>{
      'images': instance.images,
      'type': instance.$type,
    };

_$_SliderItem _$$_SliderItemFromJson(Map<String, dynamic> json) =>
    _$_SliderItem(
      imageUrl: json['imageUrl'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_SliderItemToJson(_$_SliderItem instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'link': instance.link,
    };
