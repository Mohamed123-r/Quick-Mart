import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit/categories_cubit.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/banner_section_from_home_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/categories_section_from_home_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/products_section_from_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const BannerSectionFromHomeView(),
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    CategoriesSectionFromHomeView(
                      onTapOfSeeAll: () {
                        context.read<CategoriesCubit>().getCategories();

                        Navigator.push(
                          context,
                          AppRouter.router(
                            const RouteSettings(
                                name: AppRouter.kCategoriesView),
                          ),
                        );
                        dataOfCategories = [];
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ProductsSectionFromHomeView(
                      onTapOfSeeAll: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
