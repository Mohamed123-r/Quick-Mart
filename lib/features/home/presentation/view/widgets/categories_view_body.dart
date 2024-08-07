import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/product_custom_category.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.6,
        children: List.generate(
          10,
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
              title: ' Electronics',
              icon: Assets.heart2Icon,
            ),
          ),
        ),
      ),
    );
  }
}
