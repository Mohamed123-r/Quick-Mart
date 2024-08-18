import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/product_custom_wishlist.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/call_to_actions_from_product_details_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_detail_view_body.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CallToActionsFromProductDetailsView(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          ProductCustomWishlist(),
          SizedBox(width: 16),
        ],
      ),
      body: const ProductDetailViewBody(),
    );
  }
}
