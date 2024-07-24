import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomDigits extends StatefulWidget {
  const CustomDigits({
    super.key,
  });

  @override
  State<CustomDigits> createState() => _CustomDigitsState();
}

class _CustomDigitsState extends State<CustomDigits> {
  Color color = kGrey_50Color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: TextFormField(
          keyboardType: null,
          maxLines: 1,
          cursorColor: kGreenColor,
          onSaved: (value) {},
          onChanged: (e) {
            if (e.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }

            if (e.length == 1) {
              color = kCyanColor;
            } else {
              color = kRedColor;
            }
            setState(() {});
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kCyanColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: color),
            ),
          ),
          textAlign: TextAlign.center,
          style: Styles.button1SemiBold),
    );
  }
}
