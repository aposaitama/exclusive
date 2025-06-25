import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWithTitle extends StatelessWidget {
  final TextEditingController textFieldEditingController;
  final String fieldTitle;
  final bool isRequired;
  final String? Function(String?)? validator;
  const CustomTextFieldWithTitle(
      {super.key,
      required this.textFieldEditingController,
      required this.fieldTitle,
      this.isRequired = false,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: fieldTitle,
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: 16.0,
                  color: Colors.black.withValues(
                    alpha: 0.4,
                  ),
                ),
              ),
              if (isRequired)
                TextSpan(
                  text: '*',
                  style: AppFonts.poppingRegular.copyWith(
                    color: AppColors.redColor.withValues(
                      alpha: 0.4,
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        CustomTextField(
          validator: validator,
          hintText: '',
          controller: textFieldEditingController,
        )
      ],
    );
  }
}
