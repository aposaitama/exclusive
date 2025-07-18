import 'package:hive/hive.dart';

part 'hive_cart_product_model.g.dart';

@HiveType(typeId: 2)
class HiveCartProductModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String colorId;

  @HiveField(2)
  final int count;

  @HiveField(3)
  final String? size;

  HiveCartProductModel({
    required this.id,
    required this.colorId,
    required this.count,
    this.size,
  });

  HiveCartProductModel copyWith({
    String? id,
    String? colorId,
    int? count,
    String? size,
  }) {
    return HiveCartProductModel(
      id: id ?? this.id,
      colorId: colorId ?? this.colorId,
      count: count ?? this.count,
      size: size ?? this.size,
    );
  }
}
