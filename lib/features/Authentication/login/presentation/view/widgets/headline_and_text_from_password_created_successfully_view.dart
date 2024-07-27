import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HeadlineAndTextFromPasswordCreatedSuccessfullyView
    extends StatelessWidget {
  const HeadlineAndTextFromPasswordCreatedSuccessfullyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'New password set \n successfully',
          textAlign: TextAlign.center,
          style: Styles.heading2Bold,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Congratulations! Your password has been set \n"
          " successfully. Please proceed to the login screen \n"
          "to verify your account.",
          textAlign: TextAlign.center,
          style: Styles.body2Regular.copyWith(
            color: kGrey_150Color,
          ),
        ),
      ],
    );
  }
}
