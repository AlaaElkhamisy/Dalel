import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/signIn.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splach/splach_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => Splach_View(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => OnBoardingView(),
  ),
  // هاحط ال cubit فوق الscreens اللي لها cubit
  GoRoute(
    path: "/signUp",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: SignUp(),
    ),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: SignIn(),
    ),
  ),
]);
