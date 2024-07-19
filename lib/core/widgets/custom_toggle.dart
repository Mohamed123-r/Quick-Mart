import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (value) {
        setState(() {
          this.value = value;
        });
      },
      inactiveThumbColor: kWhiteColor,
      inactiveTrackColor: kGrey_100Color,
      activeColor: kWhiteColor,
      activeTrackColor: kGreenColor,
    );
  }
}
