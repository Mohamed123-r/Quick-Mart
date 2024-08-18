import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_colors.dart';
import 'package:quick_mart/core/widgets/product_custom_quantity.dart';

class SectionOfTheColorAndQuantityFromProductDetailsView
    extends StatelessWidget {
  const SectionOfTheColorAndQuantityFromProductDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Text(
          'Color',
          style: Styles.body1Medium,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ProductCustomColors(color: kBlackColor, isSelected: false),
            SizedBox(
              width: 4,
            ),
            ProductCustomColors(color: kGrey_150Color, isSelected: true),
            SizedBox(
              width: 4,
            ),
            ProductCustomColors(color: kPurpleColor, isSelected: false),
            SizedBox(
              width: 4,
            ),
            ProductCustomColors(color: kBlueColor, isSelected: false),
            SizedBox(
              width: 4,
            ),
            ProductCustomColors(color: kRedColor, isSelected: false),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Quantity',
          style: Styles.body1Medium,
        ),
        SizedBox(
          height: 8,
        ),
        ProductCustomQuantity(),
      ],
    );
  }
}
