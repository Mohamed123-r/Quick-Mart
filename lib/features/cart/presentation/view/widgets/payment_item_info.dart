import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.body2Medium,
        ),
        Text(
          subTitle,
          style: Styles.body2Medium,
        ),
      ],
    );
  }
}
