import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onButtonPressed;
  final String buttonTitle;
  const CustomTextButton(
      {super.key, this.onButtonPressed, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        )),
        child: Text(
          buttonTitle,
          style: AppFonts.poppingMedium.copyWith(
            color: Colors.white,
            fontSize: 16.0,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
