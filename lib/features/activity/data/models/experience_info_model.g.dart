// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceInfoModel _$ExperienceInfoModelFromJson(Map<String, dynamic> json) =>
    _ExperienceInfoModel(
      bestSeason: json['bestSeason'] as String,
      altitude: json['altitude'] as String,
      currency: json['currency'] as String,
      languages: (json['languages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      transportInstructions: json['transportInstructions'] as String,
      reminders: json['reminders'] as String,
      tips: (json['tips'] as List<dynamic>).map((e) => e as String).toList(),
      bookingLinks: (json['bookingLinks'] as List<dynamic>)
          .map((e) => ContactLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExperienceInfoModelToJson(
  _ExperienceInfoModel instance,
) => <String, dynamic>{
  'bestSeason': instance.bestSeason,
  'altitude': instance.altitude,
  'currency': instance.currency,
  'languages': instance.languages,
  'transportInstructions': instance.transportInstructions,
  'reminders': instance.reminders,
  'tips': instance.tips,
  'bookingLinks': instance.bookingLinks,
};
