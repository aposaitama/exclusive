import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_products_state.freezed.dart';

@freezed
class AllProductsState with _$AllProductsState {
  factory AllProductsState({
    @Default(false) bool hasReachedEnd,
    @Default([]) List<ProductLightModel> productList,
    @Default('') String errorMessage,
  }) = _AllProductsState;
}
