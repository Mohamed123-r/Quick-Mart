import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.api) : super(CartInitial());

  final ApiConsumer api;

  getCart() async {
    emit(CartLoading());

    try {
      Map<String, dynamic> response = await api.get(
        EndPoint.cart,
      );

      for (int i = 0; i < response['data']['cart_items'].length; i++) {
        dataOfCart.add(response['data']['cart_items'][i]);
      }

      emit(
        CartSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        CartFailure(e.errorModel.message!),
      );
    }
  }

  deleteCart(int id) async {
    emit(CartLoading());
    try {
      await api.delete(
        EndPoint.detailCart + id.toString(),
      );
      for (int i = 0; i < dataOfCart.length; i++) {
        if (dataOfCart[i]['id'] == id) {
          dataOfCart.remove(dataOfCart[i]);
        }
      }
      emit(
        CartSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        CartFailure(e.errorModel.message!),
      );
    }
  }
}

List<Map<String, dynamic>> dataOfCart = [];
