import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryInformationWidget extends StatelessWidget {
  const DeliveryInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.iconDelivery,
                  colorFilter: ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free Delivery',
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Enter your postal code for Delivery Availability',
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 12.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              color: Colors.black.withValues(
                alpha: 0.5,
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.iconReturn,
                  colorFilter: ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Return Delivery',
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Free 30 Days Delivery Returns. ',
                              style: AppFonts.poppingMedium.copyWith(
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: 'Details',
                              style: AppFonts.poppingMedium.copyWith(
                                fontSize: 12.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
