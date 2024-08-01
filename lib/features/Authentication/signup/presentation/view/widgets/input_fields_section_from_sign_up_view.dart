import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';
import 'package:quick_mart/core/widgets/custom_password_input_field.dart';

class InputFieldsSectionFromSignUpView extends StatelessWidget {
  const InputFieldsSectionFromSignUpView({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          controller: nameController,
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
        CustomInputField(
          controller: phoneController,
          hintText: 'Enter your Phone Number',
          title: 'Phone Number',
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter the phone number';
            }
            if (value.length != 11) {
              return 'Please enter a valid phone number';
            }
            if (!value.startsWith('01')) {
              return 'Please enter a valid phone number';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomInputField(
          controller: emailController,
          hintText: 'Enter your Email',
          title: 'Email',
          keyboardType: TextInputType.emailAddress,
          validator: validatorOfEmail,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomPasswordInputField(
          title: 'Password',
          controller: passwordController,
        ),
      ],
    );
  }
}
