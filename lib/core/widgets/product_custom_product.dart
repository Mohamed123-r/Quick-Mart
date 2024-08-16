import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_colors.dart';
import 'package:quick_mart/core/widgets/product_custom_wishlist.dart';

class ProductCustomProduct extends StatelessWidget {
  const ProductCustomProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.oldPrice});

  final String image;

  final String title;

  final num price;

  final num oldPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Image.network(
                image,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: ProductCustomWishlist(),
          ),
        ]),
        const SizedBox(height: 8),
        const Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 32,
              child: ProductCustomColors(
                color: kRedColor,
                isSelected: false,
              ),
            ),
            Positioned(
              left: 16,
              child: ProductCustomColors(
                color: kCyanColor,
                isSelected: false,
              ),
            ),
            ProductCustomColors(
              color: kBlackColor,
              isSelected: true,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.body2Medium,
        ),
        Text(
          price.toString(),
          style: Styles.captionSemiBold,
        ),
        Text(
          oldPrice.toString(),
          style: Styles.overLineRegular.copyWith(
            color: kGrey_150Color,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
