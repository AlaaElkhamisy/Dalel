import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Custom_Smooth_Page_Indicator extends StatelessWidget {
  Custom_Smooth_Page_Indicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
          activeDotColor: AppColors.deepbrown_color,
          dotColor: AppColors.dots_color,
          dotWidth: 10,
          dotHeight: 10),
    );
  }
}
