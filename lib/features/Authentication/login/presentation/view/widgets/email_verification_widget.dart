import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_digits.dart';

class EmailVerificationWidget extends StatelessWidget {
  const EmailVerificationWidget({
    super.key,
    required this.confirmNum,
  });

  final List<TextEditingController> confirmNum;

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
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDigits(
                  controller: confirmNum[0],
                ),
                CustomDigits(
                  controller: confirmNum[1],
                ),
                CustomDigits(
                  controller: confirmNum[2],
                ),
                CustomDigits(
                  controller: confirmNum[3],
                ),
                CustomDigits(
                  controller: confirmNum[4],
                ),
                CustomDigits(
                  controller: confirmNum[5],
                ),
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
