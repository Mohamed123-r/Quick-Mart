import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_quantity.dart';

class ProductCustomProductCart extends StatelessWidget {
  const ProductCustomProductCart({
    super.key,
    this.isWishlist = false,
    this.isLoading = false,
    this.onTapGetProductDetails,
    required this.image,
    required this.title,
    required this.price,
    required this.oldPrice,
  });

  final bool isWishlist;
  final bool isLoading;
  final Function()? onTapGetProductDetails;
  final String image;

  final String title;

  final num price;

  final num oldPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          width: 130,
          height: 130,
          imageUrl: image,
          errorWidget: (_, __, ___) => const Icon(
            Icons.error,
          ),
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.body2Medium,
                    ),
                  ),
                  isWishlist
                      ? const SizedBox()
                      : SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                            activeColor: kCyanColor,
                          ),
                        ),
                ],
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
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductCustomQuantity(),
                  isLoading
                      ? const Icon(Icons.restore_from_trash)
                      : GestureDetector(
                          onTap: onTapGetProductDetails,
                          child: SvgPicture.asset(
                            Assets.trashIcon,
                          ),
                        ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
