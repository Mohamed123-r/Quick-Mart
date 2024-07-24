import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/sign_up_email_verification_view_body.dart';

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
      body: const SignUpEmailVerificationViewBody(),
    );
  }
}
