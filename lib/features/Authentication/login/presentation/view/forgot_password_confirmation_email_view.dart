import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/forgot_password_confirmation_email_view_body.dart';

class ForgotPasswordConfirmationEmailView extends StatelessWidget {
  const ForgotPasswordConfirmationEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context: context,
        isLarge: true,
        title: "Forgot Password",
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 0.5,
          ),
          SizedBox(height: 12),
          ForgotPasswordConfirmationEmailViewBody(),
        ],
      ),
    );
  }
}
