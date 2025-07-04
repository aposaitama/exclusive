import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc_event.freezed.dart';

@freezed
class SearchBlocEvent with _$SearchBlocEvent {
  const factory SearchBlocEvent.search(String query) = SearchProductsEvent;
  const factory SearchBlocEvent.loadNext(String query) = LoadNextSearchEvent;
}
