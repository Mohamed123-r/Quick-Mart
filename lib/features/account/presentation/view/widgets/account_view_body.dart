import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/account_management_sectio_from_account_view.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/personal_information_section_from_account_view.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/support_and_information_section_from_accounnt_view.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          PersonalInformationSectionFromAccountView(),
          SizedBox(
            height: 24,
          ),
          SupportAndInformationSectionFromAccountView(),
          SizedBox(
            height: 24,
          ),
          AccountManagementSectionFromAccountView(),
        ],
      ),
    );
  }
}
