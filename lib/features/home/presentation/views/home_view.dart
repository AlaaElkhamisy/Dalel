import 'package:dalel/features/home/presentation/widgets/Historical_Characters_widgets/historical_characters_section.dart';
import 'package:dalel/features/home/presentation/widgets/Historical_Periods_widgets/historical_periods_section.dart';
import 'package:dalel/features/home/presentation/widgets/Historical_Souvenirs_widgets/historical_souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_app_bar_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HomeAppBarSection()),
            SliverToBoxAdapter(child: HistoricalPeriodsSection()),
            SliverToBoxAdapter(child: HistoricalCharactersSection()),
            SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
          ],
        ),
      ),
    ));
  }
}
