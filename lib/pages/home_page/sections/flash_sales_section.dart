import 'dart:async';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/flash_sale_model/flash_sale_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/home_page/widgets/count_time_widget.dart';
import 'package:exclusive_web/repositories/general_products_repository/general_products_repository.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';

import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FlashSalesSection extends StatefulWidget {
  final List<ProductLightModel> products;
  final void Function()? onLoadMoreTapped;
  final FlashSaleModel flashSalesItems;
  const FlashSalesSection({
    super.key,
    required this.flashSalesItems,
    required this.products,
    this.onLoadMoreTapped,
  });

  @override
  State<FlashSalesSection> createState() => _FlashSalesSectionState();
}

class _FlashSalesSectionState extends State<FlashSalesSection> {
  late final ScrollController _scrollController;

  late Duration timeLeft;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
    _scrollController = ScrollController();
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
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    bool isMobile = responsive.isMobile;
    bool isTablet = responsive.isTablet;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Column(
        children: [
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1210.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: isMobileOrTablet ? 10.0 : 20.0,
                          height: isMobileOrTablet ? 20.0 : 40.0,
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
                            fontSize: isMobileOrTablet ? 12.0 : 16.0,
                            color: AppColors.redColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    isMobileOrTablet
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Flash Sales',
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CountTimeWidget(
                                    days: timeLeft.inDays
                                        .toString()
                                        .padLeft(2, '0'),
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
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        final newOffset =
                                            _scrollController.offset - 300;

                                        _scrollController.animateTo(
                                          newOffset < 0 ? 0 : newOffset,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Container(
                                        width: isMobileOrTablet ? 30.0 : 46.0,
                                        height: isMobileOrTablet ? 30.0 : 46.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.lightGray,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: SvgPicture.asset(
                                            fit: BoxFit.scaleDown,
                                            Assets.icons.iconsArrowLeft,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        widget.onLoadMoreTapped?.call();

                                        Future.delayed(
                                            const Duration(milliseconds: 300),
                                            () {
                                          _scrollController.animateTo(
                                            _scrollController
                                                .position.maxScrollExtent,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOut,
                                          );
                                        });
                                      },
                                      child: Container(
                                        width: isMobileOrTablet ? 30.0 : 46.0,
                                        height: isMobileOrTablet ? 30.0 : 46.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.lightGray,
                                        ),
                                        child: Transform.rotate(
                                          angle: 3.14,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: SvgPicture.asset(
                                              fit: BoxFit.scaleDown,
                                              Assets.icons.iconsArrowLeft,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Flash Sales',
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      fontSize: isMobileOrTablet ? 20.0 : 36.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80.0,
                                  ),
                                  CountTimeWidget(
                                    days: timeLeft.inDays
                                        .toString()
                                        .padLeft(2, '0'),
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
                                  GestureDetector(
                                    onTap: () {
                                      final newOffset =
                                          _scrollController.offset - 300;

                                      _scrollController.animateTo(
                                        newOffset < 0 ? 0 : newOffset,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: Container(
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
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      widget.onLoadMoreTapped?.call();

                                      Future.delayed(
                                          const Duration(milliseconds: 300),
                                          () {
                                        _scrollController.animateTo(
                                          _scrollController
                                              .position.maxScrollExtent,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );
                                      });
                                    },
                                    child: Container(
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
              LayoutBuilder(
                builder: (context, constraints) {
                  final screenWidth = MediaQuery.of(context).size.width;
                  final isMaxWidth = screenWidth >= 1210;
                  final containerWidth = constraints.maxWidth;

                  final itemsPerPage = isMobile
                      ? 3
                      : isTablet
                          ? 3.5
                          : 4;
                  final itemSpacing = 20.0;
                  final totalSpacing = itemSpacing * (itemsPerPage - 1);
                  final itemWidth =
                      (containerWidth - totalSpacing) / itemsPerPage;
                  if (isMaxWidth) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 380.0,
                          width:
                              (MediaQuery.of(context).size.width / 2) + 585.0,
                          child: ListView.separated(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.products.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 20.0),
                            itemBuilder: (context, index) {
                              final product = widget.products[index];
                              return ProductItemTile(
                                onProductImageTap: () {
                                  ProductDetailsRoute(id: product.documentId)
                                      .go(context);
                                },
                                product: product,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return SizedBox(
                      height: isMobileOrTablet ? (itemWidth + 110) : 380,
                      width: containerWidth,
                      child: ListView.separated(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.flashSalesItems.products.length,
                        separatorBuilder: (_, __) =>
                            SizedBox(width: itemSpacing),
                        itemBuilder: (context, index) {
                          final product =
                              widget.flashSalesItems.products[index];
                          return SizedBox(
                            width: itemWidth,
                            child: ProductItemTile(
                              sizeHeight: itemWidth,
                              product: product,
                              onProductImageTap: () =>
                                  ProductDetailsRoute(id: product.documentId)
                                      .go(context),
                            ),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: 60.0,
              ),
              CustomRedButton(
                onButtonPressed: () => ProductsRoute(
                  type: ProductSectionType.flashSale,
                  sectionName: 'Flash Sales',
                ).go(context),
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
      ),
    );
  }
}
