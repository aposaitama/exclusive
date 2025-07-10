import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_bloc_event.freezed.dart';

@freezed
class ProductDetailsBlocEvent with _$ProductDetailsBlocEvent {
  const factory ProductDetailsBlocEvent.loadInfo(
    String productId,
  ) = LoadDetailedProductInfoEvent;
  const factory ProductDetailsBlocEvent.changeRating(
    double rating,
  ) = ChangeProductRatingEvent;
}
