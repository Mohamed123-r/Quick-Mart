import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
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
                child: CachedNetworkImage(
                  height: 150,
                  imageUrl: image,
                  errorWidget: (_, __, ___) => const Icon(
                    Icons.error,
                  ),
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
