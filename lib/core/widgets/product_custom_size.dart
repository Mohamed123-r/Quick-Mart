import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProductCustomSize extends StatelessWidget {
  const ProductCustomSize(
      {super.key, this.size = "S", this.isSelected = false});

  final String size;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isSelected ? kBlackColor : Colors.transparent,
        borderRadius: BorderRadius.circular(1000),
        border: Border.all(
          color: kGrey_50Color,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          "S",
          style: Styles.overLineSemiBold.copyWith(
            color: isSelected ? kWhiteColor : kBlackColor,
          ),
        ),
      ),
    );
  }
}
