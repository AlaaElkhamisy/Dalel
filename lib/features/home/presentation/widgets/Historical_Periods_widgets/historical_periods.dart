import 'package:dalel/core/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(imagePath: "assets/images/Frame27.png"),
        CustomContainer(imagePath: "assets/images/Frame27.png")
      ],
    );
  }
}
