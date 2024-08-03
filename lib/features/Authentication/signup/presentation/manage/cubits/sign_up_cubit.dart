import "package:bloc/bloc.dart" show Cubit;
import 'package:flutter/material.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/api_keys.dart';
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
  TextEditingController signUpPasswordConfirm = TextEditingController();

  signUp() async {
    emit(SignUpLoading());
    try {
      final response = await api
          .post('http://ahmedsalah.runasp.net/api/Account/Register', data: {
        ApiKeys.username: signUpName.text,
        ApiKeys.phoneNumber: signUpPhone.text,
        ApiKeys.email: signUpEmail.text,
        ApiKeys.password: signUpPassword.text,
        ApiKeys.confirmPassword: signUpPassword.text
      });
      if (response['statusCode'] == 200) {
        emit(SignUpSuccess());
        signUpModel = SignUpModel.fromJson(response);
        CacheHelper()
            .saveData(key: 'signUpEmail', value: signUpModel?.data?.email);
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
