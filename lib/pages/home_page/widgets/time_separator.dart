import 'package:exclusive_web/resources/app_colors.dart';
import 'package:flutter/material.dart';

class TimeSeparator extends StatelessWidget {
  const TimeSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 17.0,
        right: 17.0,
      ),
      child: Column(
        children: [
          Container(
            width: 4.0,
            height: 4.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.redColor.withValues(
                  alpha: 0.6,
                )),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            width: 4.0,
            height: 4.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.redColor.withValues(
                alpha: 0.6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
