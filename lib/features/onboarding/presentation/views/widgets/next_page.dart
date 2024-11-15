import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Next_Page extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const Next_Page({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.primary_color,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: CustomTextStyles.poppins500style18
                .copyWith(color: AppColors.offwhite_color),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
