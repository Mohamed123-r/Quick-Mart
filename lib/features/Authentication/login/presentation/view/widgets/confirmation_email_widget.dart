import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';

class ConfirmationEmailWidget extends StatelessWidget {
  const ConfirmationEmailWidget({
    super.key, required this.controller,
  });

   final TextEditingController controller ;
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
              "Confirmation Email",
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Enter your email address for verification.",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
         CustomInputField(
          controller: controller,
          hintText: 'Enter your Email',
          title: 'Email',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfEmail,
        ),
      ],
    );
  }
}
