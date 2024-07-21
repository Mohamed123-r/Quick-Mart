import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomDigits extends StatelessWidget {
  const CustomDigits({
    super.key,
  });

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
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kCyanColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kGrey_50Color),
            ),
          ),
          textAlign: TextAlign.center,
          style: Styles.button1SemiBold),
    );
  }
}
