import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/confirmation_email_widget.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/email_verification_widget.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/new_password_widget.dart';

class ForgotPasswordConfirmationEmailViewBody extends StatefulWidget {
  const ForgotPasswordConfirmationEmailViewBody({super.key});

  @override
  State<ForgotPasswordConfirmationEmailViewBody> createState() =>
      _ForgotPasswordConfirmationEmailViewBodyState();
}

class _ForgotPasswordConfirmationEmailViewBodyState
    extends State<ForgotPasswordConfirmationEmailViewBody> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          if (selectedIndex == 1) const ConfirmationEmailWidget(),
          if (selectedIndex == 2) const EmailVerificationWidget(),
          if (selectedIndex == 3) const NewPasswordWidget(),
          const SizedBox(
            height: 24,
          ),
          PrimaryBottom(
            title: selectedIndex == 1
                ? 'Send'
                : selectedIndex == 2
                    ? 'Proceed'
                    : 'Save',
            onPressed: () {
              setState(() {
                selectedIndex += 1;
                if (selectedIndex == 4) {
                  Navigator.pushReplacement(
                    context,
                    AppRouter.router(
                      const RouteSettings(
                          name: AppRouter.kPasswordCreatedSuccessfullyView),
                    ),
                  );
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
