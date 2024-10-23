import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom__product_cart.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/cart_items_section.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomMyCartLoading extends StatelessWidget {
  const CustomMyCartLoading({
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
    return Skeletonizer(
      enabled: true,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.separated(
                itemCount: 12,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemBuilder: (context, index) => ProductCustomProductCart(
                  onTapGetProductDetails: () {},
                  isWishlist: true,
                  isLoading: true,
                  image: products[0]['image'],
                  title: products[0]['title'],
                  price: products[0]['price'],
                  oldPrice: products[0]['oldPrice'],
                ),
              ),
            ),
          ),
          const CartInfoSection(),
        ],
      ),
    );
  }
}
