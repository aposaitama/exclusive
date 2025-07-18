import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_event_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_state.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/widgets/delivery_information_widget.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/widgets/review_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/custom_small_red_button.dart';
import 'package:exclusive_web/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProductDetailsSection extends StatefulWidget {
  final ProductDetailedModel productDetailedInfo;

  const ProductDetailsSection({super.key, required this.productDetailedInfo});

  @override
  State<ProductDetailsSection> createState() => _ProductDetailsSectionState();
}

class _ProductDetailsSectionState extends State<ProductDetailsSection> {
  late ProductColorModel selectedColor;
  String? selectedSize;

  int quantity = 1;

  double calculateProductRating() {
    if (widget.productDetailedInfo.reviews.isEmpty) return 0.0;

    final totalRating = widget.productDetailedInfo.reviews.fold<double>(
      0.0,
      (sum, review) => sum + review.rating,
    );

    return totalRating / widget.productDetailedInfo.reviews.length;
  }

  @override
  void initState() {
    if (widget.productDetailedInfo.product_colors.isNotEmpty) {
      selectedColor = widget.productDetailedInfo.product_colors.first;
    }
    if (widget.productDetailedInfo.productSizeList != null &&
        widget.productDetailedInfo.productSizeList!.isNotEmpty) {
      selectedSize = widget.productDetailedInfo.productSizeList!.first.size;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    final selectedSizeModel = widget.productDetailedInfo.productSizeList!
            .where((s) => s.size == selectedSize)
            .isNotEmpty
        ? widget.productDetailedInfo.productSizeList!
            .firstWhere((s) => s.size == selectedSize)
        : null;

    return Padding(
      padding: EdgeInsets.only(
        bottom: isMobileOrTablet ? 60.0 : 140.0,
        left: 20.0,
        right: 20.0,
      ),
      child: isMobileOrTablet
          ? Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 1170.0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 85.0,
                            child: Column(
                              children: List.generate(4, (index) {
                                final hasImage = index <
                                    selectedColor.galleryProductImages.length;
                                final image = hasImage
                                    ? selectedColor.galleryProductImages[index]
                                    : null;

                                return Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: index < 3 ? 16.0 : 0.0,
                                    ),
                                    child: Container(
                                      width: 170.0,
                                      color: AppColors.lightGray,
                                      child: image != null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Image.network(
                                                image.url.toImageUrl(),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Expanded(
                            child: Container(
                              color: AppColors.lightGray,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.network(
                                    selectedColor.mainProductImage.url
                                        .toImageUrl(),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  widget.productDetailedInfo.productName,
                                  style: AppFonts.poppingSemiBold.copyWith(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: [
                              StarRating(
                                productDocumentID:
                                    widget.productDetailedInfo.documentId,
                                previusCount:
                                    widget.productDetailedInfo.reviews.length,
                                previusRating:
                                    widget.productDetailedInfo.totalRating,
                                productID:
                                    widget.productDetailedInfo.id.toString(),
                                rating: calculateProductRating(),
                                onRatingSelected: (newRating) {
                                  // setState(
                                  //   () {
                                  //     _currentRating = newRating;
                                  //   },
                                  // );
                                },
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              BlocBuilder<ProductDetailsBloc,
                                  ProductDetailsBlocState>(
                                builder: (context, state) {
                                  return Text(
                                    '(${state.product?.reviews.length ?? 0} Reviews)',
                                    style: AppFonts.poppingRegular.copyWith(
                                      fontSize: 12.0,
                                      color: Colors.black.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Text(
                                '|',
                                style: AppFonts.poppingRegular.copyWith(
                                  fontSize: 20.0,
                                  color: Colors.black.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              ((selectedSizeModel?.isAvaliable ?? true) &&
                                      selectedColor.isAvaliable)
                                  ? Text(
                                      'In Stock',
                                      style: AppFonts.poppingRegular.copyWith(
                                        fontSize: 14.0,
                                        color: AppColors.greenColor,
                                      ),
                                    )
                                  : Text(
                                      'Out of Stock',
                                      style: AppFonts.poppingRegular.copyWith(
                                        fontSize: 14.0,
                                        color: AppColors.redColor,
                                      ),
                                    ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '\$${widget.productDetailedInfo.productPrice.toString()}',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 27.0,
                                  ),
                                  child: Text(
                                    widget
                                        .productDetailedInfo.productDescription,
                                    style: AppFonts.poppingRegular.copyWith(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(
                                alpha: 0.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          if (widget.productDetailedInfo.product_colors.first
                                  .colorCode !=
                              null)
                            Row(
                              children: [
                                Text(
                                  'Colours:',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ...widget.productDetailedInfo.product_colors
                                    .map((color) {
                                  final isSelected = color == selectedColor;

                                  return GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          selectedColor = color;
                                        },
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        right: 12.0,
                                      ),
                                      width: 15.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: isSelected
                                            ? Border.all(
                                                color: Colors.black,
                                                width: 2,
                                              )
                                            : null,
                                        color: !isSelected
                                            ? Color(
                                                int.parse(
                                                  color.colorCode!,
                                                ),
                                              )
                                            : Colors.transparent,
                                      ),
                                      child: Center(
                                        child: isSelected
                                            ? Container(
                                                width: 12.0,
                                                height: 12.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(
                                                    int.parse(
                                                      color.colorCode!,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : SizedBox.shrink(),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          SizedBox(
                            height: 15.0,
                          ),
                          if (widget.productDetailedInfo.productSizeList
                                  ?.isNotEmpty ??
                              false)
                            Row(
                              children: [
                                Text(
                                  'Size:',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ...widget.productDetailedInfo.productSizeList!
                                    .map(
                                  (productSizeModel) {
                                    final size = productSizeModel.size;
                                    final isSelected = selectedSize == size;

                                    return GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            selectedSize = size;
                                          },
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 12.0,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8.0,
                                          horizontal: 16.0,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: isSelected
                                                ? Colors.transparent
                                                : Colors.black.withValues(
                                                    alpha: 0.5,
                                                  ),
                                            width: 1.5,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            4.0,
                                          ),
                                          color: isSelected
                                              ? AppColors.redColor
                                              : Colors.transparent,
                                        ),
                                        child: Text(
                                          size,
                                          style:
                                              AppFonts.poppingRegular.copyWith(
                                            fontSize: 14.0,
                                            color: isSelected
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 10.0,
                          ),
                          ((selectedSizeModel?.isAvaliable ?? true) &&
                                  selectedColor.isAvaliable)
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 44.0,
                                      width: 159.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          4.0,
                                        ),
                                        border: Border.all(
                                          width: 1.5,
                                          color: Colors.black.withValues(
                                            alpha: 0.5,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40.0,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  width: 1.5,
                                                  color:
                                                      Colors.black.withValues(
                                                    alpha: 0.5,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                if (quantity > 1) {
                                                  setState(
                                                    () {
                                                      quantity--;
                                                    },
                                                  );
                                                }
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 6.0,
                                                ),
                                                child: SvgPicture.asset(
                                                  Assets.icons.countIconMinus,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            quantity.toString(),
                                            style:
                                                AppFonts.poppingMedium.copyWith(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          Container(
                                            width: 40.0,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: AppColors.redColor,
                                              border: Border(
                                                left: BorderSide(
                                                  width: 1.5,
                                                  color:
                                                      Colors.black.withValues(
                                                    alpha: 0.5,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(
                                                  () {
                                                    quantity++;
                                                  },
                                                );
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 6.0,
                                                ),
                                                child: SvgPicture.asset(
                                                  Assets.icons.countIconPlus,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomSmallRedButton(
                                          onButtonPressed: () => context
                                              .read<CartBloc>()
                                              .add(
                                                AddProductToCartlistEvent(
                                                  widget.productDetailedInfo.id
                                                      .toString(),
                                                  selectedColor.id.toString(),
                                                  quantity,
                                                  selectedSize,
                                                ),
                                              ),
                                          buttonTitle: 'Buy Now',
                                        ),
                                        BlocBuilder<FavouriteBloc,
                                            FavouriteBlocState>(
                                          builder: (context, state) {
                                            final isFavourite =
                                                state.productsList.any(
                                              (product) =>
                                                  product.id.toString() ==
                                                  widget.productDetailedInfo.id
                                                      .toString(),
                                            );
                                            return GestureDetector(
                                              onTap: () => !isFavourite
                                                  ? context
                                                      .read<FavouriteBloc>()
                                                      .add(
                                                        AddProductToWishlistEvent(
                                                          widget
                                                              .productDetailedInfo
                                                              .id
                                                              .toString(),
                                                        ),
                                                      )
                                                  : context
                                                      .read<FavouriteBloc>()
                                                      .add(
                                                        RemoveProductFromWishlistEvent(
                                                          widget
                                                              .productDetailedInfo
                                                              .id
                                                              .toString(),
                                                        ),
                                                      ),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4.0,
                                                  ),
                                                  border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                        Colors.black.withValues(
                                                      alpha: 0.5,
                                                    ),
                                                  ),
                                                ),
                                                child: SvgPicture.asset(
                                                  isFavourite
                                                      ? Assets.icons.iconDelete
                                                      : Assets.icons.heartSmall,
                                                  fit: BoxFit.scaleDown,
                                                ),
                                              ),
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(
                                    top: 2.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlocBuilder<FavouriteBloc,
                                          FavouriteBlocState>(
                                        builder: (context, state) {
                                          final isFavourite =
                                              state.productsList.any(
                                            (product) =>
                                                product.id.toString() ==
                                                widget.productDetailedInfo.id
                                                    .toString(),
                                          );
                                          return GestureDetector(
                                            onTap: () => !isFavourite
                                                ? context
                                                    .read<FavouriteBloc>()
                                                    .add(
                                                      AddProductToWishlistEvent(
                                                        widget
                                                            .productDetailedInfo
                                                            .id
                                                            .toString(),
                                                      ),
                                                    )
                                                : context
                                                    .read<FavouriteBloc>()
                                                    .add(
                                                      RemoveProductFromWishlistEvent(
                                                        widget
                                                            .productDetailedInfo
                                                            .id
                                                            .toString(),
                                                      ),
                                                    ),
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.0,
                                                ),
                                                border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      Colors.black.withValues(
                                                    alpha: 0.5,
                                                  ),
                                                ),
                                              ),
                                              child: SvgPicture.asset(
                                                isFavourite
                                                    ? Assets.icons.iconDelete
                                                    : Assets.icons.heartSmall,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                )
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      DeliveryInformationWidget(),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: AppColors.redColor,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Reviews',
                            style: AppFonts.poppingSemiBold.copyWith(
                              fontSize: 16.0,
                              color: AppColors.redColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'We found ${widget.productDetailedInfo.reviews.length} reviews',
                            style: AppFonts.poppingSemiBold.copyWith(
                              fontSize: isMobileOrTablet ? 20.0 : 36.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      ...widget.productDetailedInfo.reviews.map(
                        (review) => ReviewItemTile(
                          review: review,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 600.0,
                    child: Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 170.0,
                              child: Column(
                                children: List.generate(4, (index) {
                                  final hasImage = index <
                                      selectedColor.galleryProductImages.length;
                                  final image = hasImage
                                      ? selectedColor
                                          .galleryProductImages[index]
                                      : null;

                                  return Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: index < 3 ? 16.0 : 0.0),
                                      child: Container(
                                        width: 170.0,
                                        color: AppColors.lightGray,
                                        child: image != null
                                            ? Image.network(
                                                image.url.toImageUrl(),
                                                fit: BoxFit.scaleDown,
                                              )
                                            : const SizedBox.shrink(),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: Container(
                                color: AppColors.lightGray,
                                child: Center(
                                  child: Image.network(
                                    selectedColor.mainProductImage.url
                                        .toImageUrl(),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 70.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  widget.productDetailedInfo
                                                      .productName,
                                                  style: AppFonts
                                                      .poppingSemiBold
                                                      .copyWith(
                                                    fontSize: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              StarRating(
                                                productDocumentID: widget
                                                    .productDetailedInfo
                                                    .documentId,
                                                previusRating: widget
                                                    .productDetailedInfo
                                                    .totalRating,
                                                previusCount: widget
                                                    .productDetailedInfo
                                                    .ratingCount,
                                                productID: widget
                                                    .productDetailedInfo.id
                                                    .toString(),
                                                rating:
                                                    calculateProductRating(),
                                                onRatingSelected: (newRating) {
                                                  // setState(
                                                  //   () {
                                                  //     _currentRating = newRating;
                                                  //   },
                                                  // );
                                                },
                                              ),
                                              SizedBox(
                                                width: 8.0,
                                              ),
                                              BlocBuilder<ProductDetailsBloc,
                                                  ProductDetailsBlocState>(
                                                builder: (context, state) {
                                                  return Text(
                                                    '(${state.product?.reviews.length ?? 0} Reviews)',
                                                    style: AppFonts
                                                        .poppingRegular
                                                        .copyWith(
                                                      fontSize: 14.0,
                                                      color: Colors.black
                                                          .withValues(
                                                        alpha: 0.5,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                width: 16.0,
                                              ),
                                              Text(
                                                '|',
                                                style: AppFonts.poppingRegular
                                                    .copyWith(
                                                  fontSize: 20.0,
                                                  color:
                                                      Colors.black.withValues(
                                                    alpha: 0.5,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 16.0,
                                              ),
                                              ((selectedSizeModel
                                                              ?.isAvaliable ??
                                                          true) &&
                                                      selectedColor.isAvaliable)
                                                  ? Text(
                                                      'In Stock',
                                                      style: AppFonts
                                                          .poppingRegular
                                                          .copyWith(
                                                        fontSize: 14.0,
                                                        color: AppColors
                                                            .greenColor,
                                                      ),
                                                    )
                                                  : Text(
                                                      'Out of Stock',
                                                      style: AppFonts
                                                          .poppingRegular
                                                          .copyWith(
                                                        fontSize: 14.0,
                                                        color:
                                                            AppColors.redColor,
                                                      ),
                                                    ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.0,
                                          ),
                                          Text(
                                            '\$${widget.productDetailedInfo.productPrice.toString()}',
                                            style: AppFonts.poppingRegular
                                                .copyWith(
                                              fontSize: 24.0,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 24.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: 27.0,
                                                  ),
                                                  child: Text(
                                                    widget.productDetailedInfo
                                                        .productDescription,
                                                    style: AppFonts
                                                        .poppingRegular
                                                        .copyWith(
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 24.0,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black.withValues(
                                                alpha: 0.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 24.0,
                                          ),
                                          if (widget
                                                  .productDetailedInfo
                                                  .product_colors
                                                  .first
                                                  .colorCode !=
                                              null)
                                            Row(
                                              children: [
                                                Text(
                                                  'Colours:',
                                                  style: AppFonts.poppingRegular
                                                      .copyWith(
                                                    fontSize: 20.0,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 24.0,
                                                ),
                                                ...widget.productDetailedInfo
                                                    .product_colors
                                                    .map((color) {
                                                  final isSelected =
                                                      color == selectedColor;

                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(
                                                        () {
                                                          selectedColor = color;
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                        right: 12.0,
                                                      ),
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: isSelected
                                                            ? Border.all(
                                                                color: Colors
                                                                    .black,
                                                                width: 2,
                                                              )
                                                            : null,
                                                        color: !isSelected
                                                            ? Color(
                                                                int.parse(
                                                                  color
                                                                      .colorCode!,
                                                                ),
                                                              )
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                      child: Center(
                                                        child: isSelected
                                                            ? Container(
                                                                width: 12.0,
                                                                height: 12.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Color(
                                                                    int.parse(
                                                                      color
                                                                          .colorCode!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            : SizedBox.shrink(),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ],
                                            ),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          if (widget
                                                  .productDetailedInfo
                                                  .productSizeList
                                                  ?.isNotEmpty ??
                                              false)
                                            Row(
                                              children: [
                                                Text(
                                                  'Size:',
                                                  style: AppFonts.poppingRegular
                                                      .copyWith(
                                                    fontSize: 20.0,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 24.0,
                                                ),
                                                ...widget.productDetailedInfo
                                                    .productSizeList!
                                                    .map(
                                                  (productSizeModel) {
                                                    final size =
                                                        productSizeModel.size;
                                                    final isSelected =
                                                        selectedSize == size;

                                                    return GestureDetector(
                                                      onTap: () {
                                                        setState(
                                                          () {
                                                            selectedSize = size;
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                          right: 12.0,
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          vertical: 8.0,
                                                          horizontal: 16.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: isSelected
                                                                ? Colors
                                                                    .transparent
                                                                : Colors.black
                                                                    .withValues(
                                                                    alpha: 0.5,
                                                                  ),
                                                            width: 1.5,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            4.0,
                                                          ),
                                                          color: isSelected
                                                              ? AppColors
                                                                  .redColor
                                                              : Colors
                                                                  .transparent,
                                                        ),
                                                        child: Text(
                                                          size,
                                                          style: AppFonts
                                                              .poppingRegular
                                                              .copyWith(
                                                            fontSize: 14.0,
                                                            color: isSelected
                                                                ? Colors.white
                                                                : Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          SizedBox(
                                            height: 24.0,
                                          ),
                                          ((selectedSizeModel?.isAvaliable ??
                                                      true) &&
                                                  selectedColor.isAvaliable)
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 44.0,
                                                      width: 159.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          4.0,
                                                        ),
                                                        border: Border.all(
                                                          width: 1.5,
                                                          color: Colors.black
                                                              .withValues(
                                                            alpha: 0.5,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 40.0,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(
                                                                  width: 1.5,
                                                                  color: Colors
                                                                      .black
                                                                      .withValues(
                                                                    alpha: 0.5,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                if (quantity >
                                                                    1) {
                                                                  setState(
                                                                    () {
                                                                      quantity--;
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                  horizontal:
                                                                      6.0,
                                                                ),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  Assets.icons
                                                                      .countIconMinus,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            quantity.toString(),
                                                            style: AppFonts
                                                                .poppingMedium
                                                                .copyWith(
                                                              fontSize: 20.0,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 40.0,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: AppColors
                                                                  .redColor,
                                                              border: Border(
                                                                left:
                                                                    BorderSide(
                                                                  width: 1.5,
                                                                  color: Colors
                                                                      .black
                                                                      .withValues(
                                                                    alpha: 0.5,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                setState(
                                                                  () {
                                                                    quantity++;
                                                                  },
                                                                );
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                  horizontal:
                                                                      6.0,
                                                                ),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  Assets.icons
                                                                      .countIconPlus,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    CustomSmallRedButton(
                                                      onButtonPressed: () =>
                                                          context
                                                              .read<CartBloc>()
                                                              .add(
                                                                AddProductToCartlistEvent(
                                                                  widget
                                                                      .productDetailedInfo
                                                                      .id
                                                                      .toString(),
                                                                  selectedColor
                                                                      .id
                                                                      .toString(),
                                                                  quantity,
                                                                  selectedSize,
                                                                ),
                                                              ),
                                                      buttonTitle: 'Buy Now',
                                                    ),
                                                    BlocBuilder<FavouriteBloc,
                                                        FavouriteBlocState>(
                                                      builder:
                                                          (context, state) {
                                                        final isFavourite =
                                                            state.productsList
                                                                .any(
                                                          (product) =>
                                                              product.id
                                                                  .toString() ==
                                                              widget
                                                                  .productDetailedInfo
                                                                  .id
                                                                  .toString(),
                                                        );
                                                        return GestureDetector(
                                                          onTap: () =>
                                                              !isFavourite
                                                                  ? context
                                                                      .read<
                                                                          FavouriteBloc>()
                                                                      .add(
                                                                        AddProductToWishlistEvent(
                                                                          widget
                                                                              .productDetailedInfo
                                                                              .id
                                                                              .toString(),
                                                                        ),
                                                                      )
                                                                  : context
                                                                      .read<
                                                                          FavouriteBloc>()
                                                                      .add(
                                                                        RemoveProductFromWishlistEvent(
                                                                          widget
                                                                              .productDetailedInfo
                                                                              .id
                                                                              .toString(),
                                                                        ),
                                                                      ),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                4.0,
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                width: 1.0,
                                                                color: Colors
                                                                    .black
                                                                    .withValues(
                                                                  alpha: 0.5,
                                                                ),
                                                              ),
                                                            ),
                                                            child: SvgPicture
                                                                .asset(
                                                              isFavourite
                                                                  ? Assets.icons
                                                                      .iconDelete
                                                                  : Assets.icons
                                                                      .heartSmall,
                                                              fit: BoxFit
                                                                  .scaleDown,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    )
                                                  ],
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 2.0,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      BlocBuilder<FavouriteBloc,
                                                          FavouriteBlocState>(
                                                        builder:
                                                            (context, state) {
                                                          final isFavourite =
                                                              state.productsList
                                                                  .any(
                                                            (product) =>
                                                                product.id
                                                                    .toString() ==
                                                                widget
                                                                    .productDetailedInfo
                                                                    .id
                                                                    .toString(),
                                                          );
                                                          return GestureDetector(
                                                            onTap: () =>
                                                                !isFavourite
                                                                    ? context
                                                                        .read<
                                                                            FavouriteBloc>()
                                                                        .add(
                                                                          AddProductToWishlistEvent(
                                                                            widget.productDetailedInfo.id.toString(),
                                                                          ),
                                                                        )
                                                                    : context
                                                                        .read<
                                                                            FavouriteBloc>()
                                                                        .add(
                                                                          RemoveProductFromWishlistEvent(
                                                                            widget.productDetailedInfo.id.toString(),
                                                                          ),
                                                                        ),
                                                            child: Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  4.0,
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  width: 1.0,
                                                                  color: Colors
                                                                      .black
                                                                      .withValues(
                                                                    alpha: 0.5,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: SvgPicture
                                                                  .asset(
                                                                isFavourite
                                                                    ? Assets
                                                                        .icons
                                                                        .iconDelete
                                                                    : Assets
                                                                        .icons
                                                                        .heartSmall,
                                                                fit: BoxFit
                                                                    .scaleDown,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                )
                                        ],
                                      ),
                                      DeliveryInformationWidget(),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Reviews',
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: 16.0,
                          color: AppColors.redColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'We found ${widget.productDetailedInfo.reviews.length} reviews',
                        style: AppFonts.poppingSemiBold.copyWith(
                          fontSize: isMobileOrTablet ? 20.0 : 36.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ...widget.productDetailedInfo.reviews.map(
                    (review) => ReviewItemTile(
                      review: review,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
