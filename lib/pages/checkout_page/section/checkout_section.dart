import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/pages/cart_page/widgets/cart_test_item.dart';
import 'package:exclusive_web/pages/checkout_page/widget/checkout_item_tile.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:exclusive_web/widgets/custom_text_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum PaymentMethod { creditCard, cash }

class CheckoutSection extends StatefulWidget {
  final TextEditingController firstNameController;
  final TextEditingController companyNameController;
  final TextEditingController streetAddressController;
  final TextEditingController apartmentController;
  final TextEditingController cityController;
  final TextEditingController phoneNumberController;
  final TextEditingController emailAddressController;
  final TextEditingController cardNumController;
  final TextEditingController cardExpDateController;
  final TextEditingController cardCvvController;
  final List<CartProductModel> cartProducts;

  const CheckoutSection({
    super.key,
    required this.firstNameController,
    required this.companyNameController,
    required this.streetAddressController,
    required this.apartmentController,
    required this.cityController,
    required this.phoneNumberController,
    required this.emailAddressController,
    required this.cartProducts,
    required this.cardNumController,
    required this.cardExpDateController,
    required this.cardCvvController,
  });

  @override
  State<CheckoutSection> createState() => _CheckoutSectionState();
}

class _CheckoutSectionState extends State<CheckoutSection> {
  PaymentMethod _selectedMethod = PaymentMethod.creditCard;
  bool isCheckedToSaveAddress = false;

  double get subTotalSum {
    return widget.cartProducts.fold(0.0, (sum, product) {
      return sum + (product.productPrice * product.quantity);
    });
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 115.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Billing Details',
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 36.0,
                        ),
                      ),
                      SizedBox(
                        height: 48.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'First Name',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Company Name',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Street Address',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Apartment, floor, etc. (optional)',
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Town/City',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Phone Number',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomTextFieldWithTitle(
                        textFieldEditingController: widget.firstNameController,
                        fieldTitle: 'Email Address',
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedToSaveAddress,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  isCheckedToSaveAddress = value ?? false;
                                },
                              );
                            },
                            fillColor: WidgetStateProperty.resolveWith<Color>(
                                (states) {
                              if (states.contains(WidgetState.selected)) {
                                return AppColors.redColor;
                              }
                              return Colors.white;
                            }),
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              'Save this information for faster check-out next time',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 120.0,
                    left: 60.0,
                    right: 105.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.cartProducts.map(
                        (product) => CheckoutItemTile(
                          product: product,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal:',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '\$${subTotalSum.toString()}',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.black.withValues(
                          alpha: 0.4,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping:',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Free',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Colors.black.withValues(
                          alpha: 0.4,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '\$${subTotalSum.toString()}',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Radio<PaymentMethod>(
                            activeColor: Colors.black,
                            value: PaymentMethod.creditCard,
                            groupValue: _selectedMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Bank',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            Assets.images.cardLogos.path,
                          )
                        ],
                      ),
                      if (_selectedMethod == PaymentMethod.creditCard)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16.0,
                              ),
                              CustomTextField(
                                hintText: 'cardNum',
                                controller: widget.cardNumController,
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      hintText: 'Exp. date',
                                      controller: widget.cardExpDateController,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      hintText: 'Cvv',
                                      controller: widget.cardCvvController,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                            ],
                          ),
                        ),
                      Row(
                        children: [
                          Radio<PaymentMethod>(
                            activeColor: Colors.black,
                            value: PaymentMethod.cash,
                            groupValue: _selectedMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedMethod = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            'Cash on delivery',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      CustomRedButton(buttonTitle: 'Place Order'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 140.0,
          ),
        ],
      ),
    );
  }
}
