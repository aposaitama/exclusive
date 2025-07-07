import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_event_bloc.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProductItemTile extends StatefulWidget {
  final bool wishlistMode;
  final ProductLightModel product;
  final double? sizeHeight;
  final void Function()? onProductImageTap;

  const ProductItemTile({
    super.key,
    this.onProductImageTap,
    required this.product,
    this.wishlistMode = false,
    this.sizeHeight,
  });

  @override
  State<ProductItemTile> createState() => _ProductItemTileState();
}

class _ProductItemTileState extends State<ProductItemTile> {
  double calculateProductRating() {
    return widget.product.totalRating / widget.product.ratingCount;
  }

  bool openCartButton = false;
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    bool isMobile = responsive.isMobile;
    return SizedBox(
      width: isMobileOrTablet ? 150.0 : 270.0,
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
                height: widget.sizeHeight ?? (isMobileOrTablet ? 100.0 : 270.0),
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobileOrTablet ? 0.0 : 40.0,
                          vertical: isMobileOrTablet ? 0.0 : 35.0,
                        ),
                        child: SizedBox(
                          width: isMobileOrTablet
                              ? (widget.sizeHeight ?? 90.0)
                              : 190.0,
                          height: isMobileOrTablet
                              ? (widget.sizeHeight ?? 80.0)
                              : 180.0,
                          child: Image.network(
                            fit: BoxFit.scaleDown,
                            widget.product.product_colors.first.mainProductImage
                                .url
                                .toImageUrl(),
                          ),
                        ),
                      ),
                    ),
                    if (!isMobile)
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
                    if (!isMobileOrTablet)
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
                        padding: EdgeInsets.only(
                          top: isMobile ? 4.0 : 12.0,
                          left: isMobile ? 4.0 : 12.0,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 4.0 : 12.0,
                              vertical: 2.0,
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
                                fontSize: isMobile ? 9.0 : 12.0,
                                height: isMobile ? 1.0 : 1.5,
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
                                  null,
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
              fontSize: isMobileOrTablet ? 12.0 : 16.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          isMobileOrTablet
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        widget.product.productOriginPrice != null
                            ? Text(
                                '\$${widget.product.productOriginPrice.toString()}',
                                style: AppFonts.poppingMedium.copyWith(
                                    fontSize: isMobileOrTablet ? 11.0 : 16.0,
                                    color: AppColors.charcoal,
                                    decoration: TextDecoration.lineThrough),
                              )
                            : SizedBox.shrink(),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '\$${widget.product.productPrice.toString()}',
                          style: AppFonts.poppingMedium.copyWith(
                            fontSize: isMobileOrTablet ? 11.0 : 16.0,
                            color: AppColors.redColor,
                          ),
                        ),
                      ],
                    ),
                    if (isMobileOrTablet)
                      GestureDetector(
                        onTap: () => context.read<CartBloc>().add(
                              AddProductToCartlistEvent(
                                widget.product.id.toString(),
                                widget.product.product_colors.first.id
                                    .toString(),
                                1,
                                null,
                              ),
                            ),
                        child: Container(
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                size: 18.0,
                                Icons.shopping_cart,
                                color: const Color.fromARGB(255, 6, 86, 38),
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                )
              : Row(
                  children: [
                    Text(
                      '\$${widget.product.productPrice.toString()}',
                      style: AppFonts.poppingMedium.copyWith(
                        fontSize: isMobileOrTablet ? 11.0 : 16.0,
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
                                fontSize: isMobileOrTablet ? 11.0 : 16.0,
                                color: AppColors.charcoal,
                                decoration: TextDecoration.lineThrough),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              StarRating(
                isHoverEnabled: false,
                rating: calculateProductRating(),
                onRatingSelected: (newRating) {
                  // setState(
                  //   () {
                  //     _currentRating = newRating;
                  //   },
                  // );
                },
              ),
              if (!isMobile)
                Row(
                  children: [
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '(${widget.product.ratingCount})',
                      style: AppFonts.poppingRegular.copyWith(
                        fontSize: 14.0,
                        color: Colors.black.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
