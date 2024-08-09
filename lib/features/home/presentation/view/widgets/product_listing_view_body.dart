import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';

class ProductListingViewBody extends StatelessWidget {
  const ProductListingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 160 / 230,
          children: List.generate(
            8,
            (index) => const ProductCustomProduct(),
          ),
        ),
      ),
    );
  }
}
