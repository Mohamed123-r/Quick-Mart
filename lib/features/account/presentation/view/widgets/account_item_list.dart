import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class AccountItemList extends StatelessWidget {
  const AccountItemList(
      {super.key,
      required this.title,
      required this.iconLeading,
      required this.onTap,
      this.trailing});

  final String title;
  final String iconLeading;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: ListTile(
            title: Text(
              title,
              style: Styles.body2Medium.copyWith(color: kGrey_150Color),
            ),
            leading: SvgPicture.asset(iconLeading),
            trailing: trailing ??
                const Icon(
                  Icons.chevron_right,
                  color: kGrey_150Color,
                ),
          ),
        ),
        const Divider(
          height: 0,
          color: kGrey_50Color,
        ),
      ],
    );
  }
}
