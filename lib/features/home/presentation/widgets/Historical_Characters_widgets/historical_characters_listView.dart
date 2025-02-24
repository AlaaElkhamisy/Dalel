import 'package:dalel/features/home/presentation/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';
import 'package:dalel/features/home/data/characters_data.dart';

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
        itemCount: CharactersData.charactersNames.length,
        itemBuilder: (context, index) {
          String characterName = CharactersData.charactersNames[index];
          String characterImage = CharactersData.images[index];
          return CustomCategoryItem(
            text: characterName,
            imagePath: characterImage,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }
}
