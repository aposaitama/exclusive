import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_event.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_state.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsBlocEvent, ProductDetailsBlocState> {
  final _productService = locator<ProductService>();
  ProductDetailsBloc() : super(const ProductDetailsBlocState()) {
    on<ProductDetailsBlocEvent>(
      _loadProductInfo,
    );
  }

  Future<void> _loadProductInfo(
    ProductDetailsBlocEvent event,
    Emitter<ProductDetailsBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingProductInfoStatus: LoadingProductInfoStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      final productInfo = await _productService.getDetailedProductInfo(
        event.productId,
      );
      emit(
        state.copyWith(
          product: productInfo,
          loadingProductInfoStatus: LoadingProductInfoStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loadingProductInfoStatus: LoadingProductInfoStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        loadingProductInfoStatus: LoadingProductInfoStatus.initial,
        errorMessage: '',
      ),
    );
  }
}
