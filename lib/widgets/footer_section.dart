import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FooterSectionItem extends StatelessWidget {
  final String title;
  final Map<String, String> items;

  const FooterSectionItem({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.poppingMedium.copyWith(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        ...items.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: GestureDetector(
              onTap: () => context.go(entry.value),
              child: Text(
                entry.key,
                style: AppFonts.poppingRegular.copyWith(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
