import 'package:exclusive_web/service/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator(GlobalKey<ScaffoldState> scaffoldKey) async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerSingleton<GlobalKey<ScaffoldState>>(scaffoldKey);
}
