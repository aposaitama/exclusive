import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_selling_bloc_event.freezed.dart';

@freezed
class BestSellingBlocEvent with _$BestSellingBlocEvent {
  const factory BestSellingBlocEvent.loadBestSellingProducts() =
      LoadBestSellingProductEvent;
}
