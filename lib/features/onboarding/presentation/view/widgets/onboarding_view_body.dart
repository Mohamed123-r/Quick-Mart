import 'package:flutter/material.dart';
import 'package:quick_mart/features/onboarding/presentation/view/widgets/onboarding_content_section.dart';
import 'package:quick_mart/features/onboarding/presentation/view/widgets/onboarding_image_section.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
    this.theFirst = false,
    this.theLast,
    this.onPressedToBack,
    this.onPressedToSkip,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final bool? theFirst;
  final bool? theLast;
  final Function()? onPressedToBack;
  final Function()? onPressedToSkip;
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingImageSection(
          theFirst: theFirst,
          onPressedToBack: onPressedToBack,
          theLast: theLast,
          onPressedToSkip: onPressedToSkip,
          image: image,
        ),
        const SizedBox(
          height: 24,
        ),
        OnboardingContentSection(
          title: title,
          subTitle: subTitle,
        ),
      ],
    );
  }
}
