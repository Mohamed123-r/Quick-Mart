import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';

class SubCategoriesViewBody extends StatelessWidget {
  const SubCategoriesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
      builder: (context, state) {
        return state is CategoryDetailsLoading
            ? const Center(
                child: CircularProgressIndicator(
                color: kCyanColor,
              ))
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                  children: List.generate(
                    dataOfCategoriesDetails.length,
                    (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            AppRouter.router(
                              const RouteSettings(
                                name: AppRouter.kProductListingView,
                              ),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Center(
                                  child: Image.network(
                                    dataOfCategoriesDetails[index]['image'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              dataOfCategoriesDetails[index]['name'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.body2Medium,
                            ),
                          ],
                        )),
                  ),
                ),
              );
      },
    );
  }
}
