import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/widgets/account_popup.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:exclusive_web/widgets/app_bar_text_field.dart';
import 'package:exclusive_web/widgets/nav_title_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _avatarKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
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
                maxWidth: 1210.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0,
                  left: 20.0,
                  right: 20.0,
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
                            BlocBuilder<FavouriteBloc, FavouriteBlocState>(
                              builder: (context, state) {
                                int productInWishlist =
                                    state.productsList.length;
                                return GestureDetector(
                                  onTap: () => context.go(
                                    '/favourite',
                                  ),
                                  child: SizedBox(
                                    width: 32.0,
                                    height: 32.0,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          Assets.icons.widhlist,
                                        ),
                                        if (productInWishlist > 0)
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '$productInWishlist',
                                                  style: AppFonts.poppingRegular
                                                      .copyWith(
                                                    fontSize: 12.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            BlocBuilder<CartBloc, CartBlocState>(
                              builder: (context, state) {
                                int productInCartlist =
                                    state.productsList.length;
                                return GestureDetector(
                                  onTap: () => context.go(
                                    '/home/cart',
                                  ),
                                  child: SizedBox(
                                    width: 32.0,
                                    height: 32.0,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          Assets.icons.cart,
                                        ),
                                        if (productInCartlist > 0)
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              width: 16.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '$productInCartlist',
                                                  style: AppFonts.poppingRegular
                                                      .copyWith(
                                                    fontSize: 12.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            state.isAuthenticated
                                ? CompositedTransformTarget(
                                    link: _layerLink,
                                    child: GestureDetector(
                                      key: _avatarKey,
                                      onTap: () => {
                                        AccountPopup.showProfilePopup(
                                          context,
                                          _layerLink,
                                        )
                                      },
                                      child: SvgPicture.asset(
                                        Assets.icons.profile,
                                      ),
                                    ),
                                  )
                                : SizedBox.shrink(),
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
      },
    );
  }
}
