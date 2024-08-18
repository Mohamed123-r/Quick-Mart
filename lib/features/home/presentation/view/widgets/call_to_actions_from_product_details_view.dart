import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';

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
