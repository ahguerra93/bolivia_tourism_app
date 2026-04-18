import 'package:fpdart/fpdart.dart';

import '../../data/models/home_model.dart';
import '../repositories/home_repository.dart';

class GetHomeDataUseCase {
  final HomeRepository repository;

  GetHomeDataUseCase(this.repository);

  Future<Either<Exception, HomeModel>> call() async {
    return repository.getHomeData();
  }
}
