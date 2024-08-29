import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/wishlist/presentation/manage/wishlist_cubit/wishlist_cubit.dart';
import 'package:quick_mart/features/wishlist/presentation/view/widgets/wishlist_empty_body.dart';
import 'package:quick_mart/features/wishlist/presentation/view/widgets/wishlist_view_body.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WishlistCubit>(context).getWishlist();
    dataOfWishlist = [];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: customAppBar(
            context: context,
            isLarge: true,
            title: 'Wishlist',
          ),
          body: state is WishlistLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: kCyanColor,
                  ),
                )
              : dataOfWishlist.isEmpty
                  ? const WishlistEmptyBody()
                  : const WishlistViewBody(),
        );
      },
    );
  }
}
