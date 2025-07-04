import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc_state.freezed.dart';

enum SearchBlocStatus {
  loading,
  loaded,
  error,
}

@freezed
class SearchBlocState with _$SearchBlocState {
  const factory SearchBlocState({
    @Default([]) List<ProductLightModel> productList,
    @Default(SearchBlocStatus.loading) SearchBlocStatus status,
  }) = _SearchBlocState;
}
