import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/home_cubit/home_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';
import 'package:quick_mart/features/wishlist/presentation/manage/wishlist_cubit/wishlist_cubit.dart';

class ProductCustomWishlist extends StatefulWidget {
  const ProductCustomWishlist({super.key, required this.index});

  final int index;

  @override
  State<ProductCustomWishlist> createState() => _ProductCustomWishlistState();
}

class _ProductCustomWishlistState extends State<ProductCustomWishlist> {
  bool isSelected = false;
  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.index == 20) {
            BlocProvider.of<WishlistCubit>(context)
                .addWishlist(dataOfProductDetails['id']);
            isSelected = !isSelected;
            CustomToast(
              context: context,
              fToast: fToast,
              image: Assets.toastSuccessIcon,
              title: 'The product has been added to your Wishlist ',
            ).showToast();
          } else {
            BlocProvider.of<WishlistCubit>(context)
                .addWishlist(dataOfHome[widget.index]['id']);
            isSelected = !isSelected;
            CustomToast(
              context: context,
              fToast: fToast,
              image: Assets.toastSuccessIcon,
              title: 'The product has been added to your Wishlist',
            ).showToast();
          }
        });
      },
      child: CircleAvatar(
        radius: 18,
        backgroundColor: kBlackColor,
        child: isSelected
            ? const Icon(Icons.favorite, color: kRedColor, size: 22)
            : const Icon(
                Icons.favorite_border,
                color: kWhiteColor,
                size: 22,
              ),
      ),
    );
  }
}
