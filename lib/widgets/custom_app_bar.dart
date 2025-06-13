import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/widgets/app_bar_text_field.dart';
import 'package:exclusive_web/widgets/nav_title_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color(
              0xFFB3B3B3,
            ).withValues(
              alpha: 0.3,
            ),
          ),
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1170.0,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.exclusiveLogo,
                    ),
                    Row(
                      children: [
                        NavTitleItemTile(
                          index: 0,
                          navTitle: 'Home',
                        ),
                        SizedBox(
                          width: 48.0,
                        ),
                        NavTitleItemTile(
                          index: 1,
                          navTitle: 'Contact',
                        ),
                        SizedBox(
                          width: 48.0,
                        ),
                        NavTitleItemTile(
                          index: 2,
                          navTitle: 'About',
                        ),
                        SizedBox(
                          width: 48.0,
                        ),
                        NavTitleItemTile(
                          index: 3,
                          navTitle: 'Sign Up',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 245.0,
                          child: AppBarTextField(
                            hintText: 'What are you looking for?',
                            controller: searchController,
                          ),
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        SvgPicture.asset(
                          Assets.icons.widhlist,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        GestureDetector(
                          onTap: () => context.go(
                            '/home/cart',
                          ),
                          child: SvgPicture.asset(
                            Assets.icons.cart,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        GestureDetector(
                          onTap: () => context.go(
                            '/home/account',
                          ),
                          child: SvgPicture.asset(
                            Assets.icons.profile,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
