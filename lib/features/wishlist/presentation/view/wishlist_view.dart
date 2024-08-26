import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/wishlist/presentation/view/widgets/wishlist_empty_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
        context: context,
        isLarge: true,
        title: 'Wishlist',
      ),
      body: const WishlistEmptyBody(),
    );
  }
}

