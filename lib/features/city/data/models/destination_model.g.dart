// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DestinationModel _$DestinationModelFromJson(Map<String, dynamic> json) =>
    _DestinationModel(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      destinationDetailModel: DestinationDetailModel.fromJson(
        json['destinationDetailModel'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DestinationModelToJson(_DestinationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'lat': instance.lat,
      'lng': instance.lng,
      'destinationDetailModel': instance.destinationDetailModel,
    };
