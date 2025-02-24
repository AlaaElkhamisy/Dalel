import 'package:dalel/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 20), CustomHomeViewAppBar()],
    );
  }
}
