import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';

class OnboardingImageSection extends StatelessWidget {
  const OnboardingImageSection({
    super.key,
    required this.theFirst,
    required this.onPressedToBack,
    required this.theLast,
    required this.onPressedToSkip,
    required this.image,
  });

  final bool? theFirst;
  final Function()? onPressedToBack;
  final bool? theLast;
  final Function()? onPressedToSkip;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kCyan_50Color,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  theFirst != true
                      ? IconButton(
                          onPressed: onPressedToBack,
                          icon: const Icon(
                            Icons.arrow_back_outlined,
                          ),
                        )
                      : const LogoOfApp(),
                  theLast != true
                      ? TextButton(
                          onPressed: onPressedToSkip,
                          child: Text(
                            'Skip for now',
                            style: Styles.body2Medium.copyWith(
                              color: kCyanColor,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              image,
              height: 300,
              width: 300,
              fit: BoxFit.fill,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
