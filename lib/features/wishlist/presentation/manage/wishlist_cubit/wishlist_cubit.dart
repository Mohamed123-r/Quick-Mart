import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

part 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this.api) : super(WishlistInitial());

  final ApiConsumer api;

  getWishlist() async {
    emit(WishlistLoading());

    try {
      Map<String, dynamic> response = await api.get(
        EndPoint.favorites,
      );

      for (int i = 0; i < response['data']['data'].length; i++) {
        dataOfWishlist.add(response['data']['data'][i]);
      }

      emit(
        WishlistSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        WishlistFailure(e.errorModel.message!),
      );
    }
  }

  addWishlist(int id) async {
    emit(WishlistLoading());
    try {
      await api.post(EndPoint.favorites, data: {
        "product_id": id,
      });
      emit(
        WishlistSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        WishlistFailure(e.errorModel.message!),
      );
    }
  }

  deleteWishlist(int id) async {
    emit(WishlistLoading());
    try {
      await api.delete(
        EndPoint.favorites + id.toString(),
      );
      for (int i = 0; i < dataOfWishlist.length; i++) {
        if (dataOfWishlist[i]['id'] == id) {
          dataOfWishlist.remove(dataOfWishlist[i]);
        }
      }
      emit(
        WishlistSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        WishlistFailure(e.errorModel.message!),
      );
    }
  }
}

List<Map<String, dynamic>> dataOfWishlist = [];
