part of 'category_details_cubit.dart';

@immutable
sealed class CategoryDetailsState {}

final class CategoryDetailsInitial extends CategoryDetailsState {}

final class CategoryDetailsLoading extends CategoryDetailsState {}

final class CategoryDetailsSuccess extends CategoryDetailsState {}

final class CategoryDetailsFailed extends CategoryDetailsState {
  final String error;

  CategoryDetailsFailed(this.error);
}
