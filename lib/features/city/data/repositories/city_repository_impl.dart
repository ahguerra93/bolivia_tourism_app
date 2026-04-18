import 'package:fpdart/fpdart.dart';

import '../datasources/city_datasource.dart';
import '../../data/models/destination_model.dart';
import '../../domain/repositories/city_repository.dart';
import '../../../../features/activity/data/models/experience_model.dart';

class CityRepositoryImpl implements CityRepository {
  final CityDataSource dataSource;

  CityRepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, DestinationModel>> getDestination(String destinationId) async {
    try {
      final data = await dataSource.getDestination(destinationId);
      return right(data);
    } on Exception catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<Exception, List<ExperienceModel>>> getDestinationExperiences(String destinationId) async {
    try {
      final data = await dataSource.getDestinationExperiences(destinationId);
      return right(data);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
