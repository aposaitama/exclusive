import 'dart:ui';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/home_page/widgets/account_popup_item_tile.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:flutter/material.dart';

class AccountPopup {
  static final _sharedPreferencesService = locator<SharedPreferencesService>();
  static void showProfilePopup(BuildContext context, LayerLink link) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => entry.remove(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
              ),
            ),
            CompositedTransformFollower(
              link: link,
              showWhenUnlinked: false,
              offset: const Offset(
                -194,
                35,
              ),
              child: Material(
                borderRadius: BorderRadius.circular(
                  4.0,
                ),
                color: Colors.black.withValues(
                  alpha: 0.5,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                  child: SizedBox(
                    width: 229.0,
                    height: 176.0,
                    child: Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 40,
                            sigmaY: 40,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(
                                alpha: 0.04,
                              ),
                              borderRadius: BorderRadius.circular(
                                4.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 229,
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            left: 20.0,
                            right: 12.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AccountPopupItemTile(
                                iconPath: Assets.icons.profile,
                                accountPopupItemName: 'Manage My Account',
                              ),
                              AccountPopupItemTile(
                                iconPath: Assets.icons.iconMallbag,
                                accountPopupItemName: 'My Order',
                              ),
                              AccountPopupItemTile(
                                iconPath: Assets.icons.iconReviews,
                                accountPopupItemName: 'My Reviews',
                              ),
                              AccountPopupItemTile(
                                onItemPressed: () {
                                  _sharedPreferencesService.removeToken();
                                },
                                iconPath: Assets.icons.iconLogout,
                                accountPopupItemName: 'Logout',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    overlay.insert(entry);
  }
}
