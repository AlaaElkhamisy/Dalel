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
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomCategoryItem(
            text: "Old Books",
            imagePath: "assets/images/Frame41.png",
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
