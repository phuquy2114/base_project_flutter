// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..id = json['id'] as String?
  ..name = json['name'] as String?
  ..address = json['address'] as String?
  ..zipCode = json['zip_code'] as String?;

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'zip_code': instance.zipCode,
    };
