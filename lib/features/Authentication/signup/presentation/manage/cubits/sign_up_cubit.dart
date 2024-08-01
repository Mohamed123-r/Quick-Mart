import "package:bloc/bloc.dart" show Cubit;
import 'package:flutter/material.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/api_keys.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/errors/exceptions.dart';
import 'package:quick_mart/features/authentication/signup/data/models/sign_up_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.api) : super(SignUpInitial());
  final ApiConsumer api;

  SignUpModel? signUpModel;

  GlobalKey<FormState> signUpFormKey = GlobalKey();
  TextEditingController signUpName = TextEditingController();
  TextEditingController signUpPhone = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();

  signUp() async {
    emit(SignUpLoading());
    try {
      final response = await api.post(EndPoint.signUp, data: {
        ApiKeys.name: signUpName.text,
        ApiKeys.phone: signUpPhone.text,
        ApiKeys.email: signUpEmail.text,
        ApiKeys.password: signUpPassword.text,
        ApiKeys.image: '',
      });
      if (response['status'] == true) {
        emit(SignUpSuccess());
        signUpModel = SignUpModel.fromJson(response);
        CacheHelper()
            .saveData(key: ApiKeys.email, value: signUpModel?.data?.email);
        CacheHelper()
            .saveData(key: ApiKeys.token, value: signUpModel?.data?.token);
        CacheHelper().saveData(key: ApiKeys.id, value: signUpModel?.data?.id);
      } else {
        emit(SignUpError(response['message']));
      }
    } on ServerException catch (e) {
      emit(
        SignUpError(
          e.errorModel.message!,
        ),
      );
    }
  }
}
