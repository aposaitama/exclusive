import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/services/navigation_service/navigation_service.dart';
import 'package:exclusive_web/widgets/drawer_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RootPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootPage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = locator<GlobalKey<ScaffoldState>>();
    final navService = locator<NavigationService>();

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: SvgPicture.asset(
                Assets.icons.exclusiveLogo,
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DrawerItemTile(
                    navItemTitle: 'Home',
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                      navService.goToBranch(
                        0,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  DrawerItemTile(
                    navItemTitle: 'Contact',
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                      navService.goToBranch(
                        1,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  DrawerItemTile(
                    navItemTitle: 'Our Story',
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                      navService.goToBranch(
                        2,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  DrawerItemTile(
                    navItemTitle: 'Sign Up',
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                      navService.goToBranch(
                        3,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          navigationShell,
        ],
      ),
    );
  }
}
