import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class RemainingTimeItemTile extends StatelessWidget {
  final String tileTitle;
  final String remainingTime;
  const RemainingTimeItemTile({
    super.key,
    required this.tileTitle,
    required this.remainingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.0,
      height: 62.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            remainingTime,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: 16.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Text(
            tileTitle,
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 11.0,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
