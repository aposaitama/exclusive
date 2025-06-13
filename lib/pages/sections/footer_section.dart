import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80.0,
        bottom: 24.0,
      ),
      width: double.infinity,
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1175.0,
          ),
          child: Column(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account',
                          style: AppFonts.poppingMedium.copyWith(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Text(
                          'My Account',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Login / Register',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Cart',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Wishlist',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Shop',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 115.0,
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
                          'Privacy Policy',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Terms Of Use',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'FAQ',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Contact',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
