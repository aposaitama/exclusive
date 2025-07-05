import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_state.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:exclusive_web/pages/favourite_page/bloc/favourite_bloc/favourite_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/bloc/search_bloc/search_bloc.dart';
import 'package:exclusive_web/pages/home_page/bloc/search_bloc/search_bloc_event.dart';
import 'package:exclusive_web/pages/home_page/bloc/search_bloc/search_bloc_state.dart';
import 'package:exclusive_web/pages/home_page/widgets/account_popup.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:exclusive_web/widgets/app_bar_text_field.dart';
import 'package:exclusive_web/widgets/nav_title_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _avatarKey = GlobalKey();
  OverlayEntry? _searchOverlayEntry;
  final LayerLink _searchFieldLink = LayerLink();

  @override
  void initState() {
    super.initState();
  }

  final TextEditingController searchController = TextEditingController();

  void _showSearchPopup() {
    final query = searchController.text.trim();
    if (query.isEmpty) return;

    context.read<SearchBloc>().add(
          SearchProductsEvent(query),
        );
    _removeSearchPopup();

    final overlay = Overlay.of(context);

    _searchOverlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                _removeSearchPopup();
              },
              behavior: HitTestBehavior.translucent,
              child: Container(),
            ),
          ),
          Positioned(
            width: 245,
            child: CompositedTransformFollower(
              link: _searchFieldLink,
              showWhenUnlinked: false,
              offset: const Offset(0, 45),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  color: Colors.white,
                  child: BlocBuilder<SearchBloc, SearchBlocState>(
                    builder: (context, state) {
                      if (state.status == SearchBlocStatus.loading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (state.productList.isEmpty) {
                        return Text(
                          'No results',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 14.0,
                          ),
                        );
                      }
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: state.productList.map((product) {
                          return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _removeSearchPopup();
                                ProductDetailsRoute(id: product.documentId)
                                    .go(context);
                              },
                              child: ListTile(
                                title: Text(
                                  product.productName,
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 12.0,
                                  ),
                                ),
                                leading: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                    color: Colors.grey[300],
                                  ),
                                  width: 40,
                                  height: 40,
                                  child: Image.network(
                                    product.product_colors.first
                                        .mainProductImage.url
                                        .toImageUrl(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    overlay.insert(_searchOverlayEntry!);
  }

  void _removeSearchPopup() {
    _searchOverlayEntry?.remove();
    _searchOverlayEntry = null;
  }

  final scaffoldKey = locator<GlobalKey<ScaffoldState>>();

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: isMobileOrTablet ? 75.0 : 94.0,
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
                padding: EdgeInsets.only(
                  bottom: isMobileOrTablet ? 4.0 : 16.0,
                  top: 5.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isMobileOrTablet
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () =>
                                        scaffoldKey.currentState?.openDrawer(),
                                    child: SvgPicture.asset(
                                      Assets.icons.burgerIcon,
                                      colorFilter: ColorFilter.mode(
                                        Colors.black,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'E',
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      fontSize: 50.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                              Flexible(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 300.0),
                                  child: CompositedTransformTarget(
                                    link: _searchFieldLink,
                                    child: AppBarTextField(
                                      onChanged: (value) {
                                        final query = value.trim();
                                        if (query.isNotEmpty) {
                                          context
                                              .read<SearchBloc>()
                                              .add(SearchProductsEvent(query));
                                          if (_searchOverlayEntry == null) {
                                            _showSearchPopup();
                                          }
                                        } else {
                                          _removeSearchPopup();

                                          context.read<SearchBloc>().add(
                                              const SearchProductsEvent(''));
                                        }
                                      },
                                      onSearch: _showSearchPopup,
                                      hintText: 'What are you looking for?',
                                      controller: searchController,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  BlocBuilder<FavouriteBloc,
                                      FavouriteBlocState>(
                                    builder: (context, state) {
                                      int productInWishlist =
                                          state.productsList.length;
                                      return GestureDetector(
                                        onTap: () =>
                                            FavouriteRoute().go(context),
                                        child: SizedBox(
                                          width: 25.0,
                                          height: 25.0,
                                          child: Stack(
                                            children: [
                                              SvgPicture.asset(
                                                Assets.icons.widhlist,
                                              ),
                                              if (productInWishlist > 0)
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '$productInWishlist',
                                                        style: AppFonts
                                                            .poppingRegular
                                                            .copyWith(
                                                          fontSize: 8.0,
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
                                    width: 10.0,
                                  ),
                                  BlocBuilder<CartBloc, CartBlocState>(
                                    builder: (context, state) {
                                      int productInCartlist =
                                          state.productsList.length;
                                      return GestureDetector(
                                        onTap: () => CartRoute().go(context),
                                        child: SizedBox(
                                          width: 25.0,
                                          height: 25.0,
                                          child: Stack(
                                            children: [
                                              SvgPicture.asset(
                                                Assets.icons.cart,
                                              ),
                                              if (productInCartlist > 0)
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '$productInCartlist',
                                                        style: AppFonts
                                                            .poppingRegular
                                                            .copyWith(
                                                          fontSize: 9.0,
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
                                  state.isAuthenticated
                                      ? Row(
                                          children: [
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            CompositedTransformTarget(
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
                                            ),
                                          ],
                                        )
                                      : SizedBox.shrink(),
                                ],
                              ),
                            ],
                          )
                        : Row(
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
                                  CompositedTransformTarget(
                                    link: _searchFieldLink,
                                    child: SizedBox(
                                      width: 245.0,
                                      child: AppBarTextField(
                                        onChanged: (value) {
                                          final query = value.trim();
                                          if (query.isNotEmpty) {
                                            context.read<SearchBloc>().add(
                                                SearchProductsEvent(query));
                                            if (_searchOverlayEntry == null) {
                                              _showSearchPopup();
                                            }
                                          } else {
                                            _removeSearchPopup();

                                            context.read<SearchBloc>().add(
                                                const SearchProductsEvent(''));
                                          }
                                        },
                                        onSearch: _showSearchPopup,
                                        hintText: 'What are you looking for?',
                                        controller: searchController,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24.0,
                                  ),
                                  BlocBuilder<FavouriteBloc,
                                      FavouriteBlocState>(
                                    builder: (context, state) {
                                      int productInWishlist =
                                          state.productsList.length;
                                      return GestureDetector(
                                        onTap: () =>
                                            FavouriteRoute().go(context),
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
                                                        style: AppFonts
                                                            .poppingRegular
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
                                        onTap: () => CartRoute().go(context),
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
                                                        style: AppFonts
                                                            .poppingRegular
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
