import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.6,
            children: List.generate(
              4,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    AppRouter.router(
                      const RouteSettings(name: AppRouter.kSubCategoriesView),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: ProductCustomCategory(
                  title:
                      context.read<CategoriesCubit>().categoriesNames![index],
                  icon: Assets.heart2Icon,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
