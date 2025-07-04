import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_bloc_state.freezed.dart';

enum LoadingWishlistStatus { initial, successfull, failed }

@freezed
class FavouriteBlocState with _$FavouriteBlocState {
  const factory FavouriteBlocState({
    @Default(LoadingWishlistStatus.initial)
    LoadingWishlistStatus loadingWishlistStatus,
    @Default([]) List<ProductLightModel> productsList,
    @Default([]) List<ProductLightModel> relatedItems,
    @Default('') String errorMessage,
  }) = _FavouriteBlocState;
}
