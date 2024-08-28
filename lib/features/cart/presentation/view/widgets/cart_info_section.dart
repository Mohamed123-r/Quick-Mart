import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/product_custom__product_cart.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';

class CartItemsSection extends StatelessWidget {
  const CartItemsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: dataOfCart.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemBuilder: (context, index) => ProductCustomProductCart(
            image: dataOfCart[index]['product']['image'],
            title: dataOfCart[index]['product']['name'],
            price: dataOfCart[index]['product']['price'],
            oldPrice: dataOfCart[index]['product']['price'],
          ),
        ),
      ),
    );
  }
}
