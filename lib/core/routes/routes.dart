import 'package:go_router/go_router.dart';
import 'package:online_class/core/routes/route_names.dart';
import 'package:online_class/features/authentification/pages/sign_in.dart';
import 'package:online_class/features/welcome/pages/welcome.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.onboarding,
      path: "/",
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      name: RouteNames.signIn,
      path: "/signIn",
      builder: (context, state) => const SignIn(),
    ),
  ],
);
