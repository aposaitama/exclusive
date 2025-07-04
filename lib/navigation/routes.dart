import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/about_page/about_page.dart';
import 'package:exclusive_web/pages/account_page/account_page.dart';
import 'package:exclusive_web/pages/account_page/address_book_page/address_book_page.dart';
import 'package:exclusive_web/pages/account_page/my_profile_page/my_profile_section.dart';
import 'package:exclusive_web/pages/account_page/payment_page/payment_page.dart';
import 'package:exclusive_web/pages/all_products_page/all_products_page.dart';
import 'package:exclusive_web/pages/auth_page/login_page/login_page.dart';
import 'package:exclusive_web/pages/auth_page/register_page/register_page.dart';
import 'package:exclusive_web/pages/cart_page/cart_page.dart';
import 'package:exclusive_web/pages/checkout_page/checkout_page.dart';
import 'package:exclusive_web/pages/contact_page/contact_page.dart';
import 'package:exclusive_web/pages/favourite_page/favourite_page.dart';
import 'package:exclusive_web/pages/home_page/home_page.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/product_details_screen.dart';
import 'package:exclusive_web/pages/root_page/root_page.dart';
import 'package:exclusive_web/repositories/general_products_repository/general_products_repository.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

// @TypedGoRoute<ErrorRoute>(path: '/error')
// class ErrorRoute extends GoRouteData {
//   const ErrorRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) => const ErrorPage();
// }

// @TypedGoRoute<LoginRoute>(path: '/login')
// class LoginRoute extends GoRouteData {
//   const LoginRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const LoginPage();
//   }
// }

// @TypedGoRoute<FavouriteRoute>(path: '/favourite')
// class FavouriteRoute extends GoRouteData {
//   const FavouriteRoute();

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const FavouritePage();
//   }
// }

enum ProductSectionType {
  flashSale,
  bestSelling,
  explore,
  justForYou,
}

class AccountShellRoute extends StatefulShellRouteData {
  const AccountShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AccountPage(navigationShell: navigationShell);
  }
}

class AccountAddressRoute extends GoRouteData {
  const AccountAddressRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddressSection();
  }
}

class AccountPaymentRoute extends GoRouteData {
  const AccountPaymentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PaymentSection();
  }
}

class AccountProfileRoute extends GoRouteData {
  const AccountProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MyProfileSection();
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
          TypedGoRoute<CheckoutRoute>(
            path: 'checkout',
          ),
          TypedGoRoute<FavouriteRoute>(
            path: 'favourite',
          ),
          TypedGoRoute<ProductsRoute>(
            path: 'products',
          ),
          TypedStatefulShellRoute<AccountShellRoute>(
            branches: [
              TypedStatefulShellBranch(
                routes: [
                  TypedGoRoute<AccountProfileRoute>(path: 'account/profile'),
                ],
              ),
              TypedStatefulShellBranch(
                routes: [
                  TypedGoRoute<AccountAddressRoute>(path: 'account/address'),
                ],
              ),
              TypedStatefulShellBranch(
                routes: [
                  TypedGoRoute<AccountPaymentRoute>(path: 'account/payment'),
                ],
              ),
            ],
          ),
          TypedGoRoute<ProductDetailsRoute>(
            path: 'product/:id',
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
        TypedGoRoute<LoginRoute>(
          path: '/login',
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

class FavouriteRoute extends GoRouteData {
  const FavouriteRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const FavouritePage();
}

class ProductsRoute extends GoRouteData {
  final ProductSectionType type;
  final String sectionName;

  const ProductsRoute({required this.type, required this.sectionName});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final repository = _getRepositoryFromType(type);
    return AllProductsPage(
      repository: repository,
      sectionName: sectionName,
    );
  }

  GeneralViewAllRepository _getRepositoryFromType(ProductSectionType type) {
    switch (type) {
      case ProductSectionType.flashSale:
        return FlashSalesProductsRepository();
      case ProductSectionType.bestSelling:
        return BestSellingProductsRepository();
      case ProductSectionType.explore:
        return ExploreOurProductsRepository();
      case ProductSectionType.justForYou:
        return BestSellingProductsRepository();
    }
  }
}

class CheckoutRoute extends GoRouteData {
  const CheckoutRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CheckoutPage();
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

// class AccountRoute extends GoRouteData {
//   const AccountRoute();

//   @override
//   Widget build(
//     BuildContext context,
//     GoRouterState state,
//   ) =>
//       const AccountPage(

//       );
// }

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

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LoginPage();
}

class ProductDetailsRoute extends GoRouteData {
  final String id;

  const ProductDetailsRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ProductDetailsBloc(),
      child: ProductDetailsScreen(
        productId: id,
      ),
    );
  }
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
