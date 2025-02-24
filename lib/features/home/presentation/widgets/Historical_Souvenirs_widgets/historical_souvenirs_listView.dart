import 'package:dalel/features/home/data/souvenirs_data.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsListView extends StatelessWidget {
  const HistoricalSouvenirsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: SouvenirsData.souvenirNames.length,
        itemBuilder: (context, index) {
          String souvenirNames = SouvenirsData.souvenirNames[index];
          String souvenirImages = SouvenirsData.images[index];
          return CustomCategoryItem(
            text: souvenirNames,
            imagePath: souvenirImages,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
