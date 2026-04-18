import 'package:get_it/get_it.dart';

import '../features/home/di/home_di.dart' as home_di;
import '../features/city/di/city_di.dart' as city_di;
import '../features/activity/di/activity_di.dart' as activity_di;

final GetIt getIt = GetIt.instance;

void initDependencies() {
  // Initialize feature-specific dependencies
  home_di.initHomeFeature();
  city_di.initCityFeature();
  activity_di.initActivityFeature();
}
