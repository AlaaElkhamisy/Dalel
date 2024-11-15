import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/custom_nav_bar.dart';
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
                  customNavigation(context, "/signUp");
                },
              ),
              SizedBox(
                height: 68,
              ),
              OnBoarding_Body(
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
              currentIndex == onBoardingData.length - 1
                  ? Column(
                      children: [
                        CustomBtn(
                          text: AppStrings.createAccount,
                          onPressed: () {
                            customNavigation(context, "/signUp");
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            customNavigation(context, "/signIn");
                          },
                          child: Text(
                            AppStrings.loginNow,
                            style: CustomTextStyles.poppins300style16
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )
                  : CustomBtn(
                      onPressed: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                      },
                      text: AppStrings.next,
                    ),
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
