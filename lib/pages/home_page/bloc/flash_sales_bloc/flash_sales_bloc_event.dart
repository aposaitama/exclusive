import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_sales_bloc_event.freezed.dart';

@freezed
class FlashSalesBlocEvent with _$FlashSalesBlocEvent {
  const factory FlashSalesBlocEvent.loadFlashSalesProducts() =
      LoadFlashSalesProductEvent;
}
