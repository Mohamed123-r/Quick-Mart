import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/features/home/data/Home_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.api) : super(HomeInitial());

  final ApiConsumer api;
  HomeModel? homeModel;

  getHomeData() async {
    emit(HomeLoading());

    var response = await api.get(EndPoint.home);

    homeModel = HomeModel.fromJson(response);
    print(homeModel!.data!.banners![0].image);
  }
}
