import 'package:exclusive_web/gen/assets.gen.dart';
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
import 'package:exclusive_web/pages/home_page/sections/advert_banner_section.dart';
import 'package:exclusive_web/pages/home_page/sections/best_selling_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/category_section.dart';
import 'package:exclusive_web/pages/home_page/sections/explore_our_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/flash_sales_section.dart';
import 'package:exclusive_web/pages/home_page/sections/new_arival_section.dart';
import 'package:exclusive_web/pages/home_page/sections/showcase_section.dart';
import 'package:exclusive_web/pages/sections/benefits_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
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

    context.read<CategoriesBloc>().add(
          LoadCategoriesBlocEvent(),
        );
    context.read<FlashSalesBloc>().add(
          LoadFlashSalesProductEvent(),
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
            ShowcaseSection(),
            SizedBox(
              height: 140.0,
            ),
            BlocBuilder<FlashSalesBloc, FlashSalesBlocState>(
              builder: (context, state) {
                return FlashSalesSection(
                  flashSalesProducts: state.flashSalesProductList,
                );
              },
            ),
            BlocBuilder<CategoriesBloc, CategoriesBlocState>(
              builder: (context, state) {
                return CategorySection(
                  categories: state.categoriesList,
                );
              },
            ),
            BlocBuilder<BestSellingBloc, BestSellingBlocState>(
              builder: (context, state) {
                return BestSellingProductsSection(
                  bestSellingProducts: state.bestSellingProductList,
                );
              },
            ),
            AdvertBannerSection(
              categoryName: 'Categories',
              advertBannerTitle: 'Enhance Your Music Experience',
              advertBannerImagePath: Assets.images.jbl.path,
              advertBannerFinishDate: DateTime(
                20205,
                6,
                25,
                18,
              ),
            ),
            BlocBuilder<OurProductBloc, OurProductBlocState>(
              builder: (context, state) {
                return ExploreOurProductsSection(
                  ourProducts: state.ourProductList,
                );
              },
            ),
            NewArivalSection(),
            BenefitsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
