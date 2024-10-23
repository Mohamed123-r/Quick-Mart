import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom__product_cart.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomWishlistLoading extends StatelessWidget {
  const CustomWishlistLoading({
    super.key,
  });

  static List<Map<String, dynamic>> products = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAm1n7hOfhsDmTij1RjW-zv4l0t9HqYR9HQ&s',
      // Replace with your image path
      'title':
          'Product Title 1 Product Title 1 Product Title 1 Product Title 1 Product Title 1 ',
      // Example title
      'price': 2000.0,
      // Example pricing logic
      'oldPrice': 3000.0,
      // Example old price logic
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Skeletonizer(
        child: ListView.separated(
          itemCount: 12,
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemBuilder: (context, index) => ProductCustomProductCart(
            isWishlist: true,
            isLoading: true,
            onTapGetProductDetails: () {},
            image: products[0]['image'],
            title: products[0]['title'],
            price: products[0]['price'],
            oldPrice: products[0]['oldPrice'],
          ),
        ),
      ),
    );
  }
}
