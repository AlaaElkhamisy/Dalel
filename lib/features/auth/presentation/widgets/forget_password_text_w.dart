import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextW extends StatelessWidget {
  const ForgetPasswordTextW({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigation(context, "path");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgetPassword,
          style: CustomTextStyles.poppins400style12.copyWith(
              color: AppColors.deepgrey_color, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
