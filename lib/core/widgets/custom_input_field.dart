import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.obscureText = false,
      this.validator,
      this.controller,
      this.keyboardType,
      required this.title});

  final String title;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: Styles.body2Medium,
            ),
            Text(
              ' *',
              style: Styles.body2Medium.copyWith(
                color: kRedColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          obscureText: obscureText,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          keyboardType: keyboardType,
          cursorColor: kCyanColor,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kGrey_50Color,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kGrey_50Color,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kCyanColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kRedColor,
              ),
            ),
            hintText: hintText,
            hintStyle: Styles.captionRegular.copyWith(
              color: kGrey_100Color,
            ),
            filled: true,
            fillColor: kWhiteColor,
          ),
        ),
      ],
    );
  }
}
