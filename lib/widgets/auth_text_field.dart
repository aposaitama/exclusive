import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final bool isObscure;
  final TextEditingController controller;
  final String hintText;
  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isObscure = false,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObscure,
      style: AppFonts.poppingRegular.copyWith(
        fontSize: 16.0,
        color: Colors.black.withValues(
          alpha: 0.5,
        ),
        height: 1.0,
      ),
      controller: widget.controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: widget.hintText,
        hintStyle: AppFonts.poppingRegular.copyWith(
          fontSize: 16.0,
          color: Colors.black.withValues(
            alpha: 0.5,
          ),
        ),
        contentPadding: EdgeInsets.only(
          top: 5.0,
          right: 16.0,
          bottom: 8.0,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
