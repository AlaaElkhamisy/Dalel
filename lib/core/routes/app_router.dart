import 'package:dalel/features/auth/presentation/views/signIn.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splach/splach_view.dart';
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
  GoRoute(
    path: "/signUp",
    builder: (context, state) => SignUp(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => SignIn(),
  ),
]);
