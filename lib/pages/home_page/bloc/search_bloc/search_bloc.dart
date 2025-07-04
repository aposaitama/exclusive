import 'dart:async';

import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/search_bloc/search_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/search_bloc/search_bloc_state.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  final _productService = locator<ProductService>();
  SearchBloc() : super(const SearchBlocState()) {
    on<SearchProductsEvent>(_search);

    on<LoadNextSearchEvent>(_loadNextPage);
  }

  Future<void> _search(
      SearchProductsEvent event, Emitter<SearchBlocState> emit) async {
    final query = event.query.trim();

    if (query.isEmpty) {
      emit(
        state.copyWith(
          productList: [],
          status: SearchBlocStatus.loaded,
        ),
      );
      return;
    }

    final products = await _productService.searchProducts(
      query: event.query,
      page: 1,
      pageSize: 6,
    );

    emit(
      state.copyWith(
        productList: products,
        status: SearchBlocStatus.loaded,
      ),
    );
  }

  Future<void> _loadNextPage(
      LoadNextSearchEvent event, Emitter<SearchBlocState> emit) async {
    // Завантаження наступної сторінки
  }
}
