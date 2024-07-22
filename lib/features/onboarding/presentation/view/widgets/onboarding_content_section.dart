import 'package:flutter/cupertino.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class OnboardingContentSection extends StatelessWidget {
  const OnboardingContentSection({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.heading2Bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          subTitle,
          style: Styles.body2Regular.copyWith(
            color: kGrey_150Color,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
