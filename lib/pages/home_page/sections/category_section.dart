import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_state.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/category_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CategorySection extends StatefulWidget {
  // final List<CategoryLightModel> categories;
  const CategorySection({
    super.key,
    // required this.categories
  });

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    context.read<CategoriesBloc>().add(
          LoadCategoriesBlocEvent(
            1,
            6,
            false,
          ),
        );
    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if (!_isLoaded) {
  //     final responsive = ResponsiveBreakpoints.of(context);

  //     final itemsPerPage = responsive.isMobile
  //         ? 3
  //         : responsive.isTablet
  //             ? 4
  //             : 6;

  //     context.read<CategoriesBloc>().add(
  //           LoadCategoriesBlocEvent(
  //             1,
  //             itemsPerPage,
  //             false,
  //           ),
  //         );
  //     _isLoaded = true;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final bool isMobile = responsive.isMobile;
    final bool isTablet = responsive.isTablet;
    final bool isMobileOrTablet = isMobile || isTablet;

    final int itemsPerPage = isMobile
        ? 3
        : isTablet
            ? 4
            : 6;

    return BlocListener<CategoriesBloc, CategoriesBlocState>(
      listenWhen: (previous, current) => previous.page != current.page,
      listener: (context, state) {
        setState(() {
          _currentPage = state.page - 1;
        });
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: BlocBuilder<CategoriesBloc, CategoriesBlocState>(
        builder: (context, state) {
          List<CategoryLightModel> categories = state.categoriesList;

          final pageCount = (categories.length / itemsPerPage).ceil();
          return ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1170.0,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: isMobileOrTablet ? 30.0 : 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: isMobileOrTablet ? 10.0 : 20.0,
                        height: isMobileOrTablet ? 20.0 : 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Categories',
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                          color: AppColors.redColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Browse By Category',
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: isMobileOrTablet ? 20.0 : 36.0,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (_currentPage > 0) {
                                setState(() => _currentPage--);
                                _controller.animateToPage(
                                  _currentPage,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Container(
                              width: isMobileOrTablet ? 30.0 : 46.0,
                              height: isMobileOrTablet ? 30.0 : 46.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.lightGray,
                              ),
                              child: SvgPicture.asset(
                                fit: BoxFit.scaleDown,
                                Assets.icons.iconsArrowLeft,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              final isLastLoadedPage =
                                  _currentPage == pageCount - 1;

                              if (isLastLoadedPage && !state.hasReachedEnd) {
                                // Завантажуємо наступну сторінку — далі BlocListener зробить прокрутку, коли прийдуть дані
                                context.read<CategoriesBloc>().add(
                                      LoadCategoriesBlocEvent(
                                        state.page + 1,
                                        itemsPerPage,
                                        false,
                                      ),
                                    );
                              } else if (_currentPage < pageCount - 1) {
                                // Якщо наступна сторінка вже є, просто прокручуємо і змінюємо _currentPage
                                setState(() => _currentPage++);
                                _controller.animateToPage(
                                  _currentPage,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Container(
                              width: isMobileOrTablet ? 30.0 : 46.0,
                              height: isMobileOrTablet ? 30.0 : 46.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.lightGray,
                              ),
                              child: Transform.rotate(
                                angle: 3.14,
                                child: SvgPicture.asset(
                                  fit: BoxFit.scaleDown,
                                  Assets.icons.iconsArrowLeft,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: isMobileOrTablet ? 20.0 : 60.0,
                  ),
                  SizedBox(
                    height: isMobileOrTablet ? 180.0 : 220.0,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final availableWidth = constraints.maxWidth;
                        final itemSpacing = 20.0;
                        final totalSpacing = (itemsPerPage - 1) * itemSpacing;
                        final itemWidth =
                            (availableWidth - totalSpacing) / itemsPerPage;

                        return PageView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          controller: _controller,
                          itemCount: pageCount,
                          itemBuilder: (context, pageIndex) {
                            final start = pageIndex * itemsPerPage;
                            final end = (start + itemsPerPage)
                                .clamp(0, categories.length);
                            final items = categories.sublist(start, end);

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: items
                                  .map(
                                    (category) => Padding(
                                      padding: EdgeInsets.only(
                                        right: category != items.last
                                            ? itemSpacing
                                            : 0,
                                      ),
                                      child: SizedBox(
                                        width: itemWidth,
                                        child: CategoryItemTile(
                                          iconPath: category.categoryIcon.url
                                              .toImageUrl(),
                                          categoryTitle: category.categoryName,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: isMobileOrTablet ? 30.0 : 70.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Colors.black.withValues(
                      alpha: 0.3,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
