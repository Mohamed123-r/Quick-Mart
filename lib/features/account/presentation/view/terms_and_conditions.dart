import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/terms_and_conditions_view_body.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context: context,
        title: 'Terms & Conditions',
        isLarge: true,
      ),
      body: TermsAndConditionsViewBody(),
    );
  }
}
