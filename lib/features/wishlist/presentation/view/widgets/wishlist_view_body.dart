import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom__product_cart.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        itemBuilder: (context, index) => const ProductCustomProductCart(
          isWishlist: true,
        ),
      ),
    );
  }
}
