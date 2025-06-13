import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/widgets/benefits_item_tile.dart';
import 'package:flutter/material.dart';

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 945.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 140.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BenefitsItemTile(
                  iconPath: Assets.icons.iconDelivery,
                  benefitsTitle: 'FREE AND FAST DELIVERY',
                  benefetsDescription:
                      'Free delivery for all orders over \$140',
                ),
                BenefitsItemTile(
                  iconPath: Assets.icons.iconDelivery,
                  benefitsTitle: '24/7 CUSTOMER SERVICE',
                  benefetsDescription: 'Friendly 24/7 customer support',
                ),
                BenefitsItemTile(
                  iconPath: Assets.icons.iconSecure,
                  benefitsTitle: 'MONEY BACK GUARANTEE',
                  benefetsDescription: 'We reurn money within 30 days',
                ),
              ],
            ),
            SizedBox(
              height: 140.0,
            ),
          ],
        ),
      ),
    );
  }
}
