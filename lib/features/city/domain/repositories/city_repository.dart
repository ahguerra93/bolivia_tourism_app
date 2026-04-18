import 'package:fpdart/fpdart.dart';

import '../../data/models/destination_model.dart';
import '../../../../features/activity/data/models/experience_model.dart';

abstract class CityRepository {
  Future<Either<Exception, DestinationModel>> getDestination(String destinationId);
  Future<Either<Exception, List<ExperienceModel>>> getDestinationExperiences(String destinationId);
}
