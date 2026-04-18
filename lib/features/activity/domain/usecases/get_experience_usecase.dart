import 'package:fpdart/fpdart.dart';

import '../../data/models/experience_model.dart';
import '../repositories/activity_repository.dart';

class GetExperienceUseCase {
  final ActivityRepository repository;

  GetExperienceUseCase(this.repository);

  Future<Either<Exception, ExperienceModel>> call(String experienceId) async {
    return repository.getExperience(experienceId);
  }
}
