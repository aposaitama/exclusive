import 'package:hive/hive.dart';

part 'hive_product_model.g.dart';

@HiveType(typeId: 1)
class HiveProductModel extends HiveObject {
  @HiveField(0)
  final String id;

  HiveProductModel({
    required this.id,
  });
}
