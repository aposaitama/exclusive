import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountPopupItemTile extends StatelessWidget {
  final String iconPath;
  final String accountPopupItemName;
  final void Function()? onItemPressed;
  const AccountPopupItemTile({
    super.key,
    required this.iconPath,
    required this.accountPopupItemName,
    this.onItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 13.0,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              accountPopupItemName,
              style: AppFonts.poppingRegular.copyWith(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
