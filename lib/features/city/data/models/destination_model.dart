import 'package:freezed_annotation/freezed_annotation.dart';

import 'destination_detail_model.dart';

part 'destination_model.freezed.dart';
part 'destination_model.g.dart';

@freezed
abstract class DestinationModel with _$DestinationModel {
  const factory DestinationModel({
    required String id,
    required String name,
    required String country,
    required String description,
    required String imageUrl,
    required double lat,
    required double lng,
    required DestinationDetailModel destinationDetailModel,
  }) = _DestinationModel;

  factory DestinationModel.fromJson(Map<String, dynamic> json) => _$DestinationModelFromJson(json);
}
