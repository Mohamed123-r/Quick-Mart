import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/image_section_from_product_detail_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_details_section_from_product_detail_view.dart';

class ProductDetailViewBody extends StatelessWidget {
  const ProductDetailViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          ImageSectionFromProductDetailView(
            lengthItem: 5,
            items: [
              Image.asset(
                Assets.productTest,
                fit: BoxFit.fill,
              ),
              Image.asset(
                Assets.productTest,
                fit: BoxFit.fill,
              ),
              Image.asset(
                Assets.productTest,
                fit: BoxFit.fill,
              ),
              Image.asset(
                Assets.productTest,
                fit: BoxFit.fill,
              ),
              Image.asset(
                Assets.productTest,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const ProductDetailsSectionFromProductDetailView(),
        ],
      ),
    );
  }
}
