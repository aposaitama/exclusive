import 'package:exclusive_web/models/flash_sale_model/flash_sale_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_sales_bloc_state.freezed.dart';

@freezed
class FlashSalesBlocState with _$FlashSalesBlocState {
  const factory FlashSalesBlocState({
    @Default(
      FlashSaleModel(
        id: 0,
        documentId: '',
        products: [],
      ),
    )
    FlashSaleModel flashSales,
    @Default([]) List<ProductLightModel> products,
    @Default(1) int page,
    @Default(6) int pageSize,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isLoadingNext,
  }) = _FlashSalesBlocState;
}
