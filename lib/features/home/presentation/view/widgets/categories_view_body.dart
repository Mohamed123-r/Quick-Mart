import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit/categories_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return state is CategoriesLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: kCyanColor,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.6,
                  children: List.generate(
                    dataOfCategories.length,
                    (index) =>
                        BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                            context
                                .read<CategoryDetailsCubit>()
                                .getCategoriesDetails(
                                    id: dataOfCategories[index]['id']);
                            Navigator.push(
                              context,
                              AppRouter.router(
                                const RouteSettings(
                                    name: AppRouter.kSubCategoriesView),
                              ),
                            );
                            dataOfCategoriesDetails = [];
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: ProductCustomCategory(
                            title: dataOfCategories[index]['name'],
                            icon: dataOfCategories[index]['image'],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
      },
    );
  }
}
