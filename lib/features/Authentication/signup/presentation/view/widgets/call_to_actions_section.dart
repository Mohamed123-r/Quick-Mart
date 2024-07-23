import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class CallToActionsSection extends StatelessWidget {
  const CallToActionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryBottom(
          title: 'Create Account',
          onPressed: () {},
        ),
        const SizedBox(
          height: 16,
        ),
        SecondaryBottom(
          title: 'SignUp with Google',
          onPressed: () {},
        ),
      ],
    );
  }
}
