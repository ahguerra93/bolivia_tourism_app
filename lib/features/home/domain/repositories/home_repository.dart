import 'package:fpdart/fpdart.dart';

import '../../data/models/home_model.dart';

abstract class HomeRepository {
  Future<Either<Exception, HomeModel>> getHomeData();
}
