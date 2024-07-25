import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: const LogoOfApp(),
      ),
      body: LogInViewBody(),
    );
  }
}
