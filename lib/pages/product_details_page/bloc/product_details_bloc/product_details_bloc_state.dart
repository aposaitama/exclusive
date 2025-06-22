import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_bloc_state.freezed.dart';

enum LoadingProductInfoStatus { initial, successfull, failed }

enum AddingProductToCardStatus { initial, successfull, failed }

@freezed
class ProductDetailsBlocState with _$ProductDetailsBlocState {
  const factory ProductDetailsBlocState({
    @Default(LoadingProductInfoStatus.initial)
    LoadingProductInfoStatus loadingProductInfoStatus,
    @Default(AddingProductToCardStatus.initial)
    AddingProductToCardStatus addingProductToCartStatus,
    @Default('') String errorMessage,
    ProductDetailedModel? product,
  }) = _ProductDetailsBlocState;
}
