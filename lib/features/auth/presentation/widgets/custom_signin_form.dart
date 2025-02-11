import 'package:dalel/core/function/custom_toast.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/customTextField.dart';
import 'package:dalel/features/auth/presentation/widgets/forget_password_text_w.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  //bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          // showToast("Welcome back", AppColors.primary_color);
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customReplacementNavigation(context, "/home")
              : showToast("Please, verify your account", Colors.grey);
          ;
        } else if (state is SignInFailuerState) {
          showToast(state.errMessage, Colors.red);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.email,
                onChanged: (email) {
                  authCubit.email = email;
                },
              ),
              CustomTextFormField(
                obscureText: authCubit.obscurePasswordTextValue!,
                suffixIcon: IconButton(
                  icon: authCubit.obscurePasswordTextValue == true
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                ),
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const SizedBox(height: 16),
              const ForgetPasswordTextW(),
              const SizedBox(height: 160),
              state is SignInLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primary_color,
                    )
                  : CustomBtn(
                      onPressed: () {
                        if (authCubit.signInFormKey.currentState!.validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      },
                      text: AppStrings.signIn),
            ],
          ),
        );
      },
    );
  }
}
