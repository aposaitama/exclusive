import 'package:exclusive_web/pages/contact_page/%20widgets/contact_form_item.dart';
import 'package:exclusive_web/pages/contact_page/%20widgets/contact_info_item.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 80.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Row(
                children: [
                  ContactInfoItemTile(),
                  SizedBox(
                    width: 30.0,
                  ),
                  Flexible(
                    child: ContactFormItem(
                      nameController: nameController,
                      emailController: emailController,
                      phoneController: phoneController,
                      messageController: messageController,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140.0,
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
