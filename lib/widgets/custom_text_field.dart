import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isRequired;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isRequired = false,
    this.validator,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(
      context,
    );
    final mobileVersion = responsive.isTablet || responsive.isMobile;
    return TextFormField(
      inputFormatters: inputFormatters,
      validator: validator,
      style: AppFonts.poppingRegular.copyWith(
        fontSize: 16.0,
        color: Colors.black.withValues(
          alpha: 0.5,
        ),
        height: 1.0,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFonts.poppingRegular.copyWith(
          fontSize: 16.0,
          color: Colors.black.withValues(
            alpha: 0.5,
          ),
        ),
        contentPadding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 13.0,
          bottom: 13.0,
        ),
        filled: true,
        fillColor: AppColors.lightGray,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
