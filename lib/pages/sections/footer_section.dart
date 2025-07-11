import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/footer_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> accountLinks = {
      'My Account': '/home/account/profile',
      'Login / Register': '/sign-up',
      'Cart': '/home/cart',
      'Wishlist': '/home/favourite',
      'Shop': '/home',
    };

    final Map<String, String> supportLinks = {
      'Contact': '/contact',
      'FAQ': '/home/faq',
      'Terms Of Use': '/home/terns_of_use',
      'Privacy Policy': '/home/privacy_policy',
    };

    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Container(
      padding: EdgeInsets.only(
        top: isMobileOrTablet ? 40.0 : 80.0,
        bottom: 24.0,
      ),
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1175.0,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: isMobileOrTablet
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.exclusiveLogo,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(height: 32),

                      FooterSectionItem(
                        title: 'Account',
                        items: accountLinks,
                      ),

                      const SizedBox(height: 32),

                      SizedBox(
                        width: 180.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Support',
                              style: AppFonts.poppingMedium.copyWith(
                                fontSize: isMobileOrTablet ? 14.0 : 20.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              '111 Bijoy sarani, Dhaka,  DH 1515, Bangladesh.',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: isMobileOrTablet ? 12.0 : 16.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'exclusive@gmail.com',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: isMobileOrTablet ? 12.0 : 16.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              '+88015-88888-9999',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: isMobileOrTablet ? 12.0 : 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),

                      FooterSectionItem(
                        title: 'Quick Link',
                        items: supportLinks,
                      ),

                      const SizedBox(height: 32),

                      Text(
                        'Save \$3 with App New User Only',
                        style: AppFonts.poppingRegular.copyWith(
                            fontSize: isMobileOrTablet ? 12.0 : 16.0,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Image.asset(
                            Assets.images.tgImage1056703926.path,
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            children: [
                              Image.asset(Assets.images.downloadAppstore.path),
                              const SizedBox(height: 12),
                              Image.asset(Assets.images.downloadpPlay.path),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Assets.icons.iconFacebook),
                          const SizedBox(width: 16),
                          SvgPicture.asset(Assets.icons.iconTwitter),
                          const SizedBox(width: 16),
                          SvgPicture.asset(Assets.icons.iconInstagram),
                          const SizedBox(width: 16),
                          SvgPicture.asset(Assets.icons.iconLinkedin),
                        ],
                      ),

                      const SizedBox(height: 40),

                      // COPYRIGHT
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Assets.icons.iconCopyright,
                              colorFilter: ColorFilter.mode(
                                Colors.white.withValues(alpha: 0.3),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Copyright Rimel 2022. All right reserved',
                              style: AppFonts.poppingRegular.copyWith(
                                fontSize: isMobileOrTablet ? 10.0 : 16.0,
                                color: Colors.white.withValues(alpha: 0.3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                :

                ////
                Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                Assets.icons.exclusiveLogo,
                                colorFilter: ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 180.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Support',
                                  style: AppFonts.poppingMedium.copyWith(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  '111 Bijoy sarani, Dhaka,  DH 1515, Bangladesh.',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  'exclusive@gmail.com',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  '+88015-88888-9999',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 130.0,
                            child: FooterSectionItem(
                              title: 'Account',
                              items: accountLinks,
                            ),
                          ),
                          SizedBox(
                            width: 115.0,
                            child: FooterSectionItem(
                              title: 'Quick Link',
                              items: supportLinks,
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Quick Link',
                                  style: AppFonts.poppingMedium.copyWith(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  'Save \$3 with App New User Only',
                                  style: AppFonts.poppingRegular.copyWith(
                                    fontSize: 16.0,
                                    color: Colors.white.withValues(
                                      alpha: 0.7,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 80.0,
                                      height: 80.0,
                                      child: Image.asset(
                                        Assets.images.tgImage1056703926.path,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 11.0,
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          Assets.images.downloadAppstore.path,
                                        ),
                                        SizedBox(
                                          height: 12.0,
                                        ),
                                        Image.asset(
                                          Assets.images.downloadpPlay.path,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      Assets.icons.iconFacebook,
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    SvgPicture.asset(
                                      Assets.icons.iconTwitter,
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    SvgPicture.asset(
                                      Assets.icons.iconInstagram,
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    SvgPicture.asset(
                                      Assets.icons.iconLinkedin,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.iconCopyright,
                            colorFilter: ColorFilter.mode(
                              Colors.white.withValues(
                                alpha: 0.3,
                              ),
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Copyright Rimel 2022. All right reserved',
                            style: AppFonts.poppingRegular.copyWith(
                              fontSize: 16.0,
                              color: Colors.white.withValues(
                                alpha: 0.3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
