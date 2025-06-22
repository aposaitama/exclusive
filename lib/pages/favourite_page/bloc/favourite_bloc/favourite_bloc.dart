import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_event_bloc.dart';
import 'package:exclusive_web/services/favourite_service/favourite_service.dart';

class FavouriteBloc extends Bloc<FavouriteBlocEvent, FavouriteBlocState> {
  final _favouriteService = locator<FavouriteService>();
  FavouriteBloc() : super(const FavouriteBlocState()) {
    on<AddProductToCartEvent>(
      _addProductToCart,
    );
    on<LoadWishlistProductsEvent>(
      _loadWishlistProducts,
    );
    on<AddProductToWishlistEvent>(
      _addProductToWishlist,
    );
    on<RemoveProductFromWishlistEvent>(
      _removeProductToWishlist,
    );
  }

  Future<void> _addProductToCart(
    AddProductToCartEvent event,
    Emitter<FavouriteBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _favouriteService.addToCart(event.productId);
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _addProductToWishlist(
    AddProductToWishlistEvent event,
    Emitter<FavouriteBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _favouriteService.addToWishlist(event.productId);
      final updatedList = await _favouriteService.getWishlist();
      emit(
        state.copyWith(
          productsList: updatedList,
          loadingWishlistStatus: LoadingWishlistStatus.successfull,
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

  Future<void> _removeProductToWishlist(
    RemoveProductFromWishlistEvent event,
    Emitter<FavouriteBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: '',
      ),
    );
    try {
      await _favouriteService.removeFromWishlist(event.productId);
      final updatedList = await _favouriteService.getWishlist();
      emit(
        state.copyWith(
          productsList: updatedList,
          loadingWishlistStatus: LoadingWishlistStatus.successfull,
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

  Future<void> _loadWishlistProducts(
    LoadWishlistProductsEvent event,
    Emitter<FavouriteBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingWishlistStatus: LoadingWishlistStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      final productInfo = await _favouriteService.getWishlist();
      emit(
        state.copyWith(
          productsList: productInfo,
          loadingWishlistStatus: LoadingWishlistStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loadingWishlistStatus: LoadingWishlistStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        loadingWishlistStatus: LoadingWishlistStatus.initial,
        errorMessage: '',
      ),
    );
  }
}
