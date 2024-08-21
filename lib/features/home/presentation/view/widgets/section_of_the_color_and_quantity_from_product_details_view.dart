import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/function/random_list.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_colors.dart';
import 'package:quick_mart/core/widgets/product_custom_quantity.dart';

class SectionOfTheColorAndQuantityFromProductDetailsView
    extends StatelessWidget {
  SectionOfTheColorAndQuantityFromProductDetailsView({
    super.key,
  });

  final List<Widget> answerdList = [
    const ProductCustomColors(color: kBlackColor, isSelected: false),
    const ProductCustomColors(color: kGrey_150Color, isSelected: false),
    const ProductCustomColors(color: kGrey_100Color, isSelected: false),
    const ProductCustomColors(color: kGrey_50Color, isSelected: false),
    const ProductCustomColors(color: kBrownColor, isSelected: false),
    const ProductCustomColors(color: kMerigoldColor, isSelected: false),
    const ProductCustomColors(color: kOrangeColor, isSelected: false),
    const ProductCustomColors(color: kYellowColor, isSelected: false),
    const ProductCustomColors(color: kCyan_50Color, isSelected: false),
    const ProductCustomColors(color: kBlueColor, isSelected: false),
    const ProductCustomColors(color: kRedColor, isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Color',
          style: Styles.body1Medium,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            answerdList.randomItem(),
            const SizedBox(
              width: 4,
            ),
            answerdList.randomItem(),
            const SizedBox(
              width: 4,
            ),
            answerdList.randomItem(),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Quantity',
          style: Styles.body1Medium,
        ),
        const SizedBox(
          height: 8,
        ),
        const ProductCustomQuantity(),
      ],
    );
  }
}
