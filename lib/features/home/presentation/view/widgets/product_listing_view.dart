import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_listing_view_body.dart';

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
      body: const ProductListingViewBody(),
    );
  }
}
