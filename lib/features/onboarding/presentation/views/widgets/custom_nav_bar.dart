import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Custom_Nav_Bar extends StatelessWidget {
  const Custom_Nav_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Align(
          alignment: Alignment.topRight,
          child: Text(
            AppStrings.skip,
            style: CustomTextStyles.poppins400style20,
          )),
    );
  }
}
