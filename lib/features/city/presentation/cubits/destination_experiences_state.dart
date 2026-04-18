import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/activity/data/models/experience_model.dart';

part 'destination_experiences_state.freezed.dart';

@freezed
class DestinationExperiencesState with _$DestinationExperiencesState {
  const factory DestinationExperiencesState.initial() = _Initial;
  const factory DestinationExperiencesState.loading() = _Loading;
  const factory DestinationExperiencesState.refreshing(List<ExperienceModel> data) = _Refreshing;
  const factory DestinationExperiencesState.success(List<ExperienceModel> data) = _Success;
  const factory DestinationExperiencesState.error(String message) = _Error;
}
