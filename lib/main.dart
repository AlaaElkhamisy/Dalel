import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() async {
  //قبل ما ابدا اشتغل بالlocal database هاقوله يستدعي الinit state من ال cachehelper
  WidgetsFlutterBinding.ensureInitialized();
  //خليناها await وحطينا ال async عشان لو ال init اصلا كدا في ال cachehelper
  await CacheHelper().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offwhite_color),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
