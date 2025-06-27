import 'package:exclusive_web/models/advert_models/new_arival_model/new_arival_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/home_page/widgets/promo_card_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class NewArivalSection extends StatelessWidget {
  final List<NewArivalModel> newArivalItems;
  const NewArivalSection({super.key, required this.newArivalItems});

  @override
  Widget build(BuildContext context) {
    void onShopNowPressed(int index) {
      ProductDetailsRoute(
        id: newArivalItems[index].productID,
      ).go(context);
    }

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
                    onTap: () => onShopNowPressed(0),
                    promoCardImage: newArivalItems[0].advertBannerImage.url,
                    promoCardTitle: newArivalItems[0].advertBannerTitle,
                    promoCardSubtitle:
                        newArivalItems[0].advertBannerDescription,
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
                          onTap: () => onShopNowPressed(1),
                          promoCardImage:
                              newArivalItems[1].advertBannerImage.url,
                          promoCardTitle: newArivalItems[1].advertBannerTitle,
                          promoCardSubtitle:
                              newArivalItems[1].advertBannerDescription,
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
                                onTap: () => onShopNowPressed(2),
                                promoCardImage:
                                    newArivalItems[2].advertBannerImage.url,
                                promoCardTitle:
                                    newArivalItems[2].advertBannerTitle,
                                promoCardSubtitle:
                                    newArivalItems[2].advertBannerDescription,
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: PromoCardItemTile(
                                onTap: () => onShopNowPressed(3),
                                promoCardImage:
                                    newArivalItems[3].advertBannerImage.url,
                                promoCardTitle:
                                    newArivalItems[3].advertBannerTitle,
                                promoCardSubtitle:
                                    newArivalItems[3].advertBannerDescription,
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
