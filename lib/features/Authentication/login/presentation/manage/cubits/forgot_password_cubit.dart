import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/errors/exceptions.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this.api) : super(SendCodeInitial());

  final ApiConsumer api;

  TextEditingController sendNumEmail = TextEditingController();
  List<TextEditingController> num = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  void sendCode() async {
    emit(SendCodeLoading());

    try {
      await api.post(
          "http://ahmedsalah.runasp.net/api/Account/SendNumForEmail?sendEmail=${sendNumEmail.text}");

      emit(SendCodeSuccess());
    } on ServerException {
      emit(SendCodeError());
    }
  }

  confirmNum() async {
    emit(ConfirmNumLoading());

    var response = await api.get(
        "http://ahmedsalah.runasp.net/api/Account/ConfirmNum?Num=${num[0].text}${num[1].text}${num[2].text}${num[3].text}${num[4].text}${num[5].text}");

    if (response['statusCode'] == 200) {
      emit(ConfirmNumSuccess());
    } else {
      emit(ConfirmNumError());
    }
  }
}
