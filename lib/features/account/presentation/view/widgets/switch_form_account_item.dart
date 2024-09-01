import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/account_item_list.dart';

class SwitchFromAccountItem extends StatefulWidget {
  const SwitchFromAccountItem({
    super.key,
  });

  @override
  State<SwitchFromAccountItem> createState() => _SwitchFromAccountItemState();
}

class _SwitchFromAccountItemState extends State<SwitchFromAccountItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return AccountItemList(
      title: 'Dark Theme',
      iconLeading: Assets.darkThemeIcon,
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      trailing: Switch(
        value: isSelected,
        onChanged: (value) {
          setState(() {
            isSelected = value;
          });
        },
        inactiveThumbColor: kWhiteColor,
        inactiveTrackColor: kGrey_150Color,
        activeColor: kWhiteColor,
        activeTrackColor: kGreenColor,
      ),
    );
  }
}
