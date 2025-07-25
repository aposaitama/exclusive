import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CartProductItemTile extends StatefulWidget {
  final CartProductModel product;
  final void Function(String productId)? onIncreaseArrowPressed;
  final void Function(String productId)? onDecreaseArrowPressed;
  final void Function(String productId)? onDeletePressed;
  const CartProductItemTile({
    super.key,
    required this.product,
    this.onIncreaseArrowPressed,
    this.onDecreaseArrowPressed,
    this.onDeletePressed,
  });

  @override
  State<CartProductItemTile> createState() => _CartProductItemTileState();
}

class _CartProductItemTileState extends State<CartProductItemTile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Padding(
      padding: EdgeInsets.only(
        top: isMobileOrTablet ? 10.0 : 40.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: 0.05,
              ),
              offset: Offset(
                0,
                1,
              ),
              blurRadius: 13.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobileOrTablet ? 10.0 : 40.0,
            vertical: isMobileOrTablet ? 10.0 : 34.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MouseRegion(
                      onEnter: (_) => setState(
                        () => _isHovered = true,
                      ),
                      onExit: (_) => setState(
                        () => _isHovered = false,
                      ),
                      child: SizedBox(
                        height: isMobileOrTablet ? 40.0 : 54.0,
                        width: isMobileOrTablet ? 40.0 : 54.0,
                        child: Stack(
                          children: [
                            Image.network(
                              widget.product.mainProductImage.url.toImageUrl(),
                              fit: BoxFit.scaleDown,
                            ),
                            if (_isHovered)
                              Align(
                                alignment: Alignment.topLeft,
                                child: GestureDetector(
                                  onTap: () => widget.onDeletePressed?.call(
                                    widget.product.id.toString(),
                                  ),
                                  child: Container(
                                    width: 18.0,
                                    height: 18.0,
                                    decoration: BoxDecoration(
                                      color: AppColors.redColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        Assets.icons.closeIcon,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    isMobileOrTablet
                        ? widget.product.productSize?.isNotEmpty ?? false
                            ? Text(
                                'Size: ${widget.product.productSize!}',
                                style: AppFonts.poppingRegular.copyWith(
                                  fontSize: 12.0,
                                ),
                              )
                            : SizedBox.shrink()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product.productName,
                                style: AppFonts.poppingRegular.copyWith(
                                  fontSize: isMobileOrTablet ? 10.0 : 16.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              if (widget.product.productSize?.isNotEmpty ??
                                  false)
                                Text(
                                  'Size: ${widget.product.productSize!}',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 12.0,
                                  ),
                                ),
                            ],
                          ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  '\$${widget.product.productPrice.toStringAsFixed(2)}',
                  style: AppFonts.poppingRegular.copyWith(
                    fontSize: isMobileOrTablet ? 12.0 : 16.0,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: isMobileOrTablet ? 50.0 : 72.0,
                      height: isMobileOrTablet ? 34.0 : 44.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.black.withValues(
                            alpha: 0.4,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.product.quantity < 10
                                ? '0${widget.product.quantity.toString()}'
                                : widget.product.quantity.toString(),
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: isMobileOrTablet ? 12.0 : 16.0,
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    widget.onIncreaseArrowPressed?.call(
                                  widget.product.id.toString(),
                                ),
                                child: Transform.rotate(
                                  angle: 3.14 + (3.14 / 2),
                                  child: SvgPicture.asset(
                                    Assets.icons.smallArrow,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    widget.onDecreaseArrowPressed?.call(
                                  widget.product.id.toString(),
                                ),
                                child: Transform.rotate(
                                  angle: 3.14 / 2,
                                  child: SvgPicture.asset(
                                    Assets.icons.smallArrow,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 75.0,
                child: Text(
                  '\$${(widget.product.productPrice * widget.product.quantity).toStringAsFixed(2)}',
                  style: AppFonts.poppingRegular.copyWith(
                    fontSize: isMobileOrTablet ? 12.0 : 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
