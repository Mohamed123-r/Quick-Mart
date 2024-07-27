import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_password_input_field.dart';

class NewPasswordWidget extends StatelessWidget {
  const NewPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New Password",
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Enter your new password and remember it.",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
        const Column(
          children: [
            CustomPasswordInputField(
              title: 'Password',
            ),
            SizedBox(
              height: 16,
            ),
            CustomPasswordInputField(
              title: 'Confirm Password',
            ),
          ],
        ),
      ],
    );
  }
}
