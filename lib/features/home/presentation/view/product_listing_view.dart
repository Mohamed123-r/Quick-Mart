import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_listing_view_body.dart';

class ProductListingView extends StatelessWidget {
  const ProductListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context: context,
        title: 'Product Listing',
        isLarge: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.filterIcon,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Assets.searchIcon,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: const ProductListingViewBody(),
    );
  }
}
