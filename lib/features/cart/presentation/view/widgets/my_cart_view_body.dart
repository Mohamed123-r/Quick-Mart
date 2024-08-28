import 'package:flutter/material.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/cart_info_section.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/cart_items_section.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartItemsSection(),
        CartInfoSection(),
      ],
    );
  }
}
