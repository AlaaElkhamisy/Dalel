import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/customCheckBox.dart';
import 'package:flutter/widgets.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyles.poppins400style12),
          TextSpan(
              text: AppStrings.termsAndConditions,
              style: CustomTextStyles.poppins400style12
                  .copyWith(decoration: TextDecoration.underline))
        ]))
      ],
    );
  }
}
