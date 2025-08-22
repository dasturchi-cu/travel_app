import 'package:go_router/go_router.dart';
import 'package:travel_app/features/splash/presentation/pages/splash_page.dart';

abstract class AppRoutes {
  static const String init = "/";

  static GoRouter router = GoRouter(
    initialLocation: init,
    routes: [
      GoRoute(path: init, builder: (context, state) => const SplashPage()),
    ],
  );
}
