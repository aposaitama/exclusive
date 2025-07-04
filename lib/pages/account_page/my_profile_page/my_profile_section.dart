import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/pages/account_page/widgets/custom_account_text_filed_with_title.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyProfileSection extends StatelessWidget {
  const MyProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController currentPasswordController =
        TextEditingController();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmNewPasswordController =
        TextEditingController();
    final updatedFields = <String, dynamic>{};

    void saveUserInfo() {}

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          firstNameController.text = state.userInfo?.firstName ?? '';
          lastNameController.text = state.userInfo?.lastName ?? '';
          emailController.text = state.userInfo?.userEmail ?? '';
          addressController.text = state.userInfo?.address ?? '';
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(
                    alpha: 0.05,
                  ),
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 13.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 40.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit Your Profile',
                    style: AppFonts.poppingRegular.copyWith(
                      fontSize: 20.0,
                      color: AppColors.redColor,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          textFieldEditingController: firstNameController,
                          fieldTitle: 'First Name',
                          hint: state.userInfo?.firstName ??
                              'Enter your first name',
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          textFieldEditingController: lastNameController,
                          fieldTitle: 'Last Name',
                          hint: state.userInfo?.lastName ??
                              'Enter your last name',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          textFieldEditingController: emailController,
                          fieldTitle: 'Email',
                          hint: state.userInfo?.userEmail ?? 'Enter your email',
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          textFieldEditingController: addressController,
                          fieldTitle: 'Address',
                          hint: state.userInfo?.address ?? 'Enter your address',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  CustomAccountTextFiledWithTitle(
                    textFieldEditingController: currentPasswordController,
                    fieldTitle: 'Password Changes',
                    hint: 'Current Passwod',
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  CustomTextField(
                    hintText: 'New Password',
                    controller: newPasswordController,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  CustomTextField(
                    hintText: 'Confirm New Password',
                    controller: confirmNewPasswordController,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTransparentButton(
                        buttonTitle: 'Cancel',
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      CustomRedButton(
                        onButtonPressed: () {
                          if (firstNameController.text !=
                                  state.userInfo?.firstName &&
                              state.userInfo?.firstName != null) {
                            updatedFields['firstName'] =
                                firstNameController.text;
                          }
                          if (lastNameController.text !=
                              state.userInfo?.lastName) {
                            updatedFields['lastName'] = lastNameController.text;
                          }
                          if (emailController.text !=
                              state.userInfo?.userEmail) {
                            updatedFields['userEmail'] = emailController.text;
                          }
                          if (addressController.text !=
                              state.userInfo?.address) {
                            updatedFields['address'] = addressController.text;
                          }
                          context.read<AccountBloc>().add(
                                EditUserDataEvent(
                                  updatedFields,
                                ),
                              );
                        },
                        buttonTitle: 'Save Changes',
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
