import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        textAlign: TextAlign.center,
        AppStrings.forgotPasswordSubtitle,
        style: CustomTextStyles.poppins500style14.copyWith(
            fontWeight: FontWeight.w400, color: AppColors.deepgrey_color),
      ),
    );
  }
}
