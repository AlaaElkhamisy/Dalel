import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_view_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          //حطينا هنا الonboarding viewفي listview عشان اخلي الشاشة بتاعتي scrollable عشان لو ابعاد التليفون عندي اتغيرت ميحصلش مشكلة
          child: ListView(
            children: [
              Custom_Nav_Bar(),
              SizedBox(
                height: 77,
              ),
              OnBoarding_Body(),
              SizedBox(
                height: 77,
              ),
              CustomBtn(
                text: AppStrings.next,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
