import 'package:exclusive_web/pages/all_products_page/bloc/all_products_event.dart';
import 'package:exclusive_web/pages/all_products_page/bloc/all_products_state.dart';
import 'package:exclusive_web/repositories/general_products_repository/general_products_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final GeneralViewAllRepository repository;
  final int pageSize;

  int _currentPage = 1;
  bool _hasReachedEnd = false;

  AllProductsBloc({
    required this.repository,
    this.pageSize = 6,
  }) : super(AllProductsState()) {
    on<LoadInitialProducts>(_onLoadInitial);
    on<LoadMoreProducts>(_onLoadMore);
  }

  Future<void> _onLoadInitial(
    LoadInitialProducts event,
    Emitter<AllProductsState> emit,
  ) async {
    try {
      _currentPage = 1;
      _hasReachedEnd = false;

      final products = await repository.fetchItems(
        page: _currentPage,
        pageSize: pageSize,
      );

      _hasReachedEnd = products.length < pageSize;

      emit(
        state.copyWith(
          productList: products,
          hasReachedEnd: _hasReachedEnd,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Future<void> _onLoadMore(
    LoadMoreProducts event,
    Emitter<AllProductsState> emit,
  ) async {
    if (_hasReachedEnd) return;

    try {
      _currentPage++;

      final moreProducts = await repository.fetchItems(
        page: _currentPage,
        pageSize: pageSize,
      );

      _hasReachedEnd = moreProducts.length < pageSize;

      emit(
        state.copyWith(
          productList: [...state.productList, ...moreProducts],
          hasReachedEnd: _hasReachedEnd,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
