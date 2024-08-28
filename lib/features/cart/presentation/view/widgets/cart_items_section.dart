import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/call_to_action_section_from_cart_view.dart';

class CartInfoSection extends StatelessWidget {
  const CartInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 17,
            offset: const Offset(0, -3), // Top shadow
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Order Info",
              style: Styles.body1Medium,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: Styles.captionRegular.copyWith(
                    color: kGrey_150Color,
                  ),
                ),
                Text(
                  "\$ $totalOldPrice",
                  style: Styles.captionRegular.copyWith(
                    color: kGrey_150Color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping Cost",
                  style: Styles.captionRegular.copyWith(
                    color: kGrey_150Color,
                  ),
                ),
                Text(
                  "\$ ${totalOldPrice - totalPrice}",
                  style: Styles.captionRegular.copyWith(
                    color: kGrey_150Color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: Styles.body1Medium,
                ),
                Text(
                  "\$ $totalPrice",
                  style: Styles.body1Medium,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const CallToActionSectionFromCartView(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
