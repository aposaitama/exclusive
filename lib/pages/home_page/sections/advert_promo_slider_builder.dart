import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/utils/scroll_behavior_helper.dart';
import 'package:exclusive_web/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertPromoSlider extends StatefulWidget {
  final List<PromoSliderModel> promoItems;
  final String bannerProductIcon;
  final String bannerProductName;
  final String advertBannerTitle;
  final String advertBannerImagePath;

  final void Function()? onButtonPressed;
  const AdvertPromoSlider({
    super.key,
    required this.advertBannerTitle,
    required this.advertBannerImagePath,
    this.onButtonPressed,
    required this.bannerProductIcon,
    required this.bannerProductName,
    required this.promoItems,
  });

  @override
  State<AdvertPromoSlider> createState() => _AdvertPromoSliderState();
}

class _AdvertPromoSliderState extends State<AdvertPromoSlider> {
  final PageController _pageController = PageController();
  int currentPage = 2;

  void onShopNowPressed(int index) {
    ProductDetailsRoute(
      id: widget.promoItems[index].productID.toString(),
    ).go(context);
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 892.0,
      ),
      child: SizedBox(
        height: 344.0,
        child: Stack(
          children: [
            Container(
              height: 344.0,
              color: Colors.black,
              child: PageView.builder(
                scrollBehavior: MyCustomScrollBehavior(),
                controller: _pageController,
                itemCount: widget.promoItems.length,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(
                    () {
                      currentPage = index;
                    },
                  );
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            bottom: 20.0,
                            right: 20.0,
                          ),
                          child: Image.network(
                            widget.promoItems[index].advertBannerImage.url
                                .toImageUrl(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 64.0,
                          top: 58.0,
                          bottom: 47.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      widget.promoItems[index].bannerProductIcon
                                          .url
                                          .toImageUrl(),
                                    ),
                                    SizedBox(
                                      width: 24.0,
                                    ),
                                    Text(
                                      widget
                                          .promoItems[index].bannerProductName,
                                      style: AppFonts.poppingSemiBold.copyWith(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 294.0,
                                  child: Text(
                                    widget.promoItems[index].advertBannerTitle,
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      color: Colors.white,
                                      fontSize: 48.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomTextButton(
                                      onButtonPressed: () =>
                                          onShopNowPressed(index),
                                      buttonTitle: 'Shop Now',
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Transform.rotate(
                                      angle: 3.14,
                                      child: SvgPicture.asset(
                                        Assets.icons.iconsArrowLeft,
                                        colorFilter: ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            if (widget.promoItems.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12.0,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: widget.promoItems.length,
                    onDotClicked: (index) {
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(
                          milliseconds: 600,
                        ),
                        curve: Curves.easeInOut,
                      );
                    },
                    effect: CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: 14,
                        height: 14,
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.circular(
                          7,
                        ),
                        dotBorder: DotBorder(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                      dotDecoration: DotDecoration(
                        width: 12,
                        height: 12,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                      ),
                      spacing: 11,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
