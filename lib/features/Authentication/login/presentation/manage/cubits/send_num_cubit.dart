import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

import 'send_num_state.dart';

class SendCodeCubit extends Cubit<SendCodeState> {
  SendCodeCubit(this.api) : super(SendCodeInitial());

  final ApiConsumer api;

  TextEditingController sendNumEmail = TextEditingController();

  void sendCode() async {
    emit(SendCodeLoading());

    try {
      var response = await api.post(
          "http://ahmedsalah.runasp.net/api/Account/SendNumForEmail?sendEmail=${sendNumEmail.text}");

      emit(SendCodeSuccess());
    } on ServerException catch (e) {
      emit(SendCodeError());
    }
  }
}
