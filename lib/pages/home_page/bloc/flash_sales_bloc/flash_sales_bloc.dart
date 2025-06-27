import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc_state.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

class FlashSalesBloc extends Bloc<FlashSalesBlocEvent, FlashSalesBlocState> {
  final _productService = locator<ProductService>();

  FlashSalesBloc() : super(const FlashSalesBlocState()) {
    on<LoadFlashSalesProductEvent>(
      _loadFlashSalesProducts,
    );
    on<LoadFlashSalesProductLightModelEvent>(
      _loadFlashSalesProductsLightModel,
    );
  }

  Future<void> _loadFlashSalesProducts(
    LoadFlashSalesProductEvent event,
    Emitter<FlashSalesBlocState> emit,
  ) async {
    try {
      final flashSalesProduct = await _productService.getFlashSalesProduct();

      if (flashSalesProduct != null) {
        emit(
          state.copyWith(
            flashSales: flashSalesProduct,
          ),
        );
      }
    } catch (e) {
      // emit(
      //   state.copyWith(
      //     flashSalesProductList: [],
      //   ),
      // );
    }
  }

  Future<void> _loadFlashSalesProductsLightModel(
    LoadFlashSalesProductLightModelEvent event,
    Emitter<FlashSalesBlocState> emit,
  ) async {
    if (state.isLoadingNext && !event.refresh) return;

    if (!event.refresh) {
      emit(state.copyWith(isLoadingNext: true));
    }

    final nextPage = event.refresh ? 1 : state.page + 1;

    try {
      final flashSalesProduct =
          await _productService.getFlashSalesProductLightModel(
        page: nextPage,
      );

      final newProducts = flashSalesProduct;
      final combined =
          event.refresh ? newProducts : [...state.products, ...newProducts];

      emit(
        state.copyWith(
          products: combined,
          page: nextPage,
          isLoadingNext: false,
          hasReachedEnd: newProducts.length < state.pageSize,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoadingNext: false));
    }
  }
}
