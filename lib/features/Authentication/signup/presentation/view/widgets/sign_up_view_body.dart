import 'package:flutter/material.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/call_to_actions_section_from_sign_up_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/headline_section_from_sign_up_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/input_fields_section_from_sign_up_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadlineSectionFromSignUpView(),
            SizedBox(
              height: 32,
            ),
            InputFieldsSectionFromSignUpView(),
            SizedBox(
              height: 24,
            ),
            CallToActionsSectionFromSignUpView(),
          ],
        ),
      ),
    );
  }
}
