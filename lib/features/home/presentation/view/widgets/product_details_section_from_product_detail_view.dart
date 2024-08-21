import 'package:flutter/material.dart';
import 'package:quick_mart/core/function/random_list.dart';
import 'package:quick_mart/core/widgets/custom_badge.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/section_of_he_name_and_description_from_product_details_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/section_of_the_color_and_quantity_from_product_details_view.dart';

class ProductDetailsSectionFromProductDetailView extends StatelessWidget {
  ProductDetailsSectionFromProductDetailView({
    super.key,
  });

  final List<Widget> answerdList = [
    const TopRated(),
    const SaleOff(),
    const PreOrder(),
    const FreeShipping(),
    const LimitedStock(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 17,
            offset: const Offset(0, -13), // Top shadow
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                answerdList.randomItem(),
                const SizedBox(
                  width: 8,
                ),
                answerdList.randomItem(),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const SectionOfTheNameAndDescriptionFromProductDetailsView(),
            SectionOfTheColorAndQuantityFromProductDetailsView(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
