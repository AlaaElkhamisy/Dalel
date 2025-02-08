import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/customTextField.dart';
import 'package:dalel/features/auth/presentation/widgets/termsAndCondition.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.firstName,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.email,
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndCondition(),
              const SizedBox(height: 160),
              CustomBtn(
                  color: authCubit.termsAndConditionCheckBox == false
                      ? AppColors.lightgrey_color
                      : null,
                  onPressed: () {
                    if (authCubit.termsAndConditionCheckBox == true) {
                      if (authCubit.signupFormKey.currentState!.validate()) {
                        authCubit.signUpWithEmailAndPassword();
                      }
                    }
                  },
                  text: AppStrings.signUp),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
