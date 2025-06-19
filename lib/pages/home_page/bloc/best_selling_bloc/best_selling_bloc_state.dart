import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_selling_bloc_state.freezed.dart';

@freezed
class BestSellingBlocState with _$BestSellingBlocState {
  const factory BestSellingBlocState({
    @Default([]) List<ProductLightModel> bestSellingProductList,
  }) = _BestSellingBlocState;
}
