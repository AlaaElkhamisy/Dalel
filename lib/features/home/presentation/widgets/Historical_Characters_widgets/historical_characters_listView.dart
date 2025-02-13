import 'package:dalel/features/home/presentation/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersListView extends StatelessWidget {
  const HistoricalCharactersListView({super.key});

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
            text: "Napoleon",
            imagePath: "assets/images/char1.png",
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
