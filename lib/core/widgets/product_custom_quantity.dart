import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProductCustomQuantity extends StatefulWidget {
  const ProductCustomQuantity({super.key});

  @override
  State<ProductCustomQuantity> createState() => _ProductCustomQuantityState();
}

class _ProductCustomQuantityState extends State<ProductCustomQuantity> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kGrey_50Color,
          width: 1,
        ),
      ),
      child: Center(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                if (quantity > 0) {
                  setState(() {
                    quantity--;
                  });
                }
              },
              icon: const Icon(Icons.remove),
              color: quantity == 0 ? kGrey_50Color : kBlackColor,
            ),
            Expanded(
              child: Center(
                child: Text(
                  quantity.toString(),
                  style: Styles.body1Medium,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                if (quantity < 10) {
                  setState(() {
                    quantity++;
                  });
                }
              },
              icon: const Icon(Icons.add),
              color: quantity == 10 ? kGrey_50Color : kBlackColor,
            ),
          ],
        ),
      ),
    );
  }
}
