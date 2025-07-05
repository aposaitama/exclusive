import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/widgets/benefits_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 945.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: isMobileOrTablet ? 70.0 : 140.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BenefitsItemTile(
                    iconPath: Assets.icons.iconDelivery,
                    benefitsTitle: 'FREE AND FAST DELIVERY',
                    benefetsDescription:
                        'Free delivery for all orders over \$140',
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: BenefitsItemTile(
                    iconPath: Assets.icons.iconDelivery,
                    benefitsTitle: '24/7 CUSTOMER SERVICE',
                    benefetsDescription: 'Friendly 24/7 customer support',
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: BenefitsItemTile(
                    iconPath: Assets.icons.iconSecure,
                    benefitsTitle: 'MONEY BACK GUARANTEE',
                    benefetsDescription: 'We reurn money within 30 days',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: isMobileOrTablet ? 70.0 : 140.0,
            ),
          ],
        ),
      ),
    );
  }
}
