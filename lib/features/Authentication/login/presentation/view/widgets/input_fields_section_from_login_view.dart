import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';
import 'package:quick_mart/core/widgets/custom_password_input_field.dart';

class InputFieldsSectionFromLoginView extends StatelessWidget {
  const InputFieldsSectionFromLoginView({
    super.key,
    required this.passwordController, required this.emailController,
  });

  final TextEditingController emailController;

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          hintText: 'Enter your Email',
          title: 'Email',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfEmail,
          controller: emailController,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomPasswordInputField(
          controller: passwordController,
          title: 'Password',
        ),
      ],
    );
  }
}
