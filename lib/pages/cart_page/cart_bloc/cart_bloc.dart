import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/hive_models/hive_cart_model/hive_cart_product_model.dart';

import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_state.dart';
import 'package:exclusive_web/services/cart_service/cart_service.dart';

class CartBloc extends Bloc<CartBlocEvent, CartBlocState> {
  final _cartService = locator<CartService>();
  CartBloc() : super(const CartBlocState()) {
    on<AddProductToCartlistEvent>(
      _addProductToCart,
    );
    on<LoadCartlistProductsEvent>(
      _loadCartlistProducts,
    );

    on<RemoveProductFromCartlistEvent>(
      _removeProductFromCartlist,
    );

    on<AddProductQuantityEvent>(
      _addProductQuantity,
    );
    on<RemoveProductQuantityEvent>(
      _removeProductQuantity,
    );
    on<ClearCartEvent>(
      _clearCart,
    );
  }

  Future<void> _clearCart(
    ClearCartEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _cartService.clearCart();
      final updatedList = await _cartService.getCartProducts();
      emit(
        state.copyWith(
          productsList: updatedList,
          loadingCartlistStatus: LoadingCartlistStatus.successfull,
          errorMessage: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _addProductToCart(
    AddProductToCartlistEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _cartService.addToCart(
        HiveCartProductModel(
          id: event.productId,
          colorId: event.colorId,
          count: event.count,
        ),
      );
      final updatedList = await _cartService.getCartProducts();
      emit(
        state.copyWith(
          productsList: updatedList,
          loadingCartlistStatus: LoadingCartlistStatus.successfull,
          errorMessage: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _removeProductFromCartlist(
    RemoveProductFromCartlistEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _cartService.removeFromCart(event.productId);
      final updatedList = await _cartService.getCartProducts();
      emit(
        state.copyWith(
          productsList: updatedList,
          loadingCartlistStatus: LoadingCartlistStatus.successfull,
          errorMessage: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _loadCartlistProducts(
    LoadCartlistProductsEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingCartlistStatus: LoadingCartlistStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      final productsList = await _cartService.getCartProducts();
      emit(
        state.copyWith(
          productsList: productsList,
          loadingCartlistStatus: LoadingCartlistStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loadingCartlistStatus: LoadingCartlistStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        loadingCartlistStatus: LoadingCartlistStatus.initial,
        errorMessage: '',
      ),
    );
  }

  Future<void> _addProductQuantity(
    AddProductQuantityEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    await _cartService.increaseProductQuantity(event.productId);
    final updatedList = await _cartService.getCartProducts();
    emit(
      state.copyWith(
        productsList: updatedList,
        loadingCartlistStatus: LoadingCartlistStatus.successfull,
        errorMessage: '',
      ),
    );
  }

  Future<void> _removeProductQuantity(
    RemoveProductQuantityEvent event,
    Emitter<CartBlocState> emit,
  ) async {
    await _cartService.decreaseProductQuantity(event.productId);
    final updatedList = await _cartService.getCartProducts();
    emit(
      state.copyWith(
        productsList: updatedList,
        loadingCartlistStatus: LoadingCartlistStatus.successfull,
        errorMessage: '',
      ),
    );
  }
}
