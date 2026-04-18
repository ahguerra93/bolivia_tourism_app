import 'package:get_it/get_it.dart';

import '../data/datasources/city_datasource.dart';
import '../data/repositories/city_repository_impl.dart';
import '../domain/repositories/city_repository.dart';
import '../domain/usecases/get_destination_usecase.dart';
import '../domain/usecases/get_destination_experiences_usecase.dart';
import '../presentation/cubits/destination_detail_cubit.dart';
import '../presentation/cubits/destination_experiences_cubit.dart';

final getIt = GetIt.instance;

void initCityFeature() {
  // DataSource
  getIt.registerSingleton<CityDataSource>(CityDataSourceImpl());

  // Repository
  getIt.registerSingleton<CityRepository>(CityRepositoryImpl(getIt<CityDataSource>()));

  // Use Cases
  getIt.registerSingleton<GetDestinationUseCase>(GetDestinationUseCase(getIt<CityRepository>()));

  getIt.registerSingleton<GetDestinationExperiencesUseCase>(GetDestinationExperiencesUseCase(getIt<CityRepository>()));

  // Cubits
  getIt.registerFactory<DestinationDetailCubit>(() => DestinationDetailCubit(getIt<GetDestinationUseCase>()));

  getIt.registerFactory<DestinationExperiencesCubit>(
    () => DestinationExperiencesCubit(getIt<GetDestinationExperiencesUseCase>()),
  );
}
