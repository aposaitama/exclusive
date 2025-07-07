import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryShowcaseItemTile extends StatefulWidget {
  final String categoryName;
  final bool showArrow;
  const CategoryShowcaseItemTile(
      {super.key, this.showArrow = false, required this.categoryName});

  @override
  State<CategoryShowcaseItemTile> createState() =>
      _CategoryShowcaseItemTileState();
}

class _CategoryShowcaseItemTileState extends State<CategoryShowcaseItemTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(
        () => _isHovered = true,
      ),
      onExit: (_) => setState(
        () => _isHovered = false,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.categoryName,
              style: AppFonts.poppingRegular.copyWith(
                fontSize: 16.0,
              ),
            ),
            if (_isHovered)
              SvgPicture.asset(
                Assets.icons.smallArrow,
                fit: BoxFit.scaleDown,
              )
          ],
        ),
      ),
    );
  }
}
