import 'package:flutter/material.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kLogInView = '/login';
  static const kForgetPasswordView = '/forgetPassword';
  static const kResetPasswordView = '/resetPassword';
  static const kCongratulationView = '/congratulation';
  static const kSignUpView = '/signup';
  static const kHomeView = '/home';

  static Route<Object?> router(RouteSettings settings) {
    switch (settings.name) {

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("AppStrings.notFound"),
            ),
          );
        });
    }
  }
}
