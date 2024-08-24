import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';
import 'package:readmore/readmore.dart';

class SectionOfTheNameAndDescriptionFromProductDetailsView
    extends StatelessWidget {
  const SectionOfTheNameAndDescriptionFromProductDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    dataOfProductDetails['name'] ?? '',
                    style: Styles.heading3Bold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Column(
                  children: [
                    Text('\$ ${dataOfProductDetails['price']}',
                        style: Styles.heading3Bold),
                    Text('\$ ${dataOfProductDetails['old_price']}',
                        style: Styles.body2Regular.copyWith(
                          color: kGrey_150Color,
                          decoration: TextDecoration.lineThrough,
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Product Details',
              style: Styles.body1Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            ReadMoreText(
              dataOfProductDetails['description'] ?? '',
              trimMode: TrimMode.Length,
              trimLines: 5,
              colorClickableText: kCyanColor,
              style: Styles.body2Regular.copyWith(color: kGrey_150Color),
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Read less',
            ),
          ],
        );
      },
    );
  }
}
