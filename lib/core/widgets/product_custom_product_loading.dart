import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCustomProductLoading extends StatelessWidget {
  const ProductCustomProductLoading({
    super.key,
  });

  static List<Map<String, dynamic>> products = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAm1n7hOfhsDmTij1RjW-zv4l0t9HqYR9HQ&s',
      // Replace with your image path
      'title': 'Product Title name Product Title name',
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
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: List.generate(
          10,
          (index) => ProductCustomProduct(
            isLoading: true,
            image: products[0]['image'],
            title: products[0]['title'],
            price: products[0]['price'],
            oldPrice: products[0]['oldPrice'],
            index: 0,
            onTapGetProductDetails: () {},
          ),
        ),
      ),
    );
  }
}
