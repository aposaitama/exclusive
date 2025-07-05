import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_event_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/best_selling_bloc/best_selling_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/categories_bloc/categories_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/flash_sales_bloc/flash_sales_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/our_product_bloc/our_product_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/bloc/promo_bloc/promo_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/promo_bloc/promo_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/promo_bloc/promo_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/sections/advert_banner_section.dart';
import 'package:exclusive_web/pages/home_page/sections/best_selling_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/category_section.dart';
import 'package:exclusive_web/pages/home_page/sections/explore_our_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/flash_sales_section.dart';
import 'package:exclusive_web/pages/home_page/sections/new_arival_section.dart';
import 'package:exclusive_web/pages/home_page/sections/showcase_section.dart';
import 'package:exclusive_web/pages/sections/benefits_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/breadcrumbs_item.dart'
    show AutoBreadcrumbs;
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    context.read<PromoBloc>().add(
          LoadPromoBlocEvent(),
        );
    // context.read<CategoriesBloc>().add(
    //       LoadCategoriesBlocEvent(),
    //     );
    context.read<FlashSalesBloc>().add(
          LoadFlashSalesProductEvent(),
        );
    context.read<AccountBloc>().add(
          GetUserDataEvent(),
        );
    context.read<FlashSalesBloc>().add(
          LoadFlashSalesProductLightModelEvent(
            1,
            true,
          ),
        );

    context.read<BestSellingBloc>().add(
          LoadBestSellingProductEvent(),
        );
    context.read<OurProductBloc>().add(
          LoadOurProductsProductEvent(),
        );
    context.read<FavouriteBloc>().add(
          LoadWishlistProductsEvent(),
        );
    context.read<CartBloc>().add(
          LoadCartlistProductsEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            BlocBuilder<PromoBloc, PromoBlocState>(
              builder: (context, state) {
                return ShowcaseSection(
                  promoItems: state.promoSliderItems,
                );
              },
            ),
            BlocBuilder<FlashSalesBloc, FlashSalesBlocState>(
              builder: (context, state) {
                if (state.flashSales.flashSaleDate != null) {
                  return FlashSalesSection(
                    onLoadMoreTapped: () {
                      final bloc = context.read<FlashSalesBloc>();
                      if (!bloc.state.hasReachedEnd &&
                          !bloc.state.isLoadingNext) {
                        bloc.add(
                          LoadFlashSalesProductLightModelEvent(
                            bloc.state.page + 1,
                            false,
                          ),
                        );
                      }
                    },
                    products: state.products,
                    flashSalesItems: state.flashSales,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            CategorySection(
                // categories: state.categoriesList,
                ),
            BlocBuilder<BestSellingBloc, BestSellingBlocState>(
              builder: (context, state) {
                return BestSellingProductsSection(
                  bestSellingProducts: state.bestSellingProductList,
                );
              },
            ),
            BlocBuilder<PromoBloc, PromoBlocState>(
              builder: (context, state) {
                if (state.advertCardItem.endDate != null) {
                  return AdvertBannerSection(
                    onButtonPressed: () => ProductDetailsRoute(
                      id: state.advertCardItem.productID,
                    ).go(context),
                    advertCardItem: state.advertCardItem,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            BlocBuilder<OurProductBloc, OurProductBlocState>(
              builder: (context, state) {
                return ExploreOurProductsSection(
                  ourProducts: state.ourProductList,
                );
              },
            ),
            BlocBuilder<PromoBloc, PromoBlocState>(
              builder: (context, state) {
                if (state.newArivalItems.isNotEmpty) {
                  return NewArivalSection(
                    newArivalItems: state.newArivalItems,
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
            BenefitsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
