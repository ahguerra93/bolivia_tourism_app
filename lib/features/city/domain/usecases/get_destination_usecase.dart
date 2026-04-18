import 'package:fpdart/fpdart.dart';

import '../../data/models/destination_model.dart';
import '../repositories/city_repository.dart';

class GetDestinationUseCase {
  final CityRepository repository;

  GetDestinationUseCase(this.repository);

  Future<Either<Exception, DestinationModel>> call(String destinationId) async {
    return repository.getDestination(destinationId);
  }
}
