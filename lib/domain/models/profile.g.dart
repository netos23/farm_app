// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      birthDate: json['birthDate'] as String?,
      gender: json['gender'] as int?,
      phone: json['phone'] as int?,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'phone': instance.phone,
    };
