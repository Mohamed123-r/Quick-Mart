import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_quantity.dart';

class SectionOfTheColorAndQuantityFromProductDetailsView
    extends StatelessWidget {
  SectionOfTheColorAndQuantityFromProductDetailsView({
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
