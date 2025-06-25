import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/promo_bloc/promo_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/promo_bloc/promo_bloc_state.dart';
import 'package:exclusive_web/services/advert_service/advert_service.dart';

class PromoBloc extends Bloc<PromoBlocEvent, PromoBlocState> {
  final _advertService = locator<AdvertService>();

  PromoBloc() : super(const PromoBlocState()) {
    on<LoadPromoBlocEvent>(
      _loadPromo,
    );
  }

  Future<void> _loadPromo(
    LoadPromoBlocEvent event,
    Emitter<PromoBlocState> emit,
  ) async {
    try {
      final promoSliderItems = await _advertService.getPromoSlidersItem();
      emit(
        state.copyWith(
          promoSliderItems: promoSliderItems,
        ),
      );
      final newArivals = await _advertService.getNewArivalsItem();
      emit(
        state.copyWith(
          newArivalItems: newArivals,
        ),
      );
      final advertCardItem = await _advertService.getAdvertCardItem();
      if (advertCardItem != null) {
        emit(
          state.copyWith(
            advertCardItem: advertCardItem,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(promoSliderItems: []),
      );
    }
  }
}
