import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/forgot_password.dart';
import 'package:dalel/features/auth/presentation/views/signIn.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splach/splach_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const Splach_View(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  // هاحط ال cubit فوق الscreens اللي لها cubit
  GoRoute(
    path: "/signUp",
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignUp(),
    ),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignIn(),
    ),
  ),
  GoRoute(
    path: "/forgotPassword",
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const ForgotPassword(),
    ),
  ),
  GoRoute(
    path: "/home",
    builder: (context, state) => const HomeView(),
  ),
]);
