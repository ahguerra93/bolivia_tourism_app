import 'package:freezed_annotation/freezed_annotation.dart';

import 'experience_info_model.dart';

part 'experience_model.freezed.dart';
part 'experience_model.g.dart';

enum ExperienceType { attraction, restaurant, hotel }

@freezed
abstract class ExperienceModel with _$ExperienceModel {
  const factory ExperienceModel({
    required String id,
    required String name,
    required ExperienceType type,
    required double lat,
    required double lng,
    required String description,
    required String imageUrl,
    required ExperienceInfoModel experienceInfoModel,
  }) = _ExperienceModel;

  factory ExperienceModel.fromJson(Map<String, dynamic> json) => _$ExperienceModelFromJson(json);
}
