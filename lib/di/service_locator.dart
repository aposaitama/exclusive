import 'package:dio/dio.dart';
import 'package:exclusive_web/local_storage/hive/hive_initializer.dart';
import 'package:exclusive_web/models/hive_models/hive_cart_model/hive_cart_product_model.dart';
import 'package:exclusive_web/models/hive_models/hive_product_model/hive_product_model.dart';
import 'package:exclusive_web/repositories/advert_repository/advert_repository.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';
import 'package:exclusive_web/repositories/cart_local_repository/cart_local_repository.dart';
import 'package:exclusive_web/repositories/categories_repository/categories_repository.dart';
import 'package:exclusive_web/repositories/checkout_repository/checkout_repository.dart';
import 'package:exclusive_web/repositories/contact_repository/contact_repository.dart';
import 'package:exclusive_web/repositories/favourite_local_repository/favourite_local_repository.dart';
import 'package:exclusive_web/repositories/order_repository/order_repository.dart';
import 'package:exclusive_web/repositories/product_repository/product_repository.dart';
import 'package:exclusive_web/services/advert_service/advert_service.dart';
import 'package:exclusive_web/services/cart_service/cart_service.dart';
import 'package:exclusive_web/services/categories_service/categories_service.dart';
import 'package:exclusive_web/services/checkout_service/checkout_service.dart';
import 'package:exclusive_web/services/contact_service/contact_service.dart';
import 'package:exclusive_web/services/dio_service/dio_service.dart';
import 'package:exclusive_web/services/favourite_service/favourite_service.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:exclusive_web/services/order_service/order_service.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator(GlobalKey<ScaffoldState> scaffoldKey) async {
  await HiveInitializer.initHive();
  final wishlistBox = Hive.box<HiveProductModel>('wishlistBox');
  final cartBox = Hive.box<HiveCartProductModel>('cartBox');
  locator.registerSingleton<Box<HiveProductModel>>(wishlistBox);
  locator.registerSingleton<Box<HiveCartProductModel>>(cartBox);
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);
  locator.registerSingleton<SharedPreferencesService>(
    SharedPreferencesService(prefs),
  );

  locator.registerSingleton<Dio>(createDio());

  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AuthRepository());
  locator.registerLazySingleton(
    () => FavouriteLocalRepository(wishlistBox),
  );
  locator.registerLazySingleton(
    () => FavouriteService(
      locator<FavouriteLocalRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => CartLocalRepository(cartBox),
  );
  locator.registerLazySingleton(
    () => CartService(
      locator<CartLocalRepository>(),
    ),
  );

  locator.registerLazySingleton(() => ContactRepository());
  locator.registerLazySingleton(() => ContactService());
  locator.registerLazySingleton(() => OrderRepository());
  locator.registerLazySingleton(() => OrderService());
  locator.registerLazySingleton(() => CategoriesRepository());
  locator.registerLazySingleton(() => CategoriesService());
  locator.registerLazySingleton(() => AdvertRepository());
  locator.registerLazySingleton(() => AdvertService());
  locator.registerLazySingleton(() => ProductRepository());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => CheckoutRepository());
  locator.registerLazySingleton(() => CheckoutService());
  locator.registerSingleton<GlobalKey<ScaffoldState>>(scaffoldKey);
}
