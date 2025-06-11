import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/service/navigation_service/navigation_service.dart';
import 'package:flutter/widgets.dart';

class NavTitleItemTile extends StatelessWidget {
  final int index;
  final void Function()? onNavItemPressed;
  final String navTitle;
  const NavTitleItemTile({
    super.key,
    required this.index,
    required this.navTitle,
    this.onNavItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    final navService = locator<NavigationService>();
    bool isSelected = index == navService.shell.currentIndex;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          navService.shell.goBranch(
            index,
            initialLocation: true,
          );
        },
        child: Row(
          children: [
            Text(
              navTitle,
              style: AppFonts.poppingRegular.copyWith(
                height: 1.2,
                decoration:
                    isSelected ? TextDecoration.underline : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
