import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/pages/home_page/sections/advert_promo_slider_builder.dart';
import 'package:exclusive_web/pages/home_page/widgets/category_showcase_item_tile.dart';
import 'package:flutter/material.dart';

class ShowcaseSection extends StatelessWidget {
  final List<PromoSliderModel> promoItems;
  const ShowcaseSection({super.key, required this.promoItems});

  @override
  Widget build(BuildContext context) {
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
        maxWidth: 1175.0,
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
                      (index) => CategoryShowcaseItemTile(
                        categoryName: categories[index],
                      ),
                    )),
              ),
            ),
          ),
          AdvertPromoSlider(
            promoItems: promoItems,
            advertBannerTitle: 'Up to 10% off Voucher',
            advertBannerImagePath: Assets.images.iosPromo.path,
            bannerProductIcon: Assets.images.appleLogo.path,
            bannerProductName: 'iPhone 14 Series',
          )
        ],
      ),
    );
  }
}
