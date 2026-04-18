import 'package:fpdart/fpdart.dart';

import '../datasources/activity_datasource.dart';
import '../../data/models/experience_model.dart';
import '../../domain/repositories/activity_repository.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDataSource dataSource;

  ActivityRepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, ExperienceModel>> getExperience(String experienceId) async {
    try {
      final data = await dataSource.getExperience(experienceId);
      return right(data);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
