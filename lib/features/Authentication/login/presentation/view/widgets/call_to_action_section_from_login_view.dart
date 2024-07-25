import 'package:flutter/cupertino.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class CallToActionSectionFromLoginView extends StatelessWidget {
  const CallToActionSectionFromLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryBottom(
          title: 'Login',
          onPressed: () {},
        ),
        const SizedBox(
          height: 16,
        ),
        SecondaryBottom(
          title: 'Login with Google',
          onPressed: () {},
        ),
      ],
    );
  }
}
