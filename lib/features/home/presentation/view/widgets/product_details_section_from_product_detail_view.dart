import 'package:flutter/material.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/section_of_he_name_and_description_from_product_details_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/section_of_the_color_and_quantity_from_product_details_view.dart';

class ProductDetailsSectionFromProductDetailView extends StatelessWidget {
  const ProductDetailsSectionFromProductDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, -3), // Top shadow
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionOfTheNameAndDescriptionFromProductDetailsView(),
            SectionOfTheColorAndQuantityFromProductDetailsView(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
