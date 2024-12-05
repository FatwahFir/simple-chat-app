// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalUserModel _$LocalUserModelFromJson(Map<String, dynamic> json) =>
    LocalUserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LocalUserModelToJson(LocalUserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
    };
