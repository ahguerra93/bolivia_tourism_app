import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_home_data_usecase.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase _getHomeDataUseCase;

  HomeCubit(this._getHomeDataUseCase) : super(const HomeState.initial());

  Future<void> fetchHomeData() async {
    emit(const HomeState.loading());
    final result = await _getHomeDataUseCase();
    result.fold((failure) => emit(HomeState.error(failure.toString())), (data) => emit(HomeState.success(data)));
  }

  Future<void> refreshHomeData() async {
    final currentData = state.whenOrNull(success: (data) => data, refreshing: (data) => data);

    if (currentData != null) {
      emit(HomeState.refreshing(currentData));
    } else {
      emit(const HomeState.loading());
    }

    final result = await _getHomeDataUseCase();
    result.fold((failure) => emit(HomeState.error(failure.toString())), (data) => emit(HomeState.success(data)));
  }

  Future<void> retryFetch() async {
    await fetchHomeData();
  }
}
