import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.api) : super(CategoriesInitial());
  final ApiConsumer api;

  Map<String, dynamic> data = {};
  List? categoriesNames;

  getCategories() async {
    emit(CategoriesLoading());

    try {
      Map<String, dynamic> response = await api.get(EndPoint.categories);
      log(response.toString());

      for (int i = 0; i < response['data']['data'].length; i++) {
        data.addAll(response['data']['data'][i]);
        categoriesNames!.add(response['data']['data'][i]['name']);
      }
      log(data.toString());
      log(categoriesNames.toString());
    } on ServerException catch (e) {
      emit(
        CategoriesFailed(e.errorModel.message!),
      );
    }
  }
}
