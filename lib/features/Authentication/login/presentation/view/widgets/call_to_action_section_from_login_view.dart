import 'package:flutter/cupertino.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class CallToActionSectionFromLoginView extends StatelessWidget {
  const CallToActionSectionFromLoginView({
    super.key,
    required this.isLoading,
    required this.primaryBottom,
    required this.secondaryBottom,
  });

  final bool isLoading;
  final Function() primaryBottom;
  final Function() secondaryBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryBottom(
          isLoading: isLoading,
          title: 'Login',
          onPressed: primaryBottom,
        ),
        const SizedBox(
          height: 16,
        ),
        SecondaryBottom(
          title: 'Login with Google',
          onPressed: secondaryBottom,
        ),
      ],
    );
  }
}
