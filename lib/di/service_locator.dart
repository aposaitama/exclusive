import 'package:dio/dio.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';
import 'package:exclusive_web/services/dio_service/dio_service.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator(GlobalKey<ScaffoldState> scaffoldKey) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);
  locator.registerSingleton<SharedPreferencesService>(
    SharedPreferencesService(prefs),
  );
  locator.registerSingleton<Dio>(createDio());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AuthRepository());
  locator.registerSingleton<GlobalKey<ScaffoldState>>(scaffoldKey);
}
