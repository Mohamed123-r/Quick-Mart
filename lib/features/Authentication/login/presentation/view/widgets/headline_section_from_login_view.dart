import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HeadlineSectionFromLoginView extends StatelessWidget {
  const HeadlineSectionFromLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Login",
          style: Styles.heading2Bold,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "Don’t have an account?",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  AppRouter.router(
                    const RouteSettings(name: AppRouter.kSignUpView),
                  ),
                );
              },
              child: Text(
                " Signup",
                style: Styles.body2Medium.copyWith(
                  color: kCyanColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
