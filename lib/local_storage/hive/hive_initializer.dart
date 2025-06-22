import 'package:exclusive_web/models/hive_models/hive_cart_model/hive_cart_product_model.dart';
import 'package:exclusive_web/models/hive_models/hive_product_model/hive_product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveInitializer {
  static Future<void> initHive() async {
    if (!kIsWeb) {
      await Hive.initFlutter();
    } else {
      await Hive.initFlutter();
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(
        HiveProductModelAdapter(),
      );
    }

    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(
        HiveCartProductModelAdapter(),
      );
    }

    await Hive.openBox<HiveProductModel>(
      'wishlistBox',
    );

    await Hive.openBox<HiveCartProductModel>(
      'cartBox',
    );
  }
}
