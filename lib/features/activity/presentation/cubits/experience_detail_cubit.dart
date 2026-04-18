import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_experience_usecase.dart';
import 'experience_detail_state.dart';

class ExperienceDetailCubit extends Cubit<ExperienceDetailState> {
  final GetExperienceUseCase _getExperienceUseCase;

  ExperienceDetailCubit(this._getExperienceUseCase) : super(const ExperienceDetailState.initial());

  Future<void> fetchExperience(String experienceId) async {
    emit(const ExperienceDetailState.loading());
    final result = await _getExperienceUseCase(experienceId);
    result.fold(
      (failure) => emit(ExperienceDetailState.error(failure.toString())),
      (data) => emit(ExperienceDetailState.success(data)),
    );
  }

  Future<void> refreshExperience(String experienceId) async {
    final currentData = state.whenOrNull(success: (data) => data, refreshing: (data) => data);

    if (currentData != null) {
      emit(ExperienceDetailState.refreshing(currentData));
    } else {
      emit(const ExperienceDetailState.loading());
    }

    final result = await _getExperienceUseCase(experienceId);
    result.fold(
      (failure) => emit(ExperienceDetailState.error(failure.toString())),
      (data) => emit(ExperienceDetailState.success(data)),
    );
  }

  Future<void> retryFetch(String experienceId) async {
    await fetchExperience(experienceId);
  }
}
