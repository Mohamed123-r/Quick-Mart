import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/features/search/presentation/view/widgets/check_box_item.dart';

class BottomSheetFromFilter extends StatelessWidget {
  const BottomSheetFromFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Filter",
            style: Styles.body1Medium,
          ),
          const CheckBoxItem(
            title: 'Price(Low to High)',
          ),
          const CheckBoxItem(
            title: 'Price(High to Low)',
          ),
          const CheckBoxItem(
            title: 'A-Z',
          ),
          const CheckBoxItem(
            title: 'Z-A',
          ),
          SizedBox(
            height: 32.0,
          ),
          PrimaryBottom(title: 'Apply', onPressed: () {}),
        ],
      ),
    );
  }
}
