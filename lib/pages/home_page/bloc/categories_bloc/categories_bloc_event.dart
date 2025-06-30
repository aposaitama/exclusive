import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc_event.freezed.dart';

@freezed
class CategoriesBlocEvent with _$CategoriesBlocEvent {
  const factory CategoriesBlocEvent.loadCategories(
    int page,
    int pageSize,
    bool refresh,
  ) = LoadCategoriesBlocEvent;
}
