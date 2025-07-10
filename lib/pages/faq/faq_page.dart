import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final bool isMobile = responsive.isMobile;
    final bool isTablet = responsive.isTablet;
    final bool isMobileOrTablet = isMobile || isTablet;
    const faqText = '''
Frequently Asked Questions (FAQ)

1. How can I place an order?  
To place an order, browse our catalog, select products, add them to your cart, and proceed to checkout.

2. What payment methods do you accept?  
We accept credit/debit cards, PayPal, and other common payment methods.

3. How long does delivery take?  
Delivery usually takes 3-7 business days depending on your location.

4. Can I return or exchange a product?  
Yes, returns and exchanges are possible within 14 days of purchase if the product is unused and in original packaging.

5. How can I track my order?  
After placing an order, you will receive a tracking number via email.

6. What should I do if I receive a damaged item?  
Please contact our customer support immediately with your order details and photos of the damaged product.

7. How do I contact customer support?  
You can reach us via email at support@example.com or call us at +1-234-567-890.

If you have other questions, feel free to contact us anytime!
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
                                          'Frequently Asked Questions (FAQ)',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 24.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          faqText,
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
                          Assets.images.blog5eaaa5cb18719NativemsgFaq.path,
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
                                          'Frequently Asked Questions (FAQ)',
                                          style:
                                              AppFonts.poppingSemiBold.copyWith(
                                            fontSize: 52.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0,
                                        ),
                                        Text(
                                          faqText,
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
                          Assets.images.blog5eaaa5cb18719NativemsgFaq.path,
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
