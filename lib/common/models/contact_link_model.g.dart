// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactLinkModel _$ContactLinkModelFromJson(Map<String, dynamic> json) =>
    _ContactLinkModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      number: json['number'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ContactLinkModelToJson(_ContactLinkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'number': instance.number,
      'email': instance.email,
    };
