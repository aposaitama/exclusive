import 'package:exclusive_web/gen/assets.gen.dart';
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            FlashSalesSection(),
            CategorySection(),
            BestSellingProductsSection(),
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
            ExploreOurProductsSection(),
            NewArivalSection(),
            BenefitsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
