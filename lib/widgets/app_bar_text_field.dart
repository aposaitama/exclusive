import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppBarTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function()? onSearch;
  final ValueChanged<String>? onChanged;
  const AppBarTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onSearch,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(
      context,
    );
    final mobileVersion = responsive.isTablet || responsive.isMobile;
    return TextField(
      onChanged: onChanged,
      style: AppFonts.poppingRegular.copyWith(
        fontSize: 12.0,
        color: Colors.black.withValues(
          alpha: 0.5,
        ),
        height: 1.0,
      ),
      onSubmitted: (_) => onSearch!(),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onSearch,
          child: SvgPicture.asset(
            fit: BoxFit.scaleDown,
            Assets.icons.search,
          ),
        ),
        hintText: hintText,
        hintStyle: AppFonts.poppingRegular.copyWith(
          fontSize: 12.0,
          color: Colors.black.withValues(
            alpha: 0.5,
          ),
        ),
        contentPadding: EdgeInsets.only(
          left: 20.0,
          right: 12.0,
          top: 10.0,
          bottom: 10.0,
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
