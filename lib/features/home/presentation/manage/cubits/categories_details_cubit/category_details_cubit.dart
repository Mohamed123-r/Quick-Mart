import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/api/api_consumer.dart';
import 'package:quick_mart/core/api/end_point.dart';
import 'package:quick_mart/core/errors/exceptions.dart';

part 'category_details_state.dart';

class CategoryDetailsCubit extends Cubit<CategoryDetailsState> {
  CategoryDetailsCubit(this.api) : super(CategoryDetailsInitial());

  final ApiConsumer api;

  getCategoriesDetails({required int id}) async {
    emit(CategoryDetailsLoading());

    try {
      Map<String, dynamic> response =
          await api.get('${EndPoint.categoriesDetails}+${id.toString()}');

      for (int i = 0; i < response['data']['data'].length; i++) {
        dataOfCategoriesDetails.add(response['data']['data'][i]);
      }

      emit(
        CategoryDetailsSuccess(),
      );
    } on ServerException catch (e) {
      emit(
        CategoryDetailsFailed(e.errorModel.message!),
      );
    }
  }
}

List<Map<String, dynamic>> dataOfCategoriesDetails = [];
