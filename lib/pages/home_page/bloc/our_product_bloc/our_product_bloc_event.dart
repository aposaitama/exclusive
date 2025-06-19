import 'package:freezed_annotation/freezed_annotation.dart';

part 'our_product_bloc_event.freezed.dart';

@freezed
class OurProductBlocEvent with _$OurProductBlocEvent {
  const factory OurProductBlocEvent.loadOurProducts() =
      LoadOurProductsProductEvent;
}
