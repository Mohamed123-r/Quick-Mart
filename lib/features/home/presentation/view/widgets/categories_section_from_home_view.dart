import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';

class CategoriesSectionFromHomeView extends StatelessWidget {
  const CategoriesSectionFromHomeView({
    super.key,
    required this.onTapOfSeeAll,
  });

  final Function() onTapOfSeeAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: Styles.heading3Bold,
            ),
            InkWell(
              onTap: onTapOfSeeAll,
              borderRadius: BorderRadius.circular(24),
              child: Text(
                "See All",
                style: Styles.body2Medium.copyWith(color: kCyanColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductCustomCategory(
              isSmall: true,
              title: 'Electronics',
              icon: Assets.heart2Icon,
            ),
            ProductCustomCategory(
              isSmall: true,
              title: 'Fashion',
              icon: Assets.home2Icon,
            ),
            ProductCustomCategory(
              isSmall: true,
              title: 'Furniture',
              icon: Assets.profile2Icon,
            ),
            ProductCustomCategory(
              isSmall: true,
              title: 'Industrial',
              icon: Assets.shoppingCart2Icon,
            ),
          ],
        )
      ],
    );
  }
}
