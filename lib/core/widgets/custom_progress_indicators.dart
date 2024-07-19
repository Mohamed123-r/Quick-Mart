import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

class CustomProgressIndicators extends StatelessWidget {
  const CustomProgressIndicators({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 18 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? kCyanColor : kGrey_100Color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
