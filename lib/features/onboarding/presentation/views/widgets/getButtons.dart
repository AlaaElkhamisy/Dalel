import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/views/functions/onboarding.dart';
import 'package:flutter/material.dart';

class Getbuttons extends StatelessWidget {
  const Getbuttons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              OnBoardingVisited();
              customReplacementNavigation(context, "/signUp");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              OnBoardingVisited();
              customReplacementNavigation(context, "/signIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return CustomBtn(
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        },
        text: AppStrings.next,
      );
    }
  }
}
