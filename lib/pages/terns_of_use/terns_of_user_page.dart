import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TernsOfUsePage extends StatelessWidget {
  const TernsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final bool isMobile = responsive.isMobile;
    final bool isTablet = responsive.isTablet;
    final bool isMobileOrTablet = isMobile || isTablet;
    const termsOfUseText = '''
Terms of Use

Welcome to Exclusive. By accessing or using our website, services, or products, you agree to be bound by the following Terms of Use. Please read them carefully.

1. Acceptance of Terms  
By visiting or purchasing from Exclusive, you agree to comply with and be legally bound by these terms and all applicable laws and regulations. If you do not agree, please do not use our services.

2. Use of the Website  
You agree to use this website for lawful purposes only. You may not:
  - Use the site in any way that violates applicable laws.
  - Attempt to hack, disable, or interfere with website security.
  - Use the site to promote or distribute malicious software or spam.

3. Intellectual Property  
All content on this site—including logos, images, texts, and product designs—is the property of Exclusive or its partners and is protected by copyright and trademark laws. You may not reproduce or redistribute any part of the website without written permission.

4. Product Information and Availability  
We strive to provide accurate product descriptions and pricing, but we do not guarantee that all information is error-free. We reserve the right to correct any errors, change product information, or cancel orders if necessary.

5. User Accounts  
When creating an account, you agree to provide accurate and complete information. You are responsible for maintaining the confidentiality of your password and for all activities that occur under your account.

6. Limitation of Liability  
Exclusive is not liable for any direct, indirect, or incidental damages arising from your use of our website or services, including but not limited to product delays, interruptions, or inaccuracies.

7. Governing Law  
These terms are governed by the laws of [your country or region]. Any disputes shall be resolved in accordance with local legal procedures.

8. Changes to the Terms  
Exclusive reserves the right to update or modify these Terms of Use at any time. Changes will take effect immediately upon posting. It is your responsibility to check this page regularly for updates.


''';

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
                                          'Terms Of Use',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 24.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          termsOfUseText,
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
                          Assets.images.termsOfService.path,
                        ),
                      ],
                    ),
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                          'Terns of Use',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 52.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          termsOfUseText,
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
                          Assets.images.termsOfService.path,
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
