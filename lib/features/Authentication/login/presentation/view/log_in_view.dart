import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/dio_consumer.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/log_in_view_body.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/log_in_cubit.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(
        DioConsumer(
          dio: Dio(),
        ),
      ),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          surfaceTintColor: kWhiteColor,
          title: const LogoOfApp(),
        ),
        body: LogInViewBody(),
      ),
    );
  }
}
