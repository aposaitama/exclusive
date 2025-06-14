import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_text_field.dart';
import 'package:exclusive_web/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ContactFormItem extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController messageController;
  const ContactFormItem({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.messageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 457.0,
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
          Row(
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
                  controller: nameController,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: CustomTextField(
                  hintText: 'Your Phone',
                  controller: nameController,
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
                buttonTitle: 'Send Massage',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
