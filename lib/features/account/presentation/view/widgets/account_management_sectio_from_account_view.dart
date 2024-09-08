import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/account_item_list.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/switch_form_account_item.dart';

class AccountManagementSectionFromAccountView extends StatelessWidget {
  const AccountManagementSectionFromAccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Account Management",
            style: Styles.captionSemiBold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        AccountItemList(
          title: 'Change Password',
          iconLeading: Assets.changePasswordIcon,
          onTap: () {},
        ),
        const SwitchFromAccountItem(),
      ],
    );
  }
}