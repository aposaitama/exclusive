import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductItemTile extends StatefulWidget {
  final String iconPath;
  final String productName;
  final double productPrice;
  final double? productOriginPrice;
  final double? productSalePercent;
  const ProductItemTile({
    super.key,
    required this.iconPath,
    required this.productName,
    required this.productPrice,
    this.productOriginPrice,
    this.productSalePercent,
  });

  @override
  State<ProductItemTile> createState() => _ProductItemTileState();
}

class _ProductItemTileState extends State<ProductItemTile> {
  bool openCartButton = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            onEnter: (event) => setState(() {
              openCartButton = true;
            }),
            onExit: (event) => setState(() {
              openCartButton = false;
            }),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.circular(
                  4.0,
                ),
              ),
              width: 270.0,
              height: 250.0,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      widget.iconPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      right: 12.0,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 34.0,
                        height: 34.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.icons.heartSmall,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 54.0,
                      right: 12.0,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 34.0,
                        height: 34.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.icons.quickView,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (widget.productSalePercent != null)
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                        left: 12.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.redColor,
                            borderRadius: BorderRadius.circular(
                              4.0,
                            ),
                          ),
                          child: Text(
                            '-${widget.productSalePercent.toString()}%',
                            style: AppFonts.poppingRegular.copyWith(
                              color: Colors.white,
                              fontSize: 12.0,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          4.0,
                        ),
                        bottomRight: Radius.circular(
                          4.0,
                        ),
                      ),
                      child: AnimatedContainer(
                        height: openCartButton ? 40.0 : 0.0,
                        duration: Duration(
                          milliseconds: 300,
                        ),
                        curve: Curves.easeOut,
                        color: Colors.black,
                        width: double.infinity,
                        child: openCartButton
                            ? Center(
                                child: Text(
                                  'Add To Cart',
                                  style: AppFonts.poppingRegular.copyWith(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            widget.productName,
            style: AppFonts.poppingMedium.copyWith(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                '\$${widget.productPrice.toString()}',
                style: AppFonts.poppingMedium.copyWith(
                  fontSize: 16.0,
                  color: AppColors.redColor,
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              widget.productOriginPrice != null
                  ? Text(
                      '\$${widget.productOriginPrice.toString()}',
                      style: AppFonts.poppingMedium.copyWith(
                          fontSize: 16.0,
                          color: AppColors.charcoal,
                          decoration: TextDecoration.lineThrough),
                    )
                  : SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}
