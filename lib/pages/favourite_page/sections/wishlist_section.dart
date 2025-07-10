import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/services/toast_service/toast_service.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class WishlistSection extends StatefulWidget {
  final List<ProductLightModel> wishListProducts;
  const WishlistSection({super.key, required this.wishListProducts});

  @override
  State<WishlistSection> createState() => _WishlistSectionState();
}

class _WishlistSectionState extends State<WishlistSection> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Wishlist',
                      style: AppFonts.poppingRegular.copyWith(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    if (widget.wishListProducts.isNotEmpty)
                      TextSpan(
                        text: '(${widget.wishListProducts.length})',
                        style: AppFonts.poppingRegular.copyWith(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      )
                  ],
                ),
              ),
              CustomTransparentButton(
                onButtonPressed: () {
                  if (widget.wishListProducts.isEmpty) {
                    ToastService.showError(
                      'Add some product to wishlist first.',
                    );
                  }
                },
                buttonTitle: 'Move All To Bag',
              )
            ],
          ),
          SizedBox(
            height: widget.wishListProducts.length > 5 ? 20.0 : 0.0,
          ),
          widget.wishListProducts.length > 5
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                )
              : SizedBox.shrink(),
          SizedBox(
            height: 60.0,
          ),
          SizedBox(
            height: 370.0,
            width: (MediaQuery.of(context).size.width / 2) + 585.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: widget.wishListProducts.length,
              separatorBuilder: (_, __) => const SizedBox(
                width: 20.0,
              ),
              itemBuilder: (context, index) {
                final product = widget.wishListProducts[index];
                return ProductItemTile(
                  wishlistMode: true,
                  onProductImageTap: () {
                    ProductDetailsRoute(id: product.documentId).go(context);
                  },
                  product: product,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
