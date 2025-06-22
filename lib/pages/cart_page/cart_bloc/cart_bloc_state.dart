import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc_state.freezed.dart';

enum LoadingCartlistStatus { initial, successfull, failed }

@freezed
class CartBlocState with _$CartBlocState {
  const factory CartBlocState({
    @Default(LoadingCartlistStatus.initial)
    LoadingCartlistStatus loadingCartlistStatus,
    @Default([]) List<CartProductModel> productsList,
    @Default('') String errorMessage,
  }) = _CartBlocState;
}
