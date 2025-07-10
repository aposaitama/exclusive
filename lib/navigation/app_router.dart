import 'package:go_router/go_router.dart';

import 'routes.dart';

class AppRouter {
  GoRouter createRouter() => GoRouter(
        initialLocation: '/home/terns_of_use',
        routes: $appRoutes,
      );
}
