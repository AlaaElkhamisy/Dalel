import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/widgets/customTextField.dart';
import 'package:dalel/features/auth/presentation/widgets/haveAnAccount.dart';
import 'package:dalel/features/auth/presentation/widgets/termsAndCondition.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 152,
              ),
            ),
            const SliverToBoxAdapter(
              child: WlecomeTextWidget(
                text: AppStrings.welcome,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.firstName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.email,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                labelText: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndCondition(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 160,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomBtn(
                onPressed: () {},
                text: AppStrings.signUp,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
                child: HaveAnAccount(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
            )),
          ],
        ),
      ),
    );
  }
}
