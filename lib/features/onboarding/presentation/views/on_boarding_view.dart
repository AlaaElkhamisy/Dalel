import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/features/onboarding/presentation/views/functions/onboarding.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/getButtons.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/onboarding_view_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          //حطينا هنا الonboarding viewفي listview عشان اخلي الشاشة بتاعتي scrollable عشان لو ابعاد التليفون عندي اتغيرت ميحصلش مشكلة
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Custom_Nav_Bar(
                onTap: () {
                  // we will call Cache_Helper to save that the user pressed on the button layouted in the onboareding view in the local database
                  OnBoardingVisited();
                  customReplacementNavigation(context, "/signUp");
                },
              ),
              SizedBox(
                height: 68,
              ),
              OnBoarding_Body(
                // حطينا الonPageChanged عشان اعمل update لل index كل لما الصفحة تتغير
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(
                height: 70,
              ),
              Getbuttons(currentIndex: currentIndex, controller: _controller),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
