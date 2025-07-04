import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomAccountTextFiledWithTitle extends StatelessWidget {
  final TextEditingController textFieldEditingController;
  final String fieldTitle;
  final String hint;

  final String? Function(String?)? validator;
  const CustomAccountTextFiledWithTitle(
      {super.key,
      required this.textFieldEditingController,
      required this.fieldTitle,
      this.validator,
      required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: AppFonts.poppingRegular.copyWith(
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        CustomTextField(
          validator: validator,
          hintText: hint,
          controller: textFieldEditingController,
        )
      ],
    );
  }
}
