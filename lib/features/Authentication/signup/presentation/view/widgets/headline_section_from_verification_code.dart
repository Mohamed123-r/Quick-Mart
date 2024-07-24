import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HeadlineSectionFromVerificationCode extends StatelessWidget {
  const HeadlineSectionFromVerificationCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
