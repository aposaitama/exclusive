import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/services/toast_service/toast_service.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CartTotal extends StatelessWidget {
  final double subTotalSumm;
  final double? shippingSumm;
  final double totalSumm;
  const CartTotal({
    super.key,
    required this.subTotalSumm,
    this.shippingSumm,
    required this.totalSumm,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 32.0,
      ),
      width: 470.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4.0,
        ),
        border: Border.all(width: 1.0, color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cart Total',
            style: AppFonts.poppingMedium.copyWith(
              fontSize: isMobileOrTablet ? 14.0 : 20.0,
            ),
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 24.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal:',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              ),
              Text(
                '\$${subTotalSumm.toString()}',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 16.0,
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.black.withValues(
              alpha: 0.4,
            ),
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping:',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              ),
              Text(
                shippingSumm != null ? '\$${shippingSumm.toString()}' : 'Free',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 16.0,
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.black.withValues(
              alpha: 0.4,
            ),
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total:',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              ),
              Text(
                '\$${totalSumm.toString()}',
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: isMobileOrTablet ? 12.0 : 16.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 16.0,
          ),
          Center(
            child: CustomRedButton(
              onButtonPressed: () {
                if (totalSumm != 0.0) {
                  CheckoutRoute().go(context);
                } else {
                  ToastService.showError(
                    'You have to add some products first.',
                  );
                }
              },
              buttonTitle: 'Procees to checkout',
            ),
          )
        ],
      ),
    );
  }
}
