import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCustomCategoryLoading extends StatelessWidget {
  const ProductCustomCategoryLoading({
    super.key,
    required this.isSmall,
  });

  final bool isSmall;
  static List<Map<String, dynamic>> products = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAm1n7hOfhsDmTij1RjW-zv4l0t9HqYR9HQ&s',
      // Replace with your image path
      'title': 'Product Title ',
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
      child: Container(
        height: isSmall ? 60 : 100,
        width: isSmall ? 80 : 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isSmall ? 12 : 16),
          border: Border.all(
            color: kGrey_50Color,
            width: 1,
          ),
        ),
        child: ProductCustomCategory(
          title: products[0]['title'],
          icon: products[0]['image'],
          isSmall: isSmall,
        ),
      ),
    );
  }
}
