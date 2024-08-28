import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/core/widgets/product_custom__product_cart.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';

class CartItemsSection extends StatelessWidget {
  CartItemsSection({
    super.key,
  });

  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: dataOfCart.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemBuilder: (context, index) => ProductCustomProductCart(
            onTapGetProductDetails: () {
              BlocProvider.of<CartCubit>(context)
                  .deleteCart(dataOfCart[index]['id']);
              CustomToast(
                context: context,
                fToast: fToast,
                image: Assets.toastSuccessIcon,
                title: "The product has been removed from your cart",
              ).showToast();
            },
            image: dataOfCart[index]['product']['image'],
            title: dataOfCart[index]['product']['name'],
            price: dataOfCart[index]['product']['price'],
            oldPrice: dataOfCart[index]['product']['old_price'],
          ),
        ),
      ),
    );
  }
}
