import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRedButton extends StatelessWidget {
  final void Function()? onButtonPressed;
  final String buttonTitle;
  const CustomRedButton(
      {super.key, required this.buttonTitle, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          color: AppColors.redColor,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: AppFonts.poppingMedium.copyWith(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
