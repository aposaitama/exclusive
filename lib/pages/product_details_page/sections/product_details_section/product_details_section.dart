import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/widgets/delivery_information_widget.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsSection extends StatefulWidget {
  final double productPrice;
  final List<ProductColorModel> productColors;
  final List<String>? productSizeList;

  const ProductDetailsSection(
      {super.key,
      required this.productColors,
      this.productSizeList,
      required this.productPrice});

  @override
  State<ProductDetailsSection> createState() => _ProductDetailsSectionState();
}

class _ProductDetailsSectionState extends State<ProductDetailsSection> {
  late ProductColorModel selectedColor;
  late String? selectedSize;
  int quantity = 1;

  @override
  void initState() {
    selectedColor = widget.productColors.first;
    if (widget.productSizeList != null && widget.productSizeList!.isNotEmpty) {
      selectedSize = widget.productSizeList!.first;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80.0,
        bottom: 140.0,
      ),
      child: SizedBox(
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
                      final hasImage =
                          index < selectedColor.galleryProductImages.length;
                      final image = hasImage
                          ? selectedColor.galleryProductImages[index]
                          : null;

                      return Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(bottom: index < 3 ? 16.0 : 0.0),
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
                        selectedColor.mainProductImage.url.toImageUrl(),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Havic HV G-92 Gamepad',
                                      style: AppFonts.poppingSemiBold.copyWith(
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                '\$${widget.productPrice.toString()}',
                                style: AppFonts.poppingRegular.copyWith(
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
                                      padding: const EdgeInsets.only(
                                        right: 27.0,
                                      ),
                                      child: Text(
                                        'PlayStation 5 Controller Skin High quality vinyl with air channel adhesive for easy bubble free install & mess free removal Pressure sensitive.',
                                        style: AppFonts.poppingRegular.copyWith(
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
                              Row(
                                children: [
                                  Text(
                                    'Colours:',
                                    style: AppFonts.poppingRegular.copyWith(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.0,
                                  ),
                                  ...widget.productColors.map((color) {
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
                                        width: 20.0,
                                        height: 20.0,
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
                                                    color.colorCode,
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
                                                        color.colorCode,
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
                              if (widget.productSizeList != null)
                                Row(
                                  children: [
                                    Text(
                                      'Size:',
                                      style: AppFonts.poppingRegular.copyWith(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 24.0,
                                    ),
                                    ...widget.productSizeList!.map(
                                      (size) {
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                4.0,
                                              ),
                                              color: isSelected
                                                  ? AppColors.redColor
                                                  : Colors.transparent,
                                            ),
                                            child: Text(
                                              size,
                                              style: AppFonts.poppingRegular
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
                              Row(
                                children: [
                                  CustomRedButton(
                                    buttonTitle: 'Buy Now',
                                  ),
                                  SizedBox(
                                    width: 19.0,
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        4.0,
                                      ),
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.black.withValues(
                                          alpha: 0.5,
                                        ),
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      Assets.icons.heartSmall,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  )
                                ],
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
    );
  }
}
