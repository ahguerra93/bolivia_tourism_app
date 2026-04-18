import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_destination_usecase.dart';
import 'destination_detail_state.dart';

class DestinationDetailCubit extends Cubit<DestinationDetailState> {
  final GetDestinationUseCase _getDestinationUseCase;

  DestinationDetailCubit(this._getDestinationUseCase) : super(const DestinationDetailState.initial());

  Future<void> fetchDestination(String destinationId) async {
    emit(const DestinationDetailState.loading());
    final result = await _getDestinationUseCase(destinationId);
    result.fold(
      (failure) => emit(DestinationDetailState.error(failure.toString())),
      (data) => emit(DestinationDetailState.success(data)),
    );
  }

  Future<void> refreshDestination(String destinationId) async {
    final currentData = state.whenOrNull(success: (data) => data, refreshing: (data) => data);

    if (currentData != null) {
      emit(DestinationDetailState.refreshing(currentData));
    } else {
      emit(const DestinationDetailState.loading());
    }

    final result = await _getDestinationUseCase(destinationId);
    result.fold(
      (failure) => emit(DestinationDetailState.error(failure.toString())),
      (data) => emit(DestinationDetailState.success(data)),
    );
  }

  Future<void> retryFetch(String destinationId) async {
    await fetchDestination(destinationId);
  }
}
