import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class ProductListingView extends StatelessWidget {
  const ProductListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Product Listing',
        isLarge: true,
        actions: const [
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }
}
