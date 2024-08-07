import 'package:flutter/material.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/forgot_password_confirmation_email_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/log_in_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/password_created_successfully_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/sign_up_email_verification.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/sign_up_view.dart';
import 'package:quick_mart/features/home/presentation/view/categories_view.dart';
import 'package:quick_mart/features/home/presentation/view/home_view.dart';
import 'package:quick_mart/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:quick_mart/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kLogInView = '/login';
  static const kForgetPasswordView = '/forgetPassword';
  static const kPasswordCreatedSuccessfullyView =
      '/passwordCreatedSuccessfully';
  static const kSignUpView = '/signup';
  static const kSignupEmailVerification = '/signupEmailVerification';
  static const kHomeView = '/home';
  static const kCategoriesView = '/categories';

  static Route<Object?> router(RouteSettings settings) {
    switch (settings.name) {
      case kSplash:
        return MaterialPageRoute(builder: (context) {
          return const SplashView(); //replace this Scaffold with a Splash Screen
        });
      case kOnBoarding:
        return MaterialPageRoute(builder: (context) {
          return const OnboardingView(); //replace this Scaffold with a on boarding Screen
        });

      case kLogInView:
        return MaterialPageRoute(builder: (context) {
          return const LogInView(); //replace this Scaffold with a login Screen
        });

      case kForgetPasswordView:
        return MaterialPageRoute(builder: (context) {
          return const ForgotPasswordConfirmationEmailView(); //replace this Scaffold with a login Screen
        });

      case kPasswordCreatedSuccessfullyView:
        return MaterialPageRoute(builder: (context) {
          return const PasswordCreatedSuccessfullyView(); //replace this Scaffold with a login Screen
        });

      case kSignUpView:
        return MaterialPageRoute(builder: (context) {
          return const SignUpView(); //replace this Scaffold with a login Screen
        });

      case kSignupEmailVerification:
        return MaterialPageRoute(builder: (context) {
          return const SignUpEmailVerificationView(); //replace this Scaffold with a login Screen
        });

      case kHomeView:
        return MaterialPageRoute(builder: (context) {
          return const HomeView(); //replace this Scaffold with a login Screen
        });

      case kCategoriesView:
        return MaterialPageRoute(builder: (context) {
          return const CategoriesView(); //replace this Scaffold with a login Screen
        });

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
