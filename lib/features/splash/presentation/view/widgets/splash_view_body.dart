import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/sign_up_view.dart';
import 'package:quick_mart/features/home/presentation/view/home_view.dart';
import 'package:quick_mart/features/onboarding/presentation/view/onboarding_view.dart';

class SplashViewBody extends StatelessWidget {
  SplashViewBody({super.key});

  final bool onBoarding = CacheHelper().getData(key: "onBoarding") ?? false;
  final bool logInSuccess = CacheHelper().getData(key: "logInSuccess") ?? false;

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: MediaQuery.of(context).size.width * 0.5,
      logo: Image.asset(
        Assets.splashImage,
        width: 260,
        height: 75,
      ),
      showLoader: false,
      loadingText: Text(
        onBoarding
            ? "Welcome To Quick Mart"
            : logInSuccess
                ? "Welcome Back"
                : "Welcome",
        style: Styles.button2SemiBold,
      ),
      navigator: onBoarding
          ? logInSuccess
              ? const HomeView()
              : const SignUpView()
          : const OnboardingView(),
      durationInSeconds: 3,
    );
  }
}
