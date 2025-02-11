import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splach_View extends StatefulWidget {
  const Splach_View({super.key});

  @override
  State<Splach_View> createState() => _Splach_ViewState();
}

class _Splach_ViewState extends State<Splach_View> {
  @override
  void initState() {
    // fales if this is the first time to the user to user our app so, this key isn't saved in the database before
    bool isOnboardingVisited =
        getIt<CacheHelper>().getData(key: "isOnboardingVisited") ?? false;
    if (isOnboardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, "/signIn")
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigate(context, "/home")
              : delayedNavigate(context, "/signIn");
    } else {
      delayedNavigate(context, "/onBoarding");
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

// عملنا كدا لان انا مش كل مرة هnavigate للOnboarding view فكدا ممكن ماستخدمهاش تاني
void delayedNavigate(context, path) {
  Future.delayed(Duration(seconds: 2), () {
    customReplacementNavigation(context, path);
  });
}
