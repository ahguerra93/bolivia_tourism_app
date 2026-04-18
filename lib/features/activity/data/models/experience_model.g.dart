// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    _ExperienceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$ExperienceTypeEnumMap, json['type']),
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      experienceInfoModel: ExperienceInfoModel.fromJson(
        json['experienceInfoModel'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ExperienceModelToJson(_ExperienceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$ExperienceTypeEnumMap[instance.type]!,
      'lat': instance.lat,
      'lng': instance.lng,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'experienceInfoModel': instance.experienceInfoModel,
    };

const _$ExperienceTypeEnumMap = {
  ExperienceType.attraction: 'attraction',
  ExperienceType.restaurant: 'restaurant',
  ExperienceType.hotel: 'hotel',
};
