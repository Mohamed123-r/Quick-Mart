import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

class ProductCustomColors extends StatelessWidget {
  const ProductCustomColors(
      {super.key, required this.color, required this.isSelected});

  final Color color;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: isSelected ? kBlueColor : color,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }
}
