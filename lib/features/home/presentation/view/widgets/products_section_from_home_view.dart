import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';

class ProductsSectionFromHomeView extends StatelessWidget {
  const ProductsSectionFromHomeView({
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
              "Latest Products",
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
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: List.generate(
            8,
            (index) => const ProductCustomProduct(),
          ),
        )
      ],
    );
  }
}
