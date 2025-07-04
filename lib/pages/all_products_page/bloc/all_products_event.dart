import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_products_event.freezed.dart';

@freezed
class AllProductsEvent with _$AllProductsEvent {
  const factory AllProductsEvent.loadInitialProducts() = LoadInitialProducts;

  const factory AllProductsEvent.loadMoreProdocts() = LoadMoreProducts;
}
