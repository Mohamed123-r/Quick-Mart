import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ForgotPasswordSectionFromLoginViews extends StatelessWidget {
  const ForgotPasswordSectionFromLoginViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          AppRouter.router(
            const RouteSettings(name: AppRouter.kForgetPasswordView),
          ),
        );
      },
      child: Text(
        "Forgot Password?",
        style: Styles.body2Medium.copyWith(
          color: kCyanColor,
        ),
      ),
    );
  }
}
