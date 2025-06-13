import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/auth_text_field.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          'Log in to Exclusive',
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
                          controller: emailOrPhoneNumberController,
                          hintText: 'Email or Phone Number',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        AuthTextField(
                          controller: passwordController,
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        CustomRedButton(
                          buttonTitle: 'Log In',
                        ),
                        SizedBox(
                          height: 110.0,
                        ),
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
