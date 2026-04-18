import 'package:fpdart/fpdart.dart';

import '../datasources/home_datasource.dart';
import '../../data/models/home_model.dart';
import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, HomeModel>> getHomeData() async {
    try {
      final data = await dataSource.getHomeData();
      return right(data);
    } on Exception catch (e) {
      return left(e);
    }
  }
}
