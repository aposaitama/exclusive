import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/auth_text_field.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailOrPhoneNumberController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.images.authSide.path,
                ),
                Expanded(
                    child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 370.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create an account',
                          style: AppFonts.poppingMedium.copyWith(
                            fontSize: 36.0,
                          ),
                        ),
                        Text(
                          'Enter your details below',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 48.0,
                        ),
                        AuthTextField(
                          controller: nameController,
                          hintText: 'Name',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        AuthTextField(
                          controller: nameController,
                          hintText: 'Email or Phone Number',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        AuthTextField(
                          controller: nameController,
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        CustomRedButton(
                          buttonTitle: 'Create Account',
                        ),
                        SizedBox(
                          height: 110.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account?',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              'Log in',
                              style: AppFonts.poppingMedium.copyWith(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
