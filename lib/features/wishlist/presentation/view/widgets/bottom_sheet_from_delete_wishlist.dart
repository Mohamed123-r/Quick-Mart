import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class BottomSheetFromDeleteWishlist extends StatelessWidget {
  const BottomSheetFromDeleteWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        color: kWhiteColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delete product from wishlist",
            style: Styles.body1Medium,
          ),
          const SizedBox(
            height: 24.0,
          ),
          PrimaryBottom(
            title: 'Delete (1) product',
            onPressed: () {},
          ),
          const SizedBox(
            height: 12.0,
          ),
          SecondaryBottom(
            title: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
