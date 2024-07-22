import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/utils/assets.dart';

class LogoOfApp extends StatelessWidget {
  const LogoOfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.logo,
    );
  }
}
