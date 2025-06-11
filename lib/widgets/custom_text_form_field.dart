import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController formController;
  const CustomTextFormField(
      {super.key, required this.formController, required this.hintText});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 207.0,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.top,
        expands: true,
        style: AppFonts.poppingRegular.copyWith(
          fontSize: 16.0,
          color: Colors.black.withValues(
            alpha: 0.5,
          ),
          height: 1.0,
        ),
        maxLines: null,
        minLines: null,
        controller: widget.formController,
        decoration: InputDecoration(
          hintText: widget.hintText,
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
      ),
    );
  }
}
