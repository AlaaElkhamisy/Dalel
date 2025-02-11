import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forgotPassword_form.dart';
import 'package:dalel/features/auth/presentation/widgets/forgotPassword_subTitle.dart';

import 'package:dalel/features/auth/presentation/widgets/forgot_password_image.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 108)),
          SliverToBoxAdapter(
            child: WlecomeTextWidget(text: AppStrings.forgotPasswordPage),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: ForgotPasswordImage()),
          //SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: ForgotPasswordSubTitle()),
          SliverToBoxAdapter(child: CustomForgotpasswordForm())
        ],
      ),
    );
  }
}
