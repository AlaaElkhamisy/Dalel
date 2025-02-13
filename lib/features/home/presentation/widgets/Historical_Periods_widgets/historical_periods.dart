import 'package:dalel/core/widgets/custom_option_container.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOptionContainer(imagePath: "assets/images/Frame27.png"),
        CustomOptionContainer(imagePath: "assets/images/Frame27.png")
      ],
    );
  }
}
