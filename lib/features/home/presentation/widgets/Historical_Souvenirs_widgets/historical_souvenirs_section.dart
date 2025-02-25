import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/Historical_Souvenirs_widgets/historical_souvenirs_listView.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        CustomHeaderText(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16),
        HistoricalSouvenirsListView()
      ],
    );
  }
}
