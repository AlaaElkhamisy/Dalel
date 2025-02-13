import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_text.dart';
import 'package:dalel/core/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 164,
      height: 96,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: AppColors.lightgrey_color,
              blurRadius: 5,
              spreadRadius: 0,
              offset: const Offset(0, 2.5))
        ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 48,
            width: 63,
            child: CustomCategoryText(text: "Ancient Egypt"),
          ),
          CustomImageContainer(image: imagePath)
        ],
      ),
    );
  }
}
