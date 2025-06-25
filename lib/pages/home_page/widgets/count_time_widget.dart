import 'package:exclusive_web/pages/home_page/widgets/count_time_item_tile.dart';
import 'package:exclusive_web/pages/home_page/widgets/time_separator.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CountTimeWidget extends StatelessWidget {
  final String days;
  final String hours;
  final String minutes;
  final String seconds;
  const CountTimeWidget(
      {super.key,
      required this.days,
      required this.hours,
      required this.minutes,
      required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountTimeItemTile(
          label: 'Days',
          value: days,
        ),
        TimeSeparator(),
        CountTimeItemTile(
          label: 'Hours',
          value: hours,
        ),
        TimeSeparator(),
        CountTimeItemTile(
          label: 'Minutes',
          value: minutes,
        ),
        TimeSeparator(),
        CountTimeItemTile(
          label: 'Seconds',
          value: seconds,
        ),
      ],
    );
  }
}
