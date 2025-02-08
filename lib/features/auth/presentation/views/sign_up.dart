import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_signup_form.dart';
import 'package:dalel/features/auth/presentation/widgets/haveAnAccount.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
                child: WlecomeTextWidget(text: AppStrings.welcome)),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CustomSignUpForm()),
            SliverToBoxAdapter(
                child: HaveAnAccount(
                    text1: AppStrings.alreadyHaveAnAccount,
                    text2: AppStrings.signIn))
          ],
        ),
      ),
    );
  }
}
