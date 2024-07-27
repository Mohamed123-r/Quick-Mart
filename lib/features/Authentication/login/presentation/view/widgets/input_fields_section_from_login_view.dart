import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';
import 'package:quick_mart/core/widgets/custom_password_input_field.dart';

class InputFieldsSectionFromLoginView extends StatelessWidget {
  const InputFieldsSectionFromLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomInputField(
          hintText: 'Enter your Email',
          title: 'Email',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfEmail,
        ),
        SizedBox(
          height: 16,
        ),
        CustomPasswordInputField(
          title: 'Password',
        ),
      ],
    );
  }
}
