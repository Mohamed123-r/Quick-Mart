import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_quantity.dart';

class ProductCustomProductCart extends StatelessWidget {
  const ProductCustomProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.productTest,
          width: 130,
          height: 130,
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
                  const Expanded(
                    child: Text(
                      "Product Name mind mdinfon asokmcoisn nmsikocni smondoi fddr fd dc",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.body2Medium,
                    ),
                  ),
                  SizedBox(
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
              const Text(
                "\$ 19.99",
                style: Styles.captionSemiBold,
              ),
              Text(
                "\$ 19.99",
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
                  SvgPicture.asset(
                    Assets.trashIcon,
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
