import 'package:flutter/material.dart';

class CustomOptionImageContainer extends StatelessWidget {
  const CustomOptionImageContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(image: AssetImage(image))),
    );
  }
}
