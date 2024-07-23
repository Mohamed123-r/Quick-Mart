import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HeadlineSection extends StatelessWidget {
  const HeadlineSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "SignUp",
          style: Styles.heading2Bold,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "Already have an account?",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: Styles.body2Medium.copyWith(
                  color: kCyanColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
