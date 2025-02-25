import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryText extends StatelessWidget {
  const CustomCategoryText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      text,
      style: CustomTextStyles.poppins500style14.copyWith(fontSize: 16),
    );
  }
}
