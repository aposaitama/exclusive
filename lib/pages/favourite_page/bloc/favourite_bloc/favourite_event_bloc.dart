import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_event_bloc.freezed.dart';

@freezed
class FavouriteBlocEvent with _$FavouriteBlocEvent {
  const factory FavouriteBlocEvent.loadWishlistProducts() =
      LoadWishlistProductsEvent;
  const factory FavouriteBlocEvent.addProductToWishlist(
    String productId,
  ) = AddProductToWishlistEvent;
  const factory FavouriteBlocEvent.removeProductFromWishlist(
    String productId,
  ) = RemoveProductFromWishlistEvent;
  const factory FavouriteBlocEvent.addProductsToCart(
    List<String> productId,
  ) = AddProductToCartEvent;
}
