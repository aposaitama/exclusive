import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_event_bloc.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProductItemTile extends StatefulWidget {
  final bool wishlistMode;
  final ProductLightModel product;
  final void Function()? onProductImageTap;

  const ProductItemTile({
    super.key,
    this.onProductImageTap,
    required this.product,
    this.wishlistMode = false,
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
            onEnter: (event) => setState(
              () {
                openCartButton = true;
              },
            ),
            onExit: (event) => setState(
              () {
                openCartButton = false;
              },
            ),
            child: GestureDetector(
              onTap: widget.onProductImageTap,
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
                      child: SizedBox(
                        width: 190.0,
                        height: 180.0,
                        child: Image.network(
                          fit: BoxFit.scaleDown,
                          widget
                              .product.product_colors.first.mainProductImage.url
                              .toImageUrl(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                        right: 12.0,
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: BlocBuilder<FavouriteBloc, FavouriteBlocState>(
                          builder: (context, state) {
                            final isFavourite = state.productsList.any(
                              (product) =>
                                  product.id.toString() ==
                                  widget.product.id.toString(),
                            );
                            return GestureDetector(
                              onTap: () => !isFavourite
                                  ? context.read<FavouriteBloc>().add(
                                        AddProductToWishlistEvent(
                                          widget.product.id.toString(),
                                        ),
                                      )
                                  : context.read<FavouriteBloc>().add(
                                        RemoveProductFromWishlistEvent(
                                          widget.product.id.toString(),
                                        ),
                                      ),
                              child: Container(
                                width: 34.0,
                                height: 34.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    isFavourite
                                        ? Assets.icons.iconDelete
                                        : Assets.icons.heartSmall,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    widget.wishlistMode
                        ? SizedBox.shrink()
                        : Padding(
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
                    if (widget.product.salePercent != null)
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
                              '-${widget.product.salePercent.toString()}%',
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
                        child: GestureDetector(
                          onTap: () => context.read<CartBloc>().add(
                                AddProductToCartlistEvent(
                                  widget.product.id.toString(),
                                  widget.product.product_colors.first.id
                                      .toString(),
                                  1,
                                ),
                              ),
                          child: AnimatedContainer(
                            height: widget.wishlistMode || openCartButton
                                ? 40.0
                                : 0.0,
                            duration: Duration(
                              milliseconds: 300,
                            ),
                            curve: Curves.easeOut,
                            color: Colors.black,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                'Add To Cart',
                                style: AppFonts.poppingRegular.copyWith(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            widget.product.productName,
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
                '\$${widget.product.productPrice.toString()}',
                style: AppFonts.poppingMedium.copyWith(
                  fontSize: 16.0,
                  color: AppColors.redColor,
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              widget.product.productOriginPrice != null
                  ? Text(
                      '\$${widget.product.productOriginPrice.toString()}',
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
