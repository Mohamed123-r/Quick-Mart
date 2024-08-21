import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';

class CustomProductGridView extends StatelessWidget {
  const CustomProductGridView({super.key, required this.productsList});

  final List<Map<String, dynamic>> productsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: GridView.builder(
          itemCount: productsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) => ProductCustomProduct(
            image: productsList[index]['image'],
            title: productsList[index]['name'],
            price: productsList[index]['price'],
            oldPrice: productsList[index]['old_price'],
            index: index,
          ),
        ),
      ),
    );
  }
}
