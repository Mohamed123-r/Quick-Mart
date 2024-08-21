import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit/categories_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';

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
            if (state is CategoriesLoading)
              const SizedBox(
                height: 60,
                child: Center(
                  child: CircularProgressIndicator(
                    color: kCyanColor,
                  ),
                ),
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CategoryDetailsCubit>()
                          .getCategoriesDetails(id: dataOfCategories[0]['id']);
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kProductListingView),
                        ),
                      );
                      dataOfCategoriesDetails = [];
                    },
                    child: ProductCustomCategory(
                      isSmall: true,
                      title: dataOfCategories[0]['name'],
                      icon: dataOfCategories[0]['image'],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CategoryDetailsCubit>()
                          .getCategoriesDetails(id: dataOfCategories[4]['id']);
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kProductListingView),
                        ),
                      );
                      dataOfCategoriesDetails = [];
                    },
                    child: ProductCustomCategory(
                      isSmall: true,
                      title: dataOfCategories[4]['name'],
                      icon: dataOfCategories[4]['image'],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CategoryDetailsCubit>()
                          .getCategoriesDetails(id: dataOfCategories[2]['id']);
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kProductListingView),
                        ),
                      );
                      dataOfCategoriesDetails = [];
                    },
                    child: ProductCustomCategory(
                      isSmall: true,
                      title: dataOfCategories[2]['name'],
                      icon: dataOfCategories[2]['image'],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CategoryDetailsCubit>()
                          .getCategoriesDetails(id: dataOfCategories[3]['id']);
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kProductListingView),
                        ),
                      );
                      dataOfCategoriesDetails = [];
                    },
                    child: ProductCustomCategory(
                      isSmall: true,
                      title: dataOfCategories[3]['name'],
                      icon: dataOfCategories[3]['image'],
                    ),
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}
