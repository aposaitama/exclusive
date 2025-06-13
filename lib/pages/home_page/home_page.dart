import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/home_page/sections/best_selling_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/category_section.dart';
import 'package:exclusive_web/pages/home_page/sections/explore_our_products_section.dart';
import 'package:exclusive_web/pages/home_page/sections/flash_sales_section.dart';
import 'package:exclusive_web/pages/sections/benefits_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/category_item_tile.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
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
            BenefitsSection(),
            FlashSalesSection(),
            CategorySection(),
            BestSellingProductsSection(),
            ExploreOurProductsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
