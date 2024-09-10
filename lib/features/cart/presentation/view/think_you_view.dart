import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

import 'widgets/think_you_view_body.dart';

class ThinkYouView extends StatelessWidget {
  const ThinkYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: const ThinkYouViewBody(),
    );
  }
}
