import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/breadcrumbs_item.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AccountPage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final items = [
      'My Profile',
      'Address Book',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            AutoBreadcrumbs(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1170,
              ),
              child: SizedBox(
                height: 630,
                child: Row(
                  children: [
                    // Ліве меню
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manage My Account',
                          style: AppFonts.poppingMedium.copyWith(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 35.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              items.length,
                              (index) {
                                final selected =
                                    navigationShell.currentIndex == index;
                                return TextButton(
                                  onPressed: () =>
                                      navigationShell.goBranch(index),
                                  child: Text(
                                    items[index],
                                    style: AppFonts.poppingRegular.copyWith(
                                      fontSize: 16.0,
                                      color: selected
                                          ? AppColors.redColor
                                          : Colors.black.withValues(
                                              alpha: 0.5,
                                            ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    // Контент обраної секції
                    Expanded(child: navigationShell),
                  ],
                ),
              ),
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
