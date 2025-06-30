import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc_state.freezed.dart';

@freezed
class CategoriesBlocState with _$CategoriesBlocState {
  const factory CategoriesBlocState({
    @Default([]) List<CategoryLightModel> categoriesList,
    @Default(1) int page,
    @Default(false) bool hasReachedEnd,
    @Default(false) bool isLoadingNext,
  }) = _CategoriesBlocState;
}
