import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_state.dart';
import 'package:exclusive_web/services/categories_service/categories_service.dart';

class CategoriesBloc extends Bloc<CategoriesBlocEvent, CategoriesBlocState> {
  final _categoryService = locator<CategoriesService>();

  CategoriesBloc() : super(const CategoriesBlocState()) {
    on<LoadCategoriesBlocEvent>(
      _onLoadCategoriesPage,
    );
  }

  // Future<void> _loadCategories(
  //   LoadCategoriesBlocEvent event,
  //   Emitter<CategoriesBlocState> emit,
  // ) async {
  //   try {
  //     final categoryList = await _categoryService.getAllCategories();
  //     emit(
  //       state.copyWith(
  //         categoriesList: categoryList,
  //       ),
  //     );
  //   } catch (e) {
  //     emit(
  //       state.copyWith(categoriesList: []),
  //     );
  //   }
  // }

  Future<void> _onLoadCategoriesPage(
    LoadCategoriesBlocEvent event,
    Emitter<CategoriesBlocState> emit,
  ) async {
    if (state.isLoadingNext && !event.refresh) return;

    if (!event.refresh) {
      emit(
        state.copyWith(
          isLoadingNext: true,
        ),
      );
    }

    final nextPage = event.page;

    try {
      final newCategories = await _categoryService.getCategoriesPaginated(
        nextPage,
        event.pageSize,
      );

      final updatedList = event.refresh
          ? newCategories
          : [...state.categoriesList, ...newCategories];

      emit(state.copyWith(
        categoriesList: updatedList,
        page: nextPage,
        isLoadingNext: false,
        hasReachedEnd: newCategories.length < event.pageSize,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          isLoadingNext: false,
        ),
      );
    }
  }
}
