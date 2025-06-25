import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:exclusive_web/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactFormItem extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  final void Function()? onButtonPressed;
  const ContactFormItem({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Container(
      height: isMobileOrTablet ? 600 : 457.0,
      padding: EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 40.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4.0,
        ),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMobileOrTablet
              ? Column(
                  children: [
                    CustomTextField(
                      hintText: 'Your Name',
                      controller: nameController,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomTextField(
                      hintText: 'Your Email',
                      controller: emailController,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomTextField(
                      hintText: 'Your Phone',
                      controller: phoneController,
                    )
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Your Name',
                        controller: nameController,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Your Email',
                        controller: emailController,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Your Phone',
                        controller: phoneController,
                      ),
                    )
                  ],
                ),
          SizedBox(
            height: 32.0,
          ),
          CustomTextFormField(
            formController: messageController,
            hintText: 'Your Massage',
          ),
          SizedBox(
            height: 32.0,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 220.0,
              child: CustomRedButton(
                onButtonPressed: onButtonPressed,
                buttonTitle: 'Send Massage',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
