import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/about_page/about_page.dart';
import 'package:exclusive_web/pages/account_page/account_page.dart';
import 'package:exclusive_web/pages/auth_page/login_page/login_page.dart';
import 'package:exclusive_web/pages/auth_page/register_page/register_page.dart';
import 'package:exclusive_web/pages/cart_page/cart_page.dart';
import 'package:exclusive_web/pages/contact_page/contact_page.dart';
import 'package:exclusive_web/pages/home_page/home_page.dart';
import 'package:exclusive_web/pages/root_page/root_page.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

// @TypedGoRoute<ErrorRoute>(path: '/error')
// class ErrorRoute extends GoRouteData {
//   const ErrorRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) => const ErrorPage();
// }

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedStatefulShellRoute<RootShellRoute>(
  branches: [
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<HomeRoute>(path: '/home', routes: [
          TypedGoRoute<CartRoute>(
            path: 'cart',
          ),
          TypedGoRoute<AccountRoute>(
            path: 'account',
          ),
        ]),
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<ContactRoute>(
          path: '/contact',
        ),
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<AboutRoute>(
          path: '/about',
        ),
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<SignUpRoute>(
          path: '/sign-up',
        ),
      ],
    ),
    // TypedStatefulShellBranch(
    //   routes: [
    //     TypedGoRoute<ContactRoute>(
    //       path: '/account',
    //     ),
    //   ],
    // ),
    // TypedStatefulShellBranch(
    //   routes: [
    //     TypedGoRoute<ErrorRoute>(
    //       path: '/error',
    //     ),
    //   ],
    // ),
  ],
)
class RootShellRoute extends StatefulShellRouteData {
  const RootShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    locator<NavigationService>().setShell(navigationShell);
    return RootPage(
      navigationShell: navigationShell,
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const HomePage();
}

class CartRoute extends GoRouteData {
  const CartRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CartPage();
}

class ContactRoute extends GoRouteData {
  const ContactRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const ContactPage();
}

class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const AccountPage();
}

class AboutRoute extends GoRouteData {
  const AboutRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const AboutPage();
}

class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const RegisterPage();
}

// class ContactRoute extends GoRouteData {
//   const ContactRoute();

//   @override
//   Widget build(
//     BuildContext context,
//     GoRouterState state,
//   ) =>
//       const ContactPage();
// }

// class ErrorRoute extends GoRouteData {
//   const ErrorRoute();

//   @override
//   Widget build(
//     BuildContext context,
//     GoRouterState state,
//   ) =>
//       const ErrorPage();
// }
