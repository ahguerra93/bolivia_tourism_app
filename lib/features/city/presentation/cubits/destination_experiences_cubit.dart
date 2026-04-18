import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_destination_experiences_usecase.dart';
import 'destination_experiences_state.dart';

class DestinationExperiencesCubit extends Cubit<DestinationExperiencesState> {
  final GetDestinationExperiencesUseCase _getDestinationExperiencesUseCase;

  DestinationExperiencesCubit(this._getDestinationExperiencesUseCase)
    : super(const DestinationExperiencesState.initial());

  Future<void> fetchExperiencesForDestination(String destinationId) async {
    emit(const DestinationExperiencesState.loading());
    final result = await _getDestinationExperiencesUseCase(destinationId);
    result.fold(
      (failure) => emit(DestinationExperiencesState.error(failure.toString())),
      (data) => emit(DestinationExperiencesState.success(data)),
    );
  }

  Future<void> refreshExperiencesForDestination(String destinationId) async {
    final currentData = state.whenOrNull(success: (data) => data, refreshing: (data) => data);

    if (currentData != null) {
      emit(DestinationExperiencesState.refreshing(currentData));
    } else {
      emit(const DestinationExperiencesState.loading());
    }

    final result = await _getDestinationExperiencesUseCase(destinationId);
    result.fold(
      (failure) => emit(DestinationExperiencesState.error(failure.toString())),
      (data) => emit(DestinationExperiencesState.success(data)),
    );
  }

  Future<void> retryFetch(String destinationId) async {
    await fetchExperiencesForDestination(destinationId);
  }
}
