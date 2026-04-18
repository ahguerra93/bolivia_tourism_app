import 'package:fpdart/fpdart.dart';

import '../../data/models/experience_model.dart';

abstract class ActivityRepository {
  Future<Either<Exception, ExperienceModel>> getExperience(String experienceId);
}
