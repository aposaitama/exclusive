import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/home_page/sections/advert_promo_slider_builder.dart';
import 'package:exclusive_web/pages/home_page/widgets/category_showcase_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ShowcaseSection extends StatelessWidget {
  final List<PromoSliderModel> promoItems;
  const ShowcaseSection({super.key, required this.promoItems});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    final List<String> categories = [
      "Woman’s Fashion",
      "Men’s Fashion",
      "Electronics",
      "Home & Lifestyle",
      "Medicine",
      "Sports & Outdoor",
      "Baby’s & Toys",
      "Groceries & Pets",
      "Health & Beauty",
    ];
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1210.0,
      ),
      child: isMobileOrTablet
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       border: Border(
                //     right: BorderSide(
                //       width: 1.0,
                //       color: Color(
                //         0xFFB3B3B3,
                //       ).withValues(
                //         alpha: 0.3,
                //       ),
                //     ),
                //   )),
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //       top: 40.0,
                //     ),
                //     child: SizedBox(
                //       width: 230.0,
                //       height: 344.0,
                //       child: Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: List.generate(
                //             categories.length,
                //             (index) => CategoryShowcaseItemTile(
                //               categoryName: categories[index],
                //             ),
                //           )),
                //     ),
                //   ),
                // ),
                AdvertPromoSlider(
                  promoItems: promoItems,
                  advertBannerTitle: 'Up to 10% off Voucher',
                  advertBannerImagePath: Assets.images.iosPromo.path,
                  bannerProductIcon: Assets.images.appleLogo.path,
                  bannerProductName: 'iPhone 14 Series',
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(
                bottom: 140.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(
                        width: 1.0,
                        color: Color(
                          0xFFB3B3B3,
                        ).withValues(
                          alpha: 0.3,
                        ),
                      ),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 40.0,
                      ),
                      child: SizedBox(
                        width: 230.0,
                        height: 344.0,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              categories.length,
                              (index) => GestureDetector(
                                onTap: () => ProductsRoute(
                                  type: ProductSectionType.department,
                                  sectionName:
                                      'Filters by Department: ${categories[index]}',
                                  categoryName: categories[index],
                                ).go(context),
                                child: CategoryShowcaseItemTile(
                                  categoryName: categories[index],
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45.0,
                  ),
                  Expanded(
                    child: AdvertPromoSlider(
                      promoItems: promoItems,
                      advertBannerTitle: 'Up to 10% off Voucher',
                      advertBannerImagePath: Assets.images.iosPromo.path,
                      bannerProductIcon: Assets.images.appleLogo.path,
                      bannerProductName: 'iPhone 14 Series',
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
