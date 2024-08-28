import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';

class CallToActionsFromProductDetailsView extends StatelessWidget {
  CallToActionsFromProductDetailsView({
    super.key,
  });

  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return Row(
      children: [
        SecondaryBottom(
          width: (MediaQuery.of(context).size.width - 40) * 0.5,
          title: 'Buy Now ',
          onPressed: () {},
        ),
        const Spacer(),
        PrimaryBottom(
          width: (MediaQuery.of(context).size.width - 40) * 0.5,
          title: 'Add to Cart',
          onPressed: () {
            BlocProvider.of<CartCubit>(context)
                .addCart(dataOfProductDetails['id']);
            CustomToast(
              context: context,
              fToast: fToast,
              image: Assets.toastSuccessIcon,
              title: 'The product has been added to your cart',
            ).showToast();
          },
        ),
      ],
    );
  }
}
