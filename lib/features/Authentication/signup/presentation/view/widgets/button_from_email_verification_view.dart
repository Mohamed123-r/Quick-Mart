import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class ButtonFromEmailVerificationView extends StatelessWidget {
  const ButtonFromEmailVerificationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        PrimaryBottom(
          title: 'Proceed',
          onPressed: () {},
        ),
      ],
    );
  }
}
