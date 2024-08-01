import "package:bloc/bloc.dart" show Cubit;
import 'package:flutter/material.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/api_keys.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/errors/exceptions.dart';
import 'package:quick_mart/features/authentication/login/data/models/log_in_model.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.api) : super(LogInInitial());
  final ApiConsumer api;

  LogInModel? logInModel;

  GlobalKey<FormState> logInFormKey = GlobalKey();
  TextEditingController logInEmail = TextEditingController();
  TextEditingController logInPassword = TextEditingController();

  logIn() async {
    emit(LogInLoading());
    try {
      final response = await api.post(EndPoint.login, data: {
        ApiKeys.email: logInEmail.text,
        ApiKeys.password: logInPassword.text,
      });
      if (response['status'] == true) {
        emit(LogInSuccess());
        logInModel = LogInModel.fromJson(response);
        CacheHelper()
            .saveData(key: ApiKeys.email, value: logInModel?.data?.email);
        CacheHelper()
            .saveData(key: ApiKeys.token, value: logInModel?.data?.token);
        CacheHelper().saveData(key: ApiKeys.id, value: logInModel?.data?.id);
      } else {
        emit(LogInError(response['message']));
      }
    } on ServerException catch (e) {
      emit(
        LogInError(
          e.errorModel.message!,
        ),
      );
    }
  }
}
