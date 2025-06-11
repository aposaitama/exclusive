import 'package:go_router/go_router.dart';

import 'routes.dart';

class AppRouter {
  GoRouter createRouter() => GoRouter(
        initialLocation: '/home',
        routes: $appRoutes,
      );
}
