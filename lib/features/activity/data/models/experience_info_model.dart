import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/contact_link_model.dart';

part 'experience_info_model.freezed.dart';
part 'experience_info_model.g.dart';

@freezed
abstract class ExperienceInfoModel with _$ExperienceInfoModel {
  const factory ExperienceInfoModel({
    required String bestSeason,
    required String altitude,
    required String currency,
    required List<String> languages,
    required String transportInstructions,
    required String reminders,
    required List<String> tips,
    required List<ContactLinkModel> bookingLinks,
  }) = _ExperienceInfoModel;

  factory ExperienceInfoModel.fromJson(Map<String, dynamic> json) => _$ExperienceInfoModelFromJson(json);
}
