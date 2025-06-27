import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AutoBreadcrumbs extends StatelessWidget {
  const AutoBreadcrumbs({super.key});

  @override
  Widget build(BuildContext context) {
    final String fullPath = GoRouter.of(context).state.uri.path;
    print(fullPath);
    final segments = fullPath.split('/').where((s) => s.isNotEmpty).toList();
    print(segments);

    List<Widget> breadcrumbs = [];
    String accumulatedPath = '';

    for (int i = 0; i < segments.length; i++) {
      accumulatedPath += '/${segments[i]}';
      final currentPath = accumulatedPath; // Локальна копія

      final isLast = i == segments.length - 1;

      breadcrumbs.add(GestureDetector(
        onTap: isLast
            ? null
            : () {
                context.go(currentPath); // Використовуємо локальну змінну
              },
        child: Text(
          capitalize(segments[i]),
          style: TextStyle(
            color: isLast ? Colors.black : Colors.blue,
            decoration: isLast ? TextDecoration.none : TextDecoration.underline,
            fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ));

      if (!isLast) {
        breadcrumbs.add(const Text(' / '));
      }
    }

    return Row(children: breadcrumbs);
  }

  String capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';
}
