import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';

class CustomPasswordInputField extends StatefulWidget {
  const CustomPasswordInputField({super.key, required this.title});

  final String title;

  @override
  State<CustomPasswordInputField> createState() =>
      _CustomPasswordInputFieldState();
}

class _CustomPasswordInputFieldState extends State<CustomPasswordInputField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      hintText: 'Enter your Password',
      title: widget.title,
      keyboardType: TextInputType.emailAddress,
      obscureText: obscureText,
      suffixIcon: IconButton(
        icon: obscureText
            ? const Icon(Icons.remove_red_eye_outlined)
            : const Icon(Icons.visibility_off_outlined),
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
      ),
      validator: validatorOfPassword,
    );
  }
}
