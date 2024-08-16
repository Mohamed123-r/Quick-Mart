import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit/categories_cubit.dart';

class CategoriesSectionFromHomeView extends StatelessWidget {
  const CategoriesSectionFromHomeView({
    super.key,
    required this.onTapOfSeeAll,
  });

  final Function() onTapOfSeeAll;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: Styles.heading3Bold,
                ),
                InkWell(
                  onTap: onTapOfSeeAll,
                  borderRadius: BorderRadius.circular(24),
                  child: Text(
                    "See All",
                    style: Styles.body2Medium.copyWith(color: kCyanColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            state is CategoriesLoading
                ? const SizedBox(
                    height: 60,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: kCyanColor,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductCustomCategory(
                        isSmall: true,
                        title: dataOfCategories[0]['name'],
                        icon: dataOfCategories[0]['image'],
                      ),
                      ProductCustomCategory(
                        isSmall: true,
                        title: dataOfCategories[1]['name'],
                        icon: dataOfCategories[1]['image'],
                      ),
                      ProductCustomCategory(
                        isSmall: true,
                        title: dataOfCategories[2]['name'],
                        icon: dataOfCategories[2]['image'],
                      ),
                      ProductCustomCategory(
                        isSmall: true,
                        title: dataOfCategories[3]['name'],
                        icon: dataOfCategories[3]['image'],
                      ),
                    ],
                  )
          ],
        );
      },
    );
  }
}
