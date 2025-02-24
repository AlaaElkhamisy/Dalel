import 'package:dalel/core/widgets/custom_option_container.dart';
import 'package:dalel/features/home/data/periods_data.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOptionContainer(
          imagePath: PeriodsData.images[0],
          text: PeriodsData.periodsNames[0],
        ),
        CustomOptionContainer(
          imagePath: PeriodsData.images[1],
          text: PeriodsData.periodsNames[1],
        )
      ],
    );
  }
}
