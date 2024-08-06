import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProductCustomCategory extends StatelessWidget {
  const ProductCustomCategory({
    super.key,
    this.isSmall = false,
    required this.title,
    required this.icon,
  });

  final bool isSmall;
  final String title;

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? 60 : 100,
      width: isSmall ? 80 : 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isSmall ? 12 : 16),
        border: Border.all(
          color: kGrey_50Color,
          width: 1,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              height: isSmall ? 30 : 40,
              width: isSmall ? 60 : 140,
            ),
            Text(
              title,
              style: isSmall ? Styles.overLineSemiBold : Styles.captionSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
