import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.api) : super(ProductDetailsInitial());
  final ApiConsumer api;

  getProductDetails({required int id}) async {
    emit(ProductDetailsLoading());

    try {
      Map<String, dynamic> response =
          await api.get('${EndPoint.productsDetails}+${id.toString()}');

      dataOfProductDetails = response['data'];
      log(dataOfProductDetails.toString());

      emit(
        ProductDetailsSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        ProductDetailsFailed(e.errorModel.message!),
      );
    }
  }
}

Map<String, dynamic> dataOfProductDetails = {};
