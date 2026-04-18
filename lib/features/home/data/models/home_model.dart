import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../features/activity/data/models/experience_model.dart';
import '../../../../../../features/city/data/models/destination_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({required List<DestinationModel> destinations, required List<ExperienceModel> experiences}) =
      _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
}
