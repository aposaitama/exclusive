import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FooterSectionItem extends StatelessWidget {
  final String title;
  final Map<String, String> items;

  const FooterSectionItem({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.poppingMedium.copyWith(
            fontSize: isMobileOrTablet ? 14.0 : 20.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        ...items.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => context.go(entry.value),
                child: Text(
                  entry.key,
                  style: AppFonts.poppingRegular.copyWith(
                    fontSize: isMobileOrTablet ? 12.0 : 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
