import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';

class InputFieldsSectionFromSignUpView extends StatelessWidget {
  const InputFieldsSectionFromSignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          hintText: 'Enter your Name',
          title: 'Full Name',
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter the name';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomInputField(
          hintText: 'Enter your Email',
          title: 'Email',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfEmail,
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomInputField(
          hintText: 'Enter your Password',
          title: 'Password',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfPassword,
        ),
      ],
    );
  }
}
