import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_digits.dart';

class DigitsSectionFromVerificationCode extends StatelessWidget {
  const DigitsSectionFromVerificationCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomDigits(),
            CustomDigits(),
            CustomDigits(),
            CustomDigits(),
            CustomDigits(),
            CustomDigits(),
          ],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
