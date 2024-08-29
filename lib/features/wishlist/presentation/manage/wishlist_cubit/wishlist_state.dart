part of 'wishlist_cubit.dart';

@immutable
sealed class WishlistState {}

final class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistSuccess extends WishlistState {}

class WishlistFailure extends WishlistState {
  final String error;

  WishlistFailure(this.error);
}
