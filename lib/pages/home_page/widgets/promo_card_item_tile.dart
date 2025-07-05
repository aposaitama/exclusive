import 'package:exclusive_web/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PromoCardItemTile extends StatelessWidget {
  final String promoCardImage;
  final String promoCardTitle;
  final String promoCardSubtitle;
  final void Function()? onTap;
  const PromoCardItemTile({
    super.key,
    required this.promoCardImage,
    required this.promoCardTitle,
    required this.promoCardSubtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.network(
              promoCardImage.toImageUrl(),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(
                isMobileOrTablet ? 8.0 : 16,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      promoCardTitle,
                      style: TextStyle(
                        fontSize: isMobileOrTablet ? 14.0 : 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      promoCardSubtitle,
                      style: TextStyle(
                        fontSize: isMobileOrTablet ? 12.0 : 14,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
