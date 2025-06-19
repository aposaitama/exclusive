import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc_state.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

class OurProductBloc extends Bloc<OurProductBlocEvent, OurProductBlocState> {
  final _productService = locator<ProductService>();

  OurProductBloc() : super(const OurProductBlocState()) {
    on<OurProductBlocEvent>(
      _loadOurProducts,
    );
  }

  Future<void> _loadOurProducts(
    OurProductBlocEvent event,
    Emitter<OurProductBlocState> emit,
  ) async {
    try {
      final ourProductList = await _productService.getFlashSalesProduct();
      emit(
        state.copyWith(
          ourProductList: ourProductList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          ourProductList: [],
        ),
      );
    }
  }
}
