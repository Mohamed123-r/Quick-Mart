import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/button_from_password_created_successfully_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/headline_and_text_from_password_created_successfully_view.dart';

class PasswordCreatedSuccessfullyView extends StatelessWidget {
  const PasswordCreatedSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kCyan_50Color,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Image.asset(
                      Assets.passwordSuccessfully,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const HeadlineAndTextFromPasswordCreatedSuccessfullyView(),
                const SizedBox(
                  height: 16,
                ),
                const ButtonFromPasswordCreatedSuccessfullyView(),
              ],
            ),
          ),
        ));
  }
}
