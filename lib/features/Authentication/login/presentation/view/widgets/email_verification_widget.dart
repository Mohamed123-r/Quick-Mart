import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_digits.dart';

class EmailVerificationWidget extends StatelessWidget {
  const EmailVerificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email Verification",
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Enter the 6-digit verification code send to your email address.",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
        const Column(
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
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Resend Code',
            style: Styles.body2Medium.copyWith(
              color: kCyanColor,
            ),
          ),
        ),
      ],
    );
  }
}
