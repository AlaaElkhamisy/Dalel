import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_view_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(right: 20, top: 33),
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.skip,
                  style: CustomTextStyles.poppins400style20,
                )),
            SizedBox(
              height: 77,
            ),
            OnBoarding_Body(),
            CustomBtn(),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
