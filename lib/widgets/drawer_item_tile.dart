import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

int? getPageIntexByTitle(String navItemTitle) {
  switch (navItemTitle) {
    case 'Home':
      return 0;
    case 'Contact':
      return 1;
    case 'Our Story':
      return 2;
    case 'Sign Up':
      return 3;

    default:
      return null;
  }
}

class DrawerItemTile extends StatelessWidget {
  final String navItemTitle;
  final void Function()? onTap;
  const DrawerItemTile({
    super.key,
    required this.navItemTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final navService = locator<NavigationService>();
    final isSelected =
        navService.shell.currentIndex == getPageIntexByTitle(navItemTitle);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          navItemTitle,
          style: AppFonts.poppingMedium.copyWith(
            fontSize: 15.0,
            color: Colors.white,
            decorationColor: Colors.white,
            decoration:
                isSelected ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
