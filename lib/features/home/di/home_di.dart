import 'package:get_it/get_it.dart';

import '../data/datasources/home_datasource.dart';
import '../data/repositories/home_repository_impl.dart';
import '../domain/repositories/home_repository.dart';
import '../domain/usecases/get_home_data_usecase.dart';
import '../presentation/cubits/home_cubit.dart';

final getIt = GetIt.instance;

void initHomeFeature() {
  // DataSource
  getIt.registerSingleton<HomeDataSource>(HomeDataSourceImpl());

  // Repository
  getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl(getIt<HomeDataSource>()));

  // Use Cases
  getIt.registerSingleton<GetHomeDataUseCase>(GetHomeDataUseCase(getIt<HomeRepository>()));

  // Cubits
  getIt.registerSingleton<HomeCubit>(HomeCubit(getIt<GetHomeDataUseCase>()));
}
