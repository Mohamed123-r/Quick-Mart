import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/my_cart_empty_body.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/my_cart_view_body.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CartCubit>(context).getCart();
    dataOfCart = [];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          appBar: customAppBar(
            context: context,
            title: 'My Cart',
            isLarge: true,
          ),
          body: state is CartLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: kCyanColor,
                  ),
                )
              : dataOfCart.isEmpty
                  ? MyCartEmptyBody()
                  : MyCartViewBody(),
        );
      },
    );
  }
}
