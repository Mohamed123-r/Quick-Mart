import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

class ProductCustomWishlist extends StatefulWidget {
  const ProductCustomWishlist({super.key});

  @override
  State<ProductCustomWishlist> createState() => _ProductCustomWishlistState();
}

class _ProductCustomWishlistState extends State<ProductCustomWishlist> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
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
