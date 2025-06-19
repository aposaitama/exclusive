import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_sales_bloc_state.freezed.dart';

@freezed
class FlashSalesBlocState with _$FlashSalesBlocState {
  const factory FlashSalesBlocState({
    @Default([]) List<ProductLightModel> flashSalesProductList,
  }) = _FlashSalesBlocState;
}
