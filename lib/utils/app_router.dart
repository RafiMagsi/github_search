import 'package:LyvelyExercise/configs/strings.dart';
import 'package:go_router/go_router.dart';

import '../modules/home/presentation/home_view.dart';

class Routes {
  static const String home = 'home';
}

// GoRouter configuration
final app_router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: Routes.home, // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const HomeView(title: AppStrings.appName),
    ),
  ],
);
