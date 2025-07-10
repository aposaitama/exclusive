import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/about_page/widgets/our_achivements_item_tile.dart';
import 'package:exclusive_web/pages/sections/benefits_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final bool isMobile = responsive.isMobile;
    final bool isTablet = responsive.isTablet;
    final bool isMobileOrTablet = isMobile || isTablet;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 42.0,
            ),
            isMobileOrTablet
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Privacy Policy',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 24.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          'At Exclusive, we value your privacy and are committed to protecting your personal data.\nThis Privacy Policy outlines how we collect, use, and safeguard your information when you use our services. \nWe collect personal information such as your name, email, shipping address, and payment details to provide and improve our services. All data is stored securely and used strictly in accordance with this policy. We do not sell or rent your data to third parties. We may share your information only with trusted partners who assist us in operating our platform, provided they agree to keep your information confidential. By using our website, you consent to our Privacy Policy. We may update this policy from time to time, so we encourage you to review it periodically. If you have any questions about this Privacy Policy, please contact our support team.',
                                          style:
                                              AppFonts.poppingRegular.copyWith(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Image.asset(
                          fit: BoxFit.cover,
                          Assets.images.privacyPolicy011.path,
                        ),
                      ],
                    ),
                  )
                : Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 585.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      right: 75.0,
                                    ),
                                    width: 525.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Privacy Policy',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 52.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          'At Exclusive, we value your privacy and are committed to protecting your personal data.\nThis Privacy Policy outlines how we collect, use, and safeguard your information when you use our services. \nWe collect personal information such as your name, email, shipping address, and payment details to provide and improve our services. All data is stored securely and used strictly in accordance with this policy. We do not sell or rent your data to third parties. We may share your information only with trusted partners who assist us in operating our platform, provided they agree to keep your information confidential. By using our website, you consent to our Privacy Policy. We may update this policy from time to time, so we encourage you to review it periodically. If you have any questions about this Privacy Policy, please contact our support team.',
                                          style: AppFonts.poppingRegular,
                                        ),
                                        SizedBox(
                                          height: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          fit: BoxFit.cover,
                          Assets.images.privacyPolicy011.path,
                        ),
                      ),
                    ],
                  ),
            SizedBox(
              height: 42.0,
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
