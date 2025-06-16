import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/home_page/widgets/remaining_time_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_green_button.dart';
import 'package:flutter/material.dart';

class AdvertBannerSection extends StatefulWidget {
  final String categoryName;
  final String advertBannerTitle;
  final String advertBannerImagePath;
  final DateTime advertBannerFinishDate;
  final void Function()? onButtonPressed;
  const AdvertBannerSection({
    super.key,
    required this.categoryName,
    required this.advertBannerTitle,
    required this.advertBannerFinishDate,
    this.onButtonPressed,
    required this.advertBannerImagePath,
  });

  @override
  State<AdvertBannerSection> createState() => _AdvertBannerSectionState();
}

class _AdvertBannerSectionState extends State<AdvertBannerSection> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1175.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        height: 500.0,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 60.0,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withValues(
                              alpha: 0.11,
                            ),
                            blurRadius: 70,
                            spreadRadius: 10,
                            offset: Offset(
                              0,
                              2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      widget.advertBannerImagePath,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 56.0,
                top: 69.0,
                bottom: 69.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.categoryName,
                        style: AppFonts.poppingSemiBold.copyWith(
                          color: AppColors.greenColor,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        width: 440.0,
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
                          RemainingTimeItemTile(
                            tileTitle: 'Days',
                            remainingTime: '5',
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Hours',
                            remainingTime: '23',
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Minutes',
                            remainingTime: '59',
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Seconds',
                            remainingTime: '35',
                          ),
                        ],
                      ),
                      CustomGreenButton(
                        onButtonPressed: widget.onButtonPressed,
                        buttonTitle: 'Buy Now!',
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
