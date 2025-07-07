import 'package:bot_toast/bot_toast.dart';
import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc_event.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc_state.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/auth_text_field.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
  void dispose() {
    emailOrPhoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    context.read<LoginBloc>().add(
          LoginUserBlocEvent(
            emailOrPhoneNumberController.text,
            passwordController.text,
          ),
        );
  }

  void _onSignUpPressed() {
    SignUpRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlocListener<LoginBloc, LoginBlocState>(
          listener: (context, state) {
            if (state.loginStatus == LoginStatus.successfull) {
              context.read<AccountBloc>().add(
                    AuthenticateUserEvent(),
                  );
              context.read<AccountBloc>().add(
                    GetUserDataEvent(),
                  );
              HomeRoute().go(context);
            } else if (state.loginStatus == LoginStatus.failed) {
              BotToast.showCustomText(
                toastBuilder: (_) => Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    right: 100,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        state.errorMessage,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                duration: const Duration(
                  seconds: 3,
                ),
                onlyOne: true,
              );
            }
          },
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (!isMobileOrTablet)
                    Image.asset(
                      Assets.images.authSide.path,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 2,
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
                            SizedBox(
                              height: 24.0,
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
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            AuthTextField(
                              isObscure: true,
                              controller: passwordController,
                              hintText: 'Password',
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            CustomRedButton(
                              onButtonPressed: _onLoginPressed,
                              buttonTitle: 'Log In',
                            ),
                            SizedBox(
                              height: 110.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have account?',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: _onSignUpPressed,
                                    child: Text(
                                      'Sign up',
                                      style: AppFonts.poppingMedium.copyWith(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 140.0,
              ),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
