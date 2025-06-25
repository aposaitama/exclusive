import 'package:bot_toast/bot_toast.dart';
import 'package:exclusive_web/pages/contact_page/%20widgets/contact_form_item.dart';
import 'package:exclusive_web/pages/contact_page/%20widgets/contact_info_item.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc_event.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc_state.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlocListener<ContactBloc, ContactBlocState>(
          listener: (context, state) {
            if (state.messageSendingStatus ==
                MessageSendingStatus.successfull) {
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
                        'Message send successfully',
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
            } else if (state.messageSendingStatus ==
                MessageSendingStatus.failed) {
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
                height: 80.0,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1170.0,
                ),
                child: isMobileOrTablet
                    ? Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobileOrTablet ? 20.0 : 0.0,
                            ),
                            child: ContactInfoItemTile(),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: ContactFormItem(
                                    nameController: nameController,
                                    emailController: emailController,
                                    phoneController: phoneController,
                                    messageController: messageController,
                                    onButtonPressed: () =>
                                        context.read<ContactBloc>().add(
                                              SendMessageBlocEvent(
                                                nameController.text,
                                                emailController.text,
                                                phoneController.text,
                                                messageController.text,
                                              ),
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
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
                              onButtonPressed: () =>
                                  context.read<ContactBloc>().add(
                                        SendMessageBlocEvent(
                                          nameController.text,
                                          emailController.text,
                                          phoneController.text,
                                          messageController.text,
                                        ),
                                      ),
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
      ),
    );
  }
}
