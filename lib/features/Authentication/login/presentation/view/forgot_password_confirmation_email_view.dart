import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/dio_consumer.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/forgot_password_confirmation_email_view_body.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/forgot_password_cubit.dart';

class ForgotPasswordConfirmationEmailView extends StatelessWidget {
  const ForgotPasswordConfirmationEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(
        DioConsumer(
          dio: Dio(),
        ),
      ),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: customAppBar(
          context: context,
          isLarge: true,
          title: "Forgot Password",
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                height: 0.5,
              ),
              SingleChildScrollView(
                  child: ForgotPasswordConfirmationEmailViewBody()),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
