import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class CallToActionsSectionFromSignUpView extends StatelessWidget {
  const CallToActionsSectionFromSignUpView({
    super.key,
    required this.primaryBottom,
    required this.secondaryBottom,
    this.isLoading = true,
  });

  final Function() primaryBottom;
  final Function() secondaryBottom;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryBottom(
          isLoading: isLoading,
          title: 'Create Account',
          onPressed: primaryBottom,
        ),
        const SizedBox(
          height: 16,
        ),
        SecondaryBottom(
          title: 'SignUp with Google',
          onPressed: secondaryBottom,
        ),
      ],
    );
  }
}
