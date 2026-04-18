import 'package:fpdart/fpdart.dart';

import '../../../../features/activity/data/models/experience_model.dart';
import '../repositories/city_repository.dart';

class GetDestinationExperiencesUseCase {
  final CityRepository repository;

  GetDestinationExperiencesUseCase(this.repository);

  Future<Either<Exception, List<ExperienceModel>>> call(String destinationId) async {
    return repository.getDestinationExperiences(destinationId);
  }
}
