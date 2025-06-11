import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactInfoItemTile extends StatelessWidget {
  const ContactInfoItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.0,
      height: 457.0,
      padding: EdgeInsets.only(
        left: 35.0,
        right: 35.0,
        top: 40.0,
        bottom: 50.0,
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
              SvgPicture.asset(
                Assets.icons.iconsPhone,
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                'Call To Us',
                style: AppFonts.poppingMedium.copyWith(
                  fontSize: 16.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            'We are available 24/7, 7 days a week.',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Phone: +8801611112222',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            children: [
              SvgPicture.asset(
                Assets.icons.iconsPhone,
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                'Write To US',
                style: AppFonts.poppingMedium.copyWith(
                  fontSize: 16.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            'Fill out our form and we will contact you within 24 hours.',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Emails: customer@exclusive.com',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Emails: support@exclusive.com',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
