import 'dart:async';

import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/flash_sale_model/flash_sale_model.dart';
import 'package:exclusive_web/pages/home_page/widgets/count_time_widget.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class FlashSalesSection extends StatefulWidget {
  final FlashSaleModel flashSalesItems;
  const FlashSalesSection({
    super.key,
    required this.flashSalesItems,
  });

  @override
  State<FlashSalesSection> createState() => _FlashSalesSectionState();
}

class _FlashSalesSectionState extends State<FlashSalesSection> {
  late Duration timeLeft;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    final rawDate = widget.flashSalesItems.flashSaleDate;

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
    return Column(
      children: [
        Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Column(
                children: [
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
                        'Today\'s',
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Flash Sales',
                            style: AppFonts.poppingSemiBold.copyWith(
                              fontSize: 36.0,
                            ),
                          ),
                          SizedBox(
                            width: 80.0,
                          ),
                          CountTimeWidget(
                            days: timeLeft.inDays.toString().padLeft(2, '0'),
                            hours: (timeLeft.inHours % 24)
                                .toString()
                                .padLeft(2, '0'),
                            minutes: (timeLeft.inMinutes % 60)
                                .toString()
                                .padLeft(2, '0'),
                            seconds: (timeLeft.inSeconds % 60)
                                .toString()
                                .padLeft(2, '0'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 46.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.lightGray,
                            ),
                            child: SvgPicture.asset(
                              fit: BoxFit.scaleDown,
                              Assets.icons.iconsArrowLeft,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            width: 46.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.lightGray,
                            ),
                            child: Transform.rotate(
                              angle: 3.14,
                              child: SvgPicture.asset(
                                fit: BoxFit.scaleDown,
                                Assets.icons.iconsArrowLeft,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 350.0,
                  width: (MediaQuery.of(context).size.width / 2) + 585.0,
                  child: ListView.separated(
                    // controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.flashSalesItems.products.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 20.0),
                    itemBuilder: (context, index) {
                      final product = widget.flashSalesItems.products[index];
                      return ProductItemTile(
                        onProductImageTap: () {
                          context.go('/home/product/${product.documentId}');
                        },
                        product: product,
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            CustomRedButton(
              buttonTitle: 'View All Products',
            ),
            SizedBox(
              height: 60.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.black.withValues(
                  alpha: 0.3,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
