import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_bloc_event.freezed.dart';

@freezed
class PromoBlocEvent with _$PromoBlocEvent {
  const factory PromoBlocEvent.loadPromo() = LoadPromoBlocEvent;
}
