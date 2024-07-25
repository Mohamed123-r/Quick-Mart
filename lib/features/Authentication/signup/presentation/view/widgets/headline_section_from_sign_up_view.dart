import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';

class HeadlineSectionFromSignUpView extends StatelessWidget {
  const HeadlineSectionFromSignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "SignUp",
          style: Styles.heading2Bold,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "Already have an account?",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  AppRouter.router(
                    const RouteSettings(name: AppRouter.kLogInView),
                  ),
                );
              },
              child: Text(
                " Login",
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
