import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/breadcrumbs_item.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AccountPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AccountPage({super.key, required this.navigationShell});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    context.read<AccountBloc>().add(GetUserAddressEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1210,
                ),
                child: SizedBox(
                  height: isMobileOrTablet ? 690.0 : 630,
                  child: isMobileOrTablet
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(
                                    items.length,
                                    (index) {
                                      final selected =
                                          widget.navigationShell.currentIndex ==
                                              index;
                                      return TextButton(
                                        onPressed: () => widget.navigationShell
                                            .goBranch(index),
                                        child: Text(
                                          items[index],
                                          style:
                                              AppFonts.poppingRegular.copyWith(
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
                              ],
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            widget.navigationShell,
                          ],
                        )
                      : Row(
                          children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                      items.length,
                                      (index) {
                                        final selected = widget
                                                .navigationShell.currentIndex ==
                                            index;
                                        return TextButton(
                                          onPressed: () => widget
                                              .navigationShell
                                              .goBranch(index),
                                          child: Text(
                                            items[index],
                                            style: AppFonts.poppingRegular
                                                .copyWith(
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
                            Expanded(
                              child: widget.navigationShell,
                            ),
                          ],
                        ),
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
