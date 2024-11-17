import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/widgets.dart';

class WlecomeTextWidget extends StatelessWidget {
  const WlecomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextStyles.poppins600style28
          .copyWith(fontWeight: FontWeight.w600, color: AppColors.black_color),
      textAlign: TextAlign.center,
    );
  }
}
