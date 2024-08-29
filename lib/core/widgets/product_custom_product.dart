import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/function/random_list.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_colors.dart';
import 'package:quick_mart/core/widgets/product_custom_wishlist.dart';

class ProductCustomProduct extends StatelessWidget {
  const ProductCustomProduct(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.oldPrice,
      required this.index,
      required this.onTapGetProductDetails});

  final String image;

  final String title;

  final num price;

  final num oldPrice;

  final int index;
  final Function() onTapGetProductDetails;

  static final List<Widget> answerdList = [
    const ProductCustomColors(color: kBlackColor, isSelected: false),
    const ProductCustomColors(color: kGrey_150Color, isSelected: false),
    const ProductCustomColors(color: kGrey_100Color, isSelected: false),
    const ProductCustomColors(color: kGrey_50Color, isSelected: false),
    const ProductCustomColors(color: kBrownColor, isSelected: false),
    const ProductCustomColors(color: kMerigoldColor, isSelected: false),
    const ProductCustomColors(color: kOrangeColor, isSelected: false),
    const ProductCustomColors(color: kYellowColor, isSelected: false),
    const ProductCustomColors(color: kCyan_50Color, isSelected: false),
    const ProductCustomColors(color: kBlueColor, isSelected: false),
    const ProductCustomColors(color: kRedColor, isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapGetProductDetails,
      child: Column(
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
            Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                child: ProductCustomWishlist(
                  index: index,
                ),
              ),
            ),
          ]),
          const SizedBox(height: 8),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(left: 32, child: answerdList.randomItem()),
              Positioned(left: 16, child: answerdList.randomItem()),
              answerdList.randomItem(),
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
            "\$ ${price.toString()}",
            style: Styles.captionSemiBold,
          ),
          Text(
            "\$ ${oldPrice.toString()}",
            style: Styles.overLineRegular.copyWith(
              color: kGrey_150Color,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
