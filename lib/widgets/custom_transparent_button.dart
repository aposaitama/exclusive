import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTransparentButton extends StatelessWidget {
  final void Function()? onButtonPressed;
  final String buttonTitle;
  const CustomTransparentButton(
      {super.key, required this.buttonTitle, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onButtonPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 48.0,
            vertical: 16.0,
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
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
