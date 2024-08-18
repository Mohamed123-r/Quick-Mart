import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({super.key, required this.title});

  final String title;

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  late bool? checkedValue = false;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.4,
                child: Checkbox(
                  value: checkedValue,
                  onChanged: (value) {
                    textColor = Colors.black;
                    setState(() {});
                    checkedValue == false
                        ? checkedValue = true
                        : checkedValue = false;
                    setState(() {});
                  },
                  activeColor: kBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(widget.title, style: Styles.body2Medium),
            ],
          ),
        ),
        const Divider(
          height: 0.5,
          color: kGrey_50Color,
        ),
      ],
    );
  }
}
