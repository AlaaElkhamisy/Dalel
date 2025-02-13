import 'package:flutter/material.dart';

class CustomCategoryImage extends StatelessWidget {
  const CustomCategoryImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 114,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(7), topRight: Radius.circular(7)),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
