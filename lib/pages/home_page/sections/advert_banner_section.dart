import 'dart:async';

import 'package:exclusive_web/models/advert_models/advert_card_model/advert_card_model.dart';
import 'package:exclusive_web/pages/home_page/widgets/remaining_time_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/custom_green_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AdvertBannerSection extends StatefulWidget {
  final AdvertCardModel advertCardItem;

  final void Function()? onButtonPressed;
  const AdvertBannerSection({
    super.key,
    this.onButtonPressed,
    required this.advertCardItem,
  });

  @override
  State<AdvertBannerSection> createState() => _AdvertBannerSectionState();
}

class _AdvertBannerSectionState extends State<AdvertBannerSection> {
  late Duration timeLeft;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    final rawDate = widget.advertCardItem.endDate;

    if (rawDate == null) {
      timeLeft = Duration.zero;
      return;
    }

    final flashSaleDate = rawDate.toLocal();
    final now = DateTime.now();

    setState(() {
      timeLeft = flashSaleDate.difference(now);
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final updated = flashSaleDate.difference(DateTime.now());
      if (updated.isNegative) {
        _timer?.cancel();
        setState(() {
          timeLeft = Duration.zero;
        });
      } else {
        setState(() {
          timeLeft = updated;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1175.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        height: isMobileOrTablet ? 300 : 500.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: isMobileOrTablet ? 10.0 : 60.0,
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobileOrTablet ? 10.0 : 20.0,
                        vertical: isMobileOrTablet ? 10.0 : 20.0,
                      ),
                      child: Image.network(
                        widget.advertCardItem.advertCardImage.url.toImageUrl(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: isMobileOrTablet ? 20.0 : 56.0,
                top: 69.0,
                bottom: isMobileOrTablet ? 20.0 : 69.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.advertCardItem.advertCardCategoryName,
                        style: AppFonts.poppingSemiBold.copyWith(
                          color: AppColors.greenColor,
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                        ),
                      ),
                      SizedBox(
                        width: isMobileOrTablet ? 200.0 : 440.0,
                        child: Text(
                          widget.advertCardItem.advertCardTitle,
                          style: AppFonts.poppingSemiBold.copyWith(
                            color: Colors.white,
                            fontSize: isMobileOrTablet ? 18.0 : 48.0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          RemainingTimeItemTile(
                            tileTitle: 'Days',
                            remainingTime: timeLeft.inDays.toString().padLeft(
                                  2,
                                  '0',
                                ),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Hours',
                            remainingTime:
                                (timeLeft.inHours % 24).toString().padLeft(
                                      2,
                                      '0',
                                    ),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Minutes',
                            remainingTime:
                                (timeLeft.inMinutes % 60).toString().padLeft(
                                      2,
                                      '0',
                                    ),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          RemainingTimeItemTile(
                            tileTitle: 'Seconds',
                            remainingTime:
                                (timeLeft.inSeconds % 60).toString().padLeft(
                                      2,
                                      '0',
                                    ),
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
