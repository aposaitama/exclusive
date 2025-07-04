import 'package:exclusive_web/pages/all_products_page/bloc/all_products_bloc.dart';
import 'package:exclusive_web/pages/all_products_page/bloc/all_products_event.dart';
import 'package:exclusive_web/pages/all_products_page/bloc/all_products_state.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/breadcrumbs_item.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AllProductsView extends StatelessWidget {
  final String sectionName;

  const AllProductsView({super.key, required this.sectionName});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            AutoBreadcrumbs(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1170,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Products',
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: 16.0,
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
                        sectionName,
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: isMobileOrTablet ? 20.0 : 36.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  BlocBuilder<AllProductsBloc, AllProductsState>(
                    builder: (context, state) {
                      final products = state.productList;

                      return Column(
                        children: [
                          Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.start,
                            children: products
                                .map((product) =>
                                    ProductItemTile(product: product))
                                .toList(),
                          ),
                          const SizedBox(height: 80),
                          if (!state.hasReachedEnd)
                            CustomRedButton(
                              buttonTitle: 'Load More',
                              onButtonPressed: () =>
                                  context.read<AllProductsBloc>().add(
                                        const LoadMoreProducts(),
                                      ),
                            ),
                          if (state.hasReachedEnd)
                            CustomTransparentButton(
                              buttonTitle: 'There are no more products',
                            ),
                          const SizedBox(height: 40),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
