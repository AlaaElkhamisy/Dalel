import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/Custom_Smooth_Indicator.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/next_page.dart';
import 'package:flutter/material.dart';

class OnBoarding_Body extends StatefulWidget {
  OnBoarding_Body({super.key});

  @override
  State<OnBoarding_Body> createState() => _OnBoarding_BodyState();
}

class _OnBoarding_BodyState extends State<OnBoarding_Body> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    // حطينا addlistenter عشان أعمل setState في كل مرة عشان الpageController يرجعلي الصفحة اللي انا فيها
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  List images = ["Onboarding1.png", "Onboarding2.png", "Onboarding3.png"];
  List textHeaders = [
    "Explore The history with Dalel in a smart way",
    "From every place on earth",
    "Using modern AI technology for better user experience"
  ];
  List textSubHeaders = [
    "Using our app’s history libraries you can find many historical periods",
    "A big variety of ancient places from all over the world",
    "AI provide recommendations and helps you to continue the search journey"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image(
                image: AssetImage("assets/images/" + images[index]),
              ),
              SizedBox(
                height: 23,
              ),
              Custom_Smooth_Page_Indicator(controller: pageController!),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  textHeaders[index],
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  textSubHeaders[index],
                  style: CustomTextStyles.poppins300style16
                      .copyWith(fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Next_Page(
                  onTap: () {
                    pageController?.nextPage(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeInCubic);
                    if (pageController!.page! < 2) {
                      pageController?.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    } else {
                      customNavigation(context, "/home");
                    }
                  },
                  text: pageController!.hasClients
                      ? (pageController?.page == 2 ? "Create Account" : "Next")
                      : "Next",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
