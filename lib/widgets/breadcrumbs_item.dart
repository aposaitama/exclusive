import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AutoBreadcrumbs extends StatelessWidget {
  const AutoBreadcrumbs({super.key});

  @override
  Widget build(BuildContext context) {
    final String fullPath = GoRouter.of(context).state.uri.path;

    final segments = fullPath.split('/').where((s) => s.isNotEmpty).toList();

    List<Widget> breadcrumbs = [];
    String accumulatedPath = '';

    for (int i = 0; i < segments.length; i++) {
      accumulatedPath += '/${segments[i]}';
      final currentPath = accumulatedPath;

      final isLast = i == segments.length - 1;

      breadcrumbs.add(
        GestureDetector(
          onTap: isLast
              ? null
              : () {
                  context.go(currentPath);
                },
          child: Text(
            capitalize(
              segments[i],
            ),
            style: AppFonts.poppingRegular.copyWith(
              color: isLast
                  ? Colors.black
                  : Colors.black.withValues(
                      alpha: 0.5,
                    ),
              fontSize: 14.0,
            ),
          ),
        ),
      );

      if (!isLast) {
        breadcrumbs.add(
          Text(
            '  /  ',
            style: AppFonts.poppingRegular.copyWith(
              color: isLast
                  ? Colors.black
                  : Colors.black.withValues(
                      alpha: 0.5,
                    ),
              fontSize: 14.0,
            ),
          ),
        );
      }
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 80.0,
        ),
        child: Row(
          children: breadcrumbs,
        ),
      ),
    );
  }

  String capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';
}
