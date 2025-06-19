import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/scroll_behavior_helper.dart';
import 'package:exclusive_web/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertPromoSlider extends StatefulWidget {
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
  });

  @override
  State<AdvertPromoSlider> createState() => _AdvertPromoSliderState();
}

class _AdvertPromoSliderState extends State<AdvertPromoSlider> {
  final PageController _pageController = PageController(initialPage: 2);
  int _currentPage = 2;

  final int _totalSlides = 5;
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
                itemCount: _totalSlides,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(
                    () {
                      _currentPage = index;
                    },
                  );
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          widget.advertBannerImagePath,
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
                                    Image.asset(
                                      widget.bannerProductIcon,
                                    ),
                                    SizedBox(
                                      width: 24.0,
                                    ),
                                    Text(
                                      widget.bannerProductName,
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
                                    widget.advertBannerTitle,
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      color: Colors.white,
                                      fontSize: 48.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomTextButton(
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
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12.0,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: _totalSlides,
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
