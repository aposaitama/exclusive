import 'package:bot_toast/bot_toast.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/navigation/app_router.dart';
import 'package:exclusive_web/navigation/cubit/navigation_cubit.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc.dart';
import 'package:exclusive_web/pages/auth_page/register_page/bloc/register_bloc/register_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  await dotenv.load(
    fileName: "lib/api_keys.env",
  );

  final scaffoldKey = GlobalKey<ScaffoldState>();
  await setupLocator(scaffoldKey);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => RegisterBloc(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
      BlocProvider(
        create: (context) => CategoriesBloc(),
      ),
      BlocProvider(
        create: (context) => FlashSalesBloc(),
      ),
      BlocProvider(
        create: (context) => BestSellingBloc(),
      ),
      BlocProvider(
        create: (context) => OurProductBloc(),
      ),
      BlocProvider(
        create: (context) => ContactBloc(),
      ),
      BlocProvider(
        create: (context) => NavigationCubit(),
      ),
      BlocProvider(
        create: (context) => FavouriteBloc(),
      ),
      BlocProvider(
        create: (context) => CartBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        final botToastBuilder = BotToastInit()(context, child);
        return ResponsiveBreakpoints.builder(
          child: botToastBuilder,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 900, name: TABLET),
            const Breakpoint(start: 901, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: AppRouter().createRouter(),
    );
  }
}
