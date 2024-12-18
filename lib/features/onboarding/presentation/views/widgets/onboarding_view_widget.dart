import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/views/widgets/Custom_Smooth_Indicator.dart';
import 'package:flutter/material.dart';

class OnBoarding_Body extends StatelessWidget {
  OnBoarding_Body({super.key, required this.controller, this.onPageChanged});

  final PageController? controller;
  final Function(int)? onPageChanged;
  @override
  @override
  Widget build(BuildContext context) {
    // حطينا الsizedbox عشنا لازم الpageviewيتحددلها limites عشان برضو ميحصلش مشكلة مع الlistview
    return SizedBox(
      height: 520,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                //حطينا الصورة في containerعشان لو الصورة جت اكبر من الصوررة التانية ميحصلش عندي مشكلة فاجبرها تاخد مساحة الcontainerبس
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(onBoardingData[index].imagePath))),
              ),
              SizedBox(
                height: 23,
              ),
              Custom_Smooth_Page_Indicator(controller: controller!),
              SizedBox(
                height: 30,
              ),
              Container(
                //padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  // وكذلك هنا حددت عدد السطور المسموح عشان ميتعدهاش وكمان الoverflowعشان الكلام يستخبى بس هيبين ان لسة في كام موجود
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                //padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  onBoardingData[index].subtitle,
                  style: CustomTextStyles.poppins300style16
                      .copyWith(fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
