import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/button_from_email_verification_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/digits_section_from_verification_code.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/headline_section_from_verification_code.dart';

class SignUpEmailVerificationViewBody extends StatelessWidget {
  const SignUpEmailVerificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const HeadlineSectionFromVerificationCode(),
          const SizedBox(
            height: 16,
          ),
          const DigitsSectionFromVerificationCode(),
          TextButton(
            onPressed: () {},
            child: Text(
              'Resend Code',
              style: Styles.body2Medium.copyWith(
                color: kCyanColor,
              ),
            ),
          ),
          const ButtonFromEmailVerificationView(),
        ],
      ),
    );
  }
}
