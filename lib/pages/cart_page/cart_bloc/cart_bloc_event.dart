import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc_event.freezed.dart';

@freezed
class CartBlocEvent with _$CartBlocEvent {
  const factory CartBlocEvent.loadCartlistProducts() =
      LoadCartlistProductsEvent;
  const factory CartBlocEvent.addProductToCartlist(
    String productId,
    String colorId,
    int count,
    String? productSize,
  ) = AddProductToCartlistEvent;
  const factory CartBlocEvent.removeProductFromCartlist(
    String productId,
  ) = RemoveProductFromCartlistEvent;
  const factory CartBlocEvent.addProductQuantity(
    String productId,
  ) = AddProductQuantityEvent;
  const factory CartBlocEvent.removeProductQuantity(
    String productId,
  ) = RemoveProductQuantityEvent;
  const factory CartBlocEvent.clearCart() = ClearCartEvent;
}
