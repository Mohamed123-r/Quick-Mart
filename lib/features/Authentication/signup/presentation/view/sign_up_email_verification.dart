import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class SignUpEmailVerificationView extends StatelessWidget {
  const SignUpEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(
          isLarge: true,
          title: "Verification Code",
          context: context,
        ),
        body: const Column(
          children: [Divider()],
        ));
  }
}
