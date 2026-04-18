import 'package:get_it/get_it.dart';

import '../data/datasources/activity_datasource.dart';
import '../data/repositories/activity_repository_impl.dart';
import '../domain/repositories/activity_repository.dart';
import '../domain/usecases/get_experience_usecase.dart';
import '../presentation/cubits/experience_detail_cubit.dart';

final getIt = GetIt.instance;

void initActivityFeature() {
  // DataSource
  getIt.registerSingleton<ActivityDataSource>(ActivityDataSourceImpl());

  // Repository
  getIt.registerSingleton<ActivityRepository>(ActivityRepositoryImpl(getIt<ActivityDataSource>()));

  // Use Cases
  getIt.registerSingleton<GetExperienceUseCase>(GetExperienceUseCase(getIt<ActivityRepository>()));

  // Cubits
  getIt.registerFactory<ExperienceDetailCubit>(() => ExperienceDetailCubit(getIt<GetExperienceUseCase>()));
}
