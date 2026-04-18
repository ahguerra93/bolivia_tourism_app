import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/experience_model.dart';

part 'experience_detail_state.freezed.dart';

@freezed
class ExperienceDetailState with _$ExperienceDetailState {
  const factory ExperienceDetailState.initial() = _Initial;
  const factory ExperienceDetailState.loading() = _Loading;
  const factory ExperienceDetailState.refreshing(ExperienceModel data) = _Refreshing;
  const factory ExperienceDetailState.success(ExperienceModel data) = _Success;
  const factory ExperienceDetailState.error(String message) = _Error;
}
