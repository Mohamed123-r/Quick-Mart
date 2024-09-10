import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

import 'thank_you_cart.dart';

class ThinkYouViewBody extends StatelessWidget {
  const ThinkYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ThankYouCard(),
          const Expanded(
            child: SizedBox(
              height: 32,
            ),
          ),
          const Text(
            'Your order has been placed successfully',
            textAlign: TextAlign.center,
            style: Styles.heading2Bold,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!',
            textAlign: TextAlign.center,
            style: Styles.body2Regular.copyWith(
              color: kGrey_150Color,
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 32,
            ),
          ),
          PrimaryBottom(
            title: "Continue shopping",
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
