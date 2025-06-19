import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'our_product_bloc_state.freezed.dart';

@freezed
class OurProductBlocState with _$OurProductBlocState {
  const factory OurProductBlocState({
    @Default([]) List<ProductLightModel> ourProductList,
  }) = _OurProductBlocState;
}
