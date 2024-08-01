import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/dio_consumer.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/sign_up_view_body.dart';
import 'package:quick_mart/features/authentication/signup/presentation/manage/cubits/sign_up_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        DioConsumer(
          dio: Dio(),
        ),
      ),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: const LogoOfApp(),
        ),
        body: SignUpViewBody(),
      ),
    );
  }
}
