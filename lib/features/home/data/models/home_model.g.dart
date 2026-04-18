// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  destinations: (json['destinations'] as List<dynamic>)
      .map((e) => DestinationModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  experiences: (json['experiences'] as List<dynamic>)
      .map((e) => ExperienceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'destinations': instance.destinations,
      'experiences': instance.experiences,
    };
