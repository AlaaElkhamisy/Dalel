import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void OnBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnboardingVisited", value: true);
}
