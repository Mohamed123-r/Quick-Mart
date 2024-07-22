import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PrimaryBottom extends StatelessWidget {
  const PrimaryBottom(
      {super.key, required this.title, required this.onPressed});

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      minWidth: double.infinity,
      color: kBlackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Styles.button2SemiBold.copyWith(
          color: kWhiteColor,
        ),
      ),
    );
  }
}

class SecondaryBottom extends StatelessWidget {
  const SecondaryBottom(
      {super.key, required this.title, required this.onPressed});

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        elevation: 0,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: kGrey_50Color,
          ),
        ),
        onPressed: onPressed,
        child: Text(title, style: Styles.button2SemiBold),
      ),
    );
  }
}
