import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_image.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_text.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem(
      {super.key, required this.text, required this.imagePath});
  final String text;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.lightgrey_color,
                blurRadius: 5,
                spreadRadius: 0,
                offset: const Offset(0, 2.5))
          ]),
      width: 91,
      height: 167,
      child: Column(
        children: [
          CustomCategoryImage(image: imagePath),
          const SizedBox(height: 7),
          Expanded(child: CustomCategoryText(text: text)),
        ],
      ),
    );
  }
}
