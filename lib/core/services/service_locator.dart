//  المكان اللي هاخد منه نسخة واحدة من ال objects على مستوى ال app كله
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup_Service_Locator() {
  getIt.registerSingleton(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
