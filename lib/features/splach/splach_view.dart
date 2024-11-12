import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Splach_View extends StatefulWidget {
  const Splach_View({super.key});

  @override
  State<Splach_View> createState() => _Splach_ViewState();
}

class _Splach_ViewState extends State<Splach_View> {
  @override
  void initState() {
    delayedNavigate(context);
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
void delayedNavigate(context) {
  Future.delayed(Duration(seconds: 2), () {
    customNavigation(context, "/onBoarding");
  });
}
