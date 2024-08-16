import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';
import 'package:quick_mart/features/home/data/home_model/home_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());

  final ApiConsumer api;
  HomeModel? homeModel;

  getHomeData() async {
    emit(HomeLoading());

    try {
      Map<String, dynamic> response = await api.get(EndPoint.home);

      for (int i = 0; i < response['data']['products'].length; i++) {
        dataOfHome.add(response['data']['products'][i]);
      }
      emit(
        HomeSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        HomeFailed(error: e.errorModel.message!),
      );
    }
  }
}

List<Map<String, dynamic>> dataOfHome = [];