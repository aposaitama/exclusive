// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootShellRoute,
    ];

RouteBase get $rootShellRoute => StatefulShellRouteData.$route(
      factory: $RootShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'cart',
                  factory: $CartRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'checkout',
                  factory: $CheckoutRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'favourite',
                  factory: $FavouriteRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'products',
                  factory: $ProductsRouteExtension._fromState,
                ),
                StatefulShellRouteData.$route(
                  factory: $AccountShellRouteExtension._fromState,
                  branches: [
                    StatefulShellBranchData.$branch(
                      routes: [
                        GoRouteData.$route(
                          path: 'account/profile',
                          factory: $AccountProfileRouteExtension._fromState,
                        ),
                      ],
                    ),
                    StatefulShellBranchData.$branch(
                      routes: [
                        GoRouteData.$route(
                          path: 'account/address',
                          factory: $AccountAddressRouteExtension._fromState,
                        ),
                      ],
                    ),
                    StatefulShellBranchData.$branch(
                      routes: [
                        GoRouteData.$route(
                          path: 'account/payment',
                          factory: $AccountPaymentRouteExtension._fromState,
                        ),
                      ],
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'product/:id',
                  factory: $ProductDetailsRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/contact',
              factory: $ContactRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/about',
              factory: $AboutRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/sign-up',
              factory: $SignUpRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/login',
              factory: $LoginRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $RootShellRouteExtension on RootShellRoute {
  static RootShellRoute _fromState(GoRouterState state) =>
      const RootShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartRouteExtension on CartRoute {
  static CartRoute _fromState(GoRouterState state) => const CartRoute();

  String get location => GoRouteData.$location(
        '/home/cart',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CheckoutRouteExtension on CheckoutRoute {
  static CheckoutRoute _fromState(GoRouterState state) => const CheckoutRoute();

  String get location => GoRouteData.$location(
        '/home/checkout',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavouriteRouteExtension on FavouriteRoute {
  static FavouriteRoute _fromState(GoRouterState state) =>
      const FavouriteRoute();

  String get location => GoRouteData.$location(
        '/home/favourite',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProductsRouteExtension on ProductsRoute {
  static ProductsRoute _fromState(GoRouterState state) => ProductsRoute(
        type: _$ProductSectionTypeEnumMap
            ._$fromName(state.uri.queryParameters['type']!)!,
        sectionName: state.uri.queryParameters['section-name']!,
      );

  String get location => GoRouteData.$location(
        '/home/products',
        queryParams: {
          'type': _$ProductSectionTypeEnumMap[type],
          'section-name': sectionName,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$ProductSectionTypeEnumMap = {
  ProductSectionType.flashSale: 'flash-sale',
  ProductSectionType.bestSelling: 'best-selling',
  ProductSectionType.explore: 'explore',
  ProductSectionType.justForYou: 'just-for-you',
};

extension $AccountShellRouteExtension on AccountShellRoute {
  static AccountShellRoute _fromState(GoRouterState state) =>
      const AccountShellRoute();
}

extension $AccountProfileRouteExtension on AccountProfileRoute {
  static AccountProfileRoute _fromState(GoRouterState state) =>
      const AccountProfileRoute();

  String get location => GoRouteData.$location(
        '/home/account/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountAddressRouteExtension on AccountAddressRoute {
  static AccountAddressRoute _fromState(GoRouterState state) =>
      const AccountAddressRoute();

  String get location => GoRouteData.$location(
        '/home/account/address',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountPaymentRouteExtension on AccountPaymentRoute {
  static AccountPaymentRoute _fromState(GoRouterState state) =>
      const AccountPaymentRoute();

  String get location => GoRouteData.$location(
        '/home/account/payment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProductDetailsRouteExtension on ProductDetailsRoute {
  static ProductDetailsRoute _fromState(GoRouterState state) =>
      ProductDetailsRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/home/product/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ContactRouteExtension on ContactRoute {
  static ContactRoute _fromState(GoRouterState state) => const ContactRoute();

  String get location => GoRouteData.$location(
        '/contact',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutRouteExtension on AboutRoute {
  static AboutRoute _fromState(GoRouterState state) => const AboutRoute();

  String get location => GoRouteData.$location(
        '/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign-up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T? _$fromName(String? value) =>
      entries.where((element) => element.value == value).firstOrNull?.key;
}
