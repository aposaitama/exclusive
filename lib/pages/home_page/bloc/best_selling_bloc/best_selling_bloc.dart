import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc_state.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

class BestSellingBloc extends Bloc<BestSellingBlocEvent, BestSellingBlocState> {
  final _productService = locator<ProductService>();

  BestSellingBloc() : super(const BestSellingBlocState()) {
    on<BestSellingBlocEvent>(
      _loadBestSellingProducts,
    );
  }

  Future<void> _loadBestSellingProducts(
    BestSellingBlocEvent event,
    Emitter<BestSellingBlocState> emit,
  ) async {
    try {
      final bestSellingProductList =
          await _productService.getBestSellingProducts();
      emit(
        state.copyWith(
          bestSellingProductList: bestSellingProductList,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          bestSellingProductList: [],
        ),
      );
    }
  }
}
