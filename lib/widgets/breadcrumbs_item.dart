import 'package:exclusive_web/repositories/product_repository/product_repository.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AutoBreadcrumbs extends StatelessWidget {
  const AutoBreadcrumbs({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    final String fullPath = GoRouter.of(context).state.uri.path;

    final segments = fullPath.split('/').where((s) => s.isNotEmpty).toList();

    List<Widget> breadcrumbs = [];
    String accumulatedPath = '';

    for (int i = 0; i < segments.length; i++) {
      accumulatedPath += '/${segments[i]}';
      final currentPath = accumulatedPath;

      final isLast = i == segments.length - 1;
      final segment = segments[i];
      final isProduct = segment.toLowerCase() == 'product';
      final isProductId = segment.length > 15;

      Widget textWidget;

      if (isProductId) {
        textWidget = FutureBuilder<String>(
          future: ProductRepository().fetchProductNameById(segment),
          builder: (context, snapshot) {
            final name = snapshot.data ?? segment;
            return Text(
              name,
              style: AppFonts.poppingRegular.copyWith(
                color: Colors.black,
                fontSize: isMobileOrTablet ? 10.0 : 14.0,
              ),
            );
          },
        );
      } else {
        textWidget = Text(
          capitalize(segment),
          style: AppFonts.poppingRegular.copyWith(
            color: isLast ? Colors.black : Colors.black.withAlpha(128),
            fontSize: isMobileOrTablet ? 10.0 : 14.0,
          ),
        );
      }
      breadcrumbs.add(
        GestureDetector(
          onTap: (isLast || isProduct)
              ? null
              : () {
                  context.go(currentPath);
                },
          child: textWidget,
        ),
      );

      if (!isLast) {
        breadcrumbs.add(
          Text(
            '  /  ',
            style: AppFonts.poppingRegular.copyWith(
              color: isLast
                  ? Colors.black
                  : Colors.black.withValues(
                      alpha: 0.5,
                    ),
              fontSize: isMobileOrTablet ? 10.0 : 14.0,
            ),
          ),
        );
      }
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: isMobileOrTablet ? 20.0 : 80.0,
          horizontal: isMobileOrTablet ? 20.0 : 0.0,
        ),
        child: Row(
          children: breadcrumbs,
        ),
      ),
    );
  }

  String capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';
}
