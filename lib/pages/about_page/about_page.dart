import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/pages/about_page/widgets/our_achivements_item_tile.dart';
import 'package:exclusive_web/pages/sections/benefits_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 42.0,
            ),
            Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Our Story',
                                    style: AppFonts.poppingSemiBold.copyWith(
                                      fontSize: 52.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Text(
                                    'Launced in 2015, Exclusive is South Asia’s premier online shopping makterplace with an active presense in Bangladesh. Supported by wide range of tailored marketing, data and service solutions, Exclusive has 10,500 sallers and 300 brands and serves 3 millioons customers across the region.',
                                    style: AppFonts.poppingRegular,
                                  ),
                                  SizedBox(
                                    height: 24.0,
                                  ),
                                  Text(
                                    'Exclusive has more than 1 Million products to offer, growing at a very fast. Exclusive offers a diverse assotment in categories ranging  from consumer.',
                                    style: AppFonts.poppingRegular,
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
                    Assets.images.ourStory.path,
                  ),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 140.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OurAchivementsItemTile(
                        iconPath: Assets.icons.sallers,
                        achivementsTitle: '10.5k',
                        achivementsDescription: 'Sallers active our site',
                      ),
                      OurAchivementsItemTile(
                        isRed: true,
                        iconPath: Assets.icons.productSale,
                        achivementsTitle: '33k',
                        achivementsDescription: 'Mopnthly Produduct Sale',
                      ),
                      OurAchivementsItemTile(
                        iconPath: Assets.icons.customer,
                        achivementsTitle: '45.5k',
                        achivementsDescription: 'Customer active in our site',
                      ),
                      OurAchivementsItemTile(
                        iconPath: Assets.icons.goals,
                        achivementsTitle: '25k',
                        achivementsDescription: 'Anual gross sale in our site',
                      ),
                    ],
                  ),
                  BenefitsSection(),
                ],
              ),
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
