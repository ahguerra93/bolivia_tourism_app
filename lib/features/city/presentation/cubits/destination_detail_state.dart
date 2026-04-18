import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/destination_model.dart';

part 'destination_detail_state.freezed.dart';

@freezed
class DestinationDetailState with _$DestinationDetailState {
  const factory DestinationDetailState.initial() = _Initial;
  const factory DestinationDetailState.loading() = _Loading;
  const factory DestinationDetailState.refreshing(DestinationModel data) = _Refreshing;
  const factory DestinationDetailState.success(DestinationModel data) = _Success;
  const factory DestinationDetailState.error(String message) = _Error;
}
