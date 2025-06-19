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
  }

  Future<void> _loadFlashSalesProducts(
    LoadFlashSalesProductEvent event,
    Emitter<FlashSalesBlocState> emit,
  ) async {
    try {
      final flashSalesProductList =
          await _productService.getFlashSalesProduct();
      emit(
        state.copyWith(
          flashSalesProductList: flashSalesProductList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          flashSalesProductList: [],
        ),
      );
    }
  }
}
