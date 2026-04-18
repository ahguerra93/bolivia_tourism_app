// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DestinationDetailModel _$DestinationDetailModelFromJson(
  Map<String, dynamic> json,
) => _DestinationDetailModel(
  description: json['description'] as String,
  bookingLinks: (json['bookingLinks'] as List<dynamic>)
      .map((e) => ContactLinkModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DestinationDetailModelToJson(
  _DestinationDetailModel instance,
) => <String, dynamic>{
  'description': instance.description,
  'bookingLinks': instance.bookingLinks,
};
