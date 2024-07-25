import 'package:flutter/material.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/call_to_action_section_from_login_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/forgot_password_section_from_login_views.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/headline_section_from_login_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/input_fields_section_from_login_view.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 24,
            ),
            HeadlineSectionFromLoginView(),
            SizedBox(
              height: 32,
            ),
            InputFieldsSectionFromLoginView(),
            SizedBox(
              height: 24,
            ),
            ForgotPasswordSectionFromLoginViews(),
            SizedBox(
              height: 24,
            ),
            CallToActionSectionFromLoginView(),
          ],
        ),
      ),
    );
  }
}
