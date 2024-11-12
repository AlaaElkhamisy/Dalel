import 'package:dalel/features/splach/splach_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => Splach_View(),
  )
]);
