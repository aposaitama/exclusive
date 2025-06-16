import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/home_page/widgets/promo_card_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class NewArivalSection extends StatelessWidget {
  const NewArivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Row(
            children: [
              Container(
                width: 20.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: AppColors.redColor,
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Featured',
                style: AppFonts.poppingSemiBold.copyWith(
                  fontSize: 16.0,
                  color: AppColors.redColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'New Arrival',
                style: AppFonts.poppingSemiBold.copyWith(
                  fontSize: 36.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          SizedBox(
            height: 600.0,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: PromoCardItemTile(
                    promoCardImage: Assets.images.playstationPromo.path,
                    promoCardTitle: 'PlayStation 5',
                    promoCardSubtitle:
                        'Black and White version of the PS5\ncoming out on sale.',
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: PromoCardItemTile(
                          promoCardImage: Assets.images.womenPromo.path,
                          promoCardTitle: "Women’s Collections",
                          promoCardSubtitle:
                              'Featured woman collections\nthat give you another vibe.',
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: PromoCardItemTile(
                                promoCardImage:
                                    Assets.images.speakersPromo.path,
                                promoCardTitle: 'Speakers',
                                promoCardSubtitle: 'Amazon wireless speakers',
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: PromoCardItemTile(
                                promoCardImage: Assets.images.gucciPromo.path,
                                promoCardTitle: 'Perfume',
                                promoCardSubtitle: 'GUCCI INTENSE OUD EDP',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
