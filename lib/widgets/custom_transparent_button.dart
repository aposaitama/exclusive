import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTransparentButton extends StatelessWidget {
  final void Function()? onButtonPressed;
  final String buttonTitle;
  const CustomTransparentButton(
      {super.key, required this.buttonTitle, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onButtonPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobileOrTablet ? 12.0 : 48.0,
            vertical: isMobileOrTablet ? 8.0 : 16.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              4.0,
            ),
            border: Border.all(
              width: 1.0,
              color: Colors.black.withValues(
                alpha: 0.5,
              ),
            ),
            color: Colors.white,
          ),
          child: Text(
            buttonTitle,
            style: AppFonts.poppingMedium.copyWith(
              color: Colors.black,
              fontSize: isMobileOrTablet ? 12.0 : 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
